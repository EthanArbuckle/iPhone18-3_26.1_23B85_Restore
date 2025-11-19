Swift::Void __swiftcall CLP_LogEntry_PrivateData_GpsToUtcConversion.clearApplicableTimeNanoseconds()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_GpsToUtcConversion.offsetNanoseconds.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GpsToUtcConversion.offsetNanoseconds.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0) + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_GpsToUtcConversion.clearOffsetNanoseconds()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_GpsToUtcConversion.driftPpb.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GpsToUtcConversion.driftPpb.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0) + 28);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_GpsToUtcConversion.clearDriftPpb()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_GpsToUtcConversion.accelPpbPerSecond.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GpsToUtcConversion.accelPpbPerSecond.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0) + 32);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_GpsToUtcConversion.clearAccelPpbPerSecond()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

int *CLP_LogEntry_PrivateData_GpsToUtcConversion.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a1 + result[8];
  *v6 = 0;
  *(v6 + 8) = 1;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_GpsTimeInfo.week.setter(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GpsTimeInfo.week.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_GpsTimeInfo.clearWeek()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_GpsTimeInfo.leapSecond.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_PrivateData_GpsTimeInfo.leapSecond.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 4) = 1;
    *(v14 + v9[6]) = 5;
    v18 = v9[7];
    v19 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
    (*(*(v19 - 8) + 56))(v14 + v18, 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  }

  return CLP_LogEntry_PrivateData_GpsTimeInfo.leapSecond.modify;
}

uint64_t CLP_LogEntry_PrivateData_GpsTimeInfo.conversion.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 28), v6, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a1 + v8[8];
  *v13 = 0;
  *(v13 + 8) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GpsTimeInfo.conversion.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0) + 28);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_PrivateData_GpsTimeInfo.conversion.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v14 + v9[8];
    *v20 = 0;
    *(v20 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);
  }

  return CLP_LogEntry_PrivateData_GpsTimeInfo.conversion.modify;
}

uint64_t CLP_LogEntry_PrivateData_GpsTimeInfo.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = v2[6];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v2[7];
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, 1, 1, v7);
}

uint64_t CLP_LogEntry_PrivateData_GlonassSubsecondConversion.collectionTimeNanoseconds.setter(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GlonassSubsecondConversion.collectionTimeNanoseconds.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0) + 20);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_GlonassSubsecondConversion.clearCollectionTimeNanoseconds()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_GlonassSubsecondConversion.offsetTimeNanoseconds.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GlonassSubsecondConversion.offsetTimeNanoseconds.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0) + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_GlonassSubsecondConversion.clearOffsetTimeNanoseconds()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_GlonassSubsecondConversion.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v3 = a1 + *(result + 20);
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + *(result + 24);
  *v4 = 0;
  *(v4 + 8) = 1;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_GlonassTimeInfo.fourWeekPeriod.setter(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GlonassTimeInfo.fourWeekPeriod.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_GlonassTimeInfo.clearFourWeekPeriod()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_LeapSecondChange.newLeapSecond.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t CLP_LogEntry_PrivateData_GlonassTimeInfo.day.setter(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GlonassTimeInfo.day.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_GlonassTimeInfo.clearDay()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_GlonassTimeInfo.leapSecondDeprecated.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0) + 28));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_GlonassTimeInfo.leapSecondDeprecated.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GlonassTimeInfo.leapSecondDeprecated.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0) + 28);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GlonassTimeInfo.gpsTimeConversion.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 32), v6, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + *(v8 + 24);
  *v11 = 0;
  *(v11 + 8) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GlonassTimeInfo.gpsTimeConversion.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0) + 32);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_PrivateData_GlonassTimeInfo.gpsTimeConversion.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + *(v9 + 20);
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v14 + *(v9 + 24);
    *v18 = 0;
    *(v18 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
  }

  return CLP_LogEntry_PrivateData_GlonassTimeInfo.gpsTimeConversion.modify;
}

BOOL CLP_LogEntry_PrivateData_Clock.hasReceiverToGpsTime.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + *(v13 + 32), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  outlined destroy of Any?(v12, a1, a2);
  return v15;
}

uint64_t CLP_LogEntry_PrivateData_Clock.clearReceiverToGpsTime()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 32);
  outlined destroy of Any?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t CLP_LogEntry_PrivateData_GlonassTimeInfo.utcConversionDeprecated.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 36), v6, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + *(v8 + 24);
  *v11 = 0;
  *(v11 + 8) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GlonassTimeInfo.utcConversionDeprecated.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0) + 36);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*CLP_LogEntry_PrivateData_GlonassTimeInfo.utcConversionDeprecated.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0) + 36);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + *(v9 + 20);
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v14 + *(v9 + 24);
    *v18 = 0;
    *(v18 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
  }

  return CLP_LogEntry_PrivateData_GlonassTimeInfo.utcConversionDeprecated.modify;
}

BOOL CLP_LogEntry_PrivateData_GlonassTimeInfo.hasUtcConversionDeprecated.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v0 + *(v5 + 36), v4, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_GlonassTimeInfo.clearUtcConversionDeprecated()()
{
  v1 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0) + 36);
  outlined destroy of Any?(v0 + v1, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t CLP_LogEntry_PrivateData_GlonassTimeInfo.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + v2[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  *(a1 + v2[7]) = 6;
  v5 = v2[8];
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v9 = *(*(v6 - 8) + 56);
  (v9)((v6 - 8), a1 + v5, 1, 1, v6);
  v7 = a1 + v2[9];

  return v9(v7, 1, 1, v6);
}

uint64_t CLP_LogEntry_PrivateData_SubSecondConversion.applicableTimeNanoSeconds.setter(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_SubSecondConversion.applicableTimeNanoSeconds.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0) + 20);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_SubSecondConversion.clearApplicableTimeNanoSeconds()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_SubSecondConversion.offsetNanoSeconds.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_SubSecondConversion.offsetNanoSeconds.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0) + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_SubSecondConversion.clearOffsetNanoSeconds()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_SubSecondConversion.driftPpb.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_SubSecondConversion.driftPpb.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0) + 28);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_SubSecondConversion.clearDriftPpb()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

int *CLP_LogEntry_PrivateData_Wgs84Ecef.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = a1(0);
  v5 = a2 + result[5];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a2 + result[6];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + result[7];
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_BeidouTimeInfo.week.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20));
  swift_beginAccess();
  if (*(v1 + 20))
  {
    return 0;
  }

  else
  {
    return *(v1 + 16);
  }
}

uint64_t CLP_LogEntry_PrivateData_BeidouTimeInfo.week.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 16) = a1;
  *(v7 + 20) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_BeidouTimeInfo.week.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (*(v6 + 20))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_BeidouTimeInfo.week.modify;
}

void CLP_LogEntry_PrivateData_MeasurementExtension.jammerCn0DbHz.modify(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v6 = *a1;
  v7 = *(*a1 + 80);
  v8 = *(*a1 + 84);
  v9 = *(*a1 + 72);
  v10 = *(v9 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v9 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = *(v6 + 84);
    v14 = *(v6 + 72);
    v15 = a3(0);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    v18 = swift_allocObject();
    v19 = v12;
    v12 = v18;
    a4(v19);
    *(v14 + v13) = v18;
  }

  swift_beginAccess();
  *(v12 + 16) = v7;
  *(v12 + 20) = 0;

  free(v6);
}

BOOL CLP_LogEntry_PrivateData_MeasurementExtension.hasJammerCn0DbHz.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 20) & 1) == 0;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementExtension.clearJammerCn0DbHz()(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t))
{
  v6 = v3;
  v7 = *(a1(0) + 20);
  v8 = *(v3 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = a2(0);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    v14 = swift_allocObject();
    v15 = v10;
    v10 = v14;
    a3(v15);
    *(v6 + v7) = v14;
  }

  result = swift_beginAccess();
  *(v10 + 16) = 0;
  *(v10 + 20) = 1;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_BeidouTimeInfo.leapSecondDeprecated.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  }

  UnknownStorage.init()();
  v11 = a1 + v9[5];
  *v11 = 0;
  *(v11 + 4) = 1;
  *(a1 + v9[6]) = 5;
  v12 = v9[7];
  v13 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_BeidouTimeInfo.leapSecondDeprecated.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_BeidouTimeInfo.leapSecondDeprecated.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 4) = 1;
    *(v14 + v9[6]) = 5;
    v20 = v9[7];
    v21 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
    (*(*(v21 - 8) + 56))(v14 + v20, 1, 1, v21);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  }

  return CLP_LogEntry_PrivateData_BeidouTimeInfo.leapSecondDeprecated.modify;
}

void CLP_LogEntry_PrivateData_BeidouTimeInfo.leapSecondDeprecated.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_BeidouTimeInfo.hasLeapSecondDeprecated.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_BeidouTimeInfo.clearLeapSecondDeprecated()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_BeidouTimeInfo.gpsTimeConversion.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_BeidouTimeInfo.gpsTimeConversion.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v14 + v9[6];
    *v20 = 0;
    *(v20 + 8) = 1;
    v21 = v14 + v9[7];
    *v21 = 0;
    *(v21 + 8) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  }

  return CLP_LogEntry_PrivateData_BeidouTimeInfo.gpsTimeConversion.modify;
}

void CLP_LogEntry_PrivateData_BeidouTimeInfo.gpsTimeConversion.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_BeidouTimeInfo.hasGpsTimeConversion.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_BeidouTimeInfo.clearGpsTimeConversion()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_BeidouTimeInfo.glonassTimeConversion.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_BeidouTimeInfo.glonassTimeConversion.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v14 + v9[6];
    *v20 = 0;
    *(v20 + 8) = 1;
    v21 = v14 + v9[7];
    *v21 = 0;
    *(v21 + 8) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  }

  return CLP_LogEntry_PrivateData_BeidouTimeInfo.glonassTimeConversion.modify;
}

void CLP_LogEntry_PrivateData_BeidouTimeInfo.glonassTimeConversion.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_BeidouTimeInfo.hasGlonassTimeConversion.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_BeidouTimeInfo.clearGlonassTimeConversion()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_BeidouTimeInfo.galileoTimeConversion.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_BeidouTimeInfo.galileoTimeConversion.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v14 + v9[6];
    *v20 = 0;
    *(v20 + 8) = 1;
    v21 = v14 + v9[7];
    *v21 = 0;
    *(v21 + 8) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  }

  return CLP_LogEntry_PrivateData_BeidouTimeInfo.galileoTimeConversion.modify;
}

void CLP_LogEntry_PrivateData_BeidouTimeInfo.galileoTimeConversion.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_BeidouTimeInfo.hasGalileoTimeConversion.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_BeidouTimeInfo.clearGalileoTimeConversion()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_BeidouTimeInfo.gpsTimeConversion.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = *(v2 + *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20));
  v10 = *a1;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v9 + v10, v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v12 = *(*(v11 - 1) + 48);
  if (v12(v8, 1, v11) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, a2, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  }

  UnknownStorage.init()();
  v13 = a2 + v11[5];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a2 + v11[6];
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = a2 + v11[7];
  *v15 = 0;
  *(v15 + 8) = 1;
  result = (v12)(v8, 1, v11);
  if (result != 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_BeidouTimeInfo.utcTimeConversionDeprecated.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_BeidouTimeInfo.utcTimeConversionDeprecated.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v14 + v9[6];
    *v20 = 0;
    *(v20 + 8) = 1;
    v21 = v14 + v9[7];
    *v21 = 0;
    *(v21 + 8) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  }

  return CLP_LogEntry_PrivateData_BeidouTimeInfo.utcTimeConversionDeprecated.modify;
}

void CLP_LogEntry_PrivateData_BeidouTimeInfo.utcTimeConversionDeprecated.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_BeidouTimeInfo.hasUtcTimeConversionDeprecated.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_BeidouTimeInfo.clearUtcTimeConversionDeprecated()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_GalileoTimeInfo.week.setter(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GalileoTimeInfo.week.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_GalileoTimeInfo.clearWeek()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_GpsTimeInfo.leapSecond.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  v9 = a1(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v2 + *(v9 + 24), v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v11 = *(*(v10 - 1) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, a2, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  }

  UnknownStorage.init()();
  v12 = a2 + v10[5];
  *v12 = 0;
  *(v12 + 4) = 1;
  *(a2 + v10[6]) = 5;
  v13 = v10[7];
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
  (*(*(v14 - 8) + 56))(a2 + v13, 1, 1, v14);
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GalileoTimeInfo.leapSecondDeprecated.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*CLP_LogEntry_PrivateData_GalileoTimeInfo.leapSecondDeprecated.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 4) = 1;
    *(v14 + v9[6]) = 5;
    v18 = v9[7];
    v19 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
    (*(*(v19 - 8) + 56))(v14 + v18, 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  }

  return CLP_LogEntry_PrivateData_GalileoTimeInfo.leapSecondDeprecated.modify;
}

uint64_t CLP_LogEntry_PrivateData_GalileoTimeInfo.gpsTimeConversion.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 28), v6, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 8) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GalileoTimeInfo.gpsTimeConversion.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0) + 28);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*CLP_LogEntry_PrivateData_GalileoTimeInfo.gpsTimeConversion.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  }

  return CLP_LogEntry_PrivateData_GalileoTimeInfo.utcTimeConversionDeprecated.modify;
}

uint64_t CLP_LogEntry_PrivateData_GalileoTimeInfo.utcTimeConversionDeprecated.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 32), v6, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 8) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GalileoTimeInfo.utcTimeConversionDeprecated.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0) + 32);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*CLP_LogEntry_PrivateData_GalileoTimeInfo.utcTimeConversionDeprecated.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  }

  return CLP_LogEntry_PrivateData_GalileoTimeInfo.utcTimeConversionDeprecated.modify;
}

uint64_t CLP_LogEntry_PrivateData_GalileoTimeInfo.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = v2[6];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v2[7];
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v10 = *(*(v7 - 8) + 56);
  (v10)((v7 - 8), a1 + v6, 1, 1, v7);
  v8 = a1 + v2[8];

  return v10(v8, 1, 1, v7);
}

uint64_t CLP_LogEntry_PrivateData_NavicTimeInfo.gpsTimeConversion.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 20), v6, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 8) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_NavicTimeInfo.gpsTimeConversion.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0) + 20);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_PrivateData_NavicTimeInfo.gpsTimeConversion.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  }

  return CLP_LogEntry_PrivateData_NavicTimeInfo.gpsTimeConversion.modify;
}

BOOL CLP_LogEntry_PrivateData_SignalCorrelationPeak.hasSvTime.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + *(v13 + 20), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  outlined destroy of Any?(v12, a1, a2);
  return v15;
}

uint64_t CLP_LogEntry_PrivateData_SignalCorrelationPeak.clearSvTime()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 20);
  outlined destroy of Any?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t CLP_LogEntry_PrivateData_NavicTimeInfo.week.setter(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_NavicTimeInfo.week.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_NavicTimeInfo.clearWeek()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_NavicTimeInfo.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v6 = a1 + *(v2 + 24);
  *v6 = 0;
  *(v6 + 4) = 1;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_TimeConversionInfo.gps.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
  }

  UnknownStorage.init()();
  v11 = a1 + v9[5];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = v9[6];
  v13 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  v14 = v9[7];
  v15 = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
  (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_TimeConversionInfo.gps.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_TimeConversionInfo.gps.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v9[6];
    v21 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
    (*(*(v21 - 8) + 56))(v14 + v20, 1, 1, v21);
    v22 = v9[7];
    v23 = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
    (*(*(v23 - 8) + 56))(v14 + v22, 1, 1, v23);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
  }

  return CLP_LogEntry_PrivateData_TimeConversionInfo.gps.modify;
}

void CLP_LogEntry_PrivateData_TimeConversionInfo.gps.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_TimeConversionInfo.hasGps.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_TimeConversionInfo.clearGps()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_TimeConversionInfo.glonass.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
  }

  UnknownStorage.init()();
  v11 = a1 + v9[5];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v9[6];
  *v12 = 0;
  *(v12 + 4) = 1;
  *(a1 + v9[7]) = 6;
  v13 = v9[8];
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v15 = *(*(v14 - 8) + 56);
  v15(a1 + v13, 1, 1, v14);
  v15(a1 + v9[9], 1, 1, v14);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_TimeConversionInfo.glonass.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_TimeConversionInfo.glonass.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v14 + v9[6];
    *v20 = 0;
    *(v20 + 4) = 1;
    *(v14 + v9[7]) = 6;
    v21 = v9[8];
    v22 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
    v23 = *(*(v22 - 8) + 56);
    v23(v14 + v21, 1, 1, v22);
    v23(v14 + v9[9], 1, 1, v22);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
  }

  return CLP_LogEntry_PrivateData_TimeConversionInfo.glonass.modify;
}

void CLP_LogEntry_PrivateData_TimeConversionInfo.glonass.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_TimeConversionInfo.hasGlonass.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_TimeConversionInfo.clearGlonass()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_TimeConversionInfo.beidou.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
  }

  UnknownStorage.init()();
  v11 = *(v9 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v11) = static CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.defaultInstance;
  v12 = v10(v6, 1, v9);

  if (v12 != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_TimeConversionInfo.beidou.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_TimeConversionInfo.beidou.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = *(v9 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v14 + v19) = static CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.defaultInstance;
    v20 = v18(v8, 1, v9);

    if (v20 != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
  }

  return CLP_LogEntry_PrivateData_TimeConversionInfo.beidou.modify;
}

void CLP_LogEntry_PrivateData_TimeConversionInfo.beidou.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_TimeConversionInfo.hasBeidou.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_TimeConversionInfo.clearBeidou()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_TimeConversionInfo.galileo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
  }

  UnknownStorage.init()();
  v11 = a1 + v9[5];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = v9[6];
  v13 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  v14 = v9[7];
  v15 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v16 = *(*(v15 - 8) + 56);
  v16(a1 + v14, 1, 1, v15);
  v16(a1 + v9[8], 1, 1, v15);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_TimeConversionInfo.galileo.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_TimeConversionInfo.galileo.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v9[6];
    v21 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
    (*(*(v21 - 8) + 56))(v14 + v20, 1, 1, v21);
    v22 = v9[7];
    v23 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
    v24 = *(*(v23 - 8) + 56);
    v24(v14 + v22, 1, 1, v23);
    v24(v14 + v9[8], 1, 1, v23);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
  }

  return CLP_LogEntry_PrivateData_TimeConversionInfo.galileo.modify;
}

void CLP_LogEntry_PrivateData_TimeConversionInfo.galileo.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_TimeConversionInfo.hasGalileo.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_TimeConversionInfo.clearGalileo()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_TimeConversionInfo.navic.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
  }

  UnknownStorage.init()();
  v11 = *(v9 + 20);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = a1 + *(v9 + 24);
  *v13 = 0;
  *(v13 + 4) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_TimeConversionInfo.navic.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_TimeConversionInfo.navic.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = *(v9 + 20);
    v20 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    v21 = v14 + *(v9 + 24);
    *v21 = 0;
    *(v21 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
  }

  return CLP_LogEntry_PrivateData_TimeConversionInfo.navic.modify;
}

void CLP_LogEntry_PrivateData_TimeConversionInfo.navic.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_TimeConversionInfo.hasNavic.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_TimeConversionInfo.clearNavic()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_KlobucharModelParameters.decodeTimeFullGpsNs.setter(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_KlobucharModelParameters.decodeTimeFullGpsNs.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 20);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_KlobucharModelParameters.clearDecodeTimeFullGpsNs()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_KlobucharModelParameters.alpha0.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_KlobucharModelParameters.alpha0.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 24);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_KlobucharModelParameters.clearAlpha0()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_KlobucharModelParameters.alpha1.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_KlobucharModelParameters.alpha1.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 28);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_KlobucharModelParameters.clearAlpha1()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_KlobucharModelParameters.alpha2.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_KlobucharModelParameters.alpha2.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 32);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_KlobucharModelParameters.clearAlpha2()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

float CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion.driftUncertaintyPpb.getter(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 36);
  result = *v2;
  if (*(v2 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_KlobucharModelParameters.alpha3.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_KlobucharModelParameters.alpha3.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 36);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_KlobucharModelParameters.clearAlpha3()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

float CLP_LogEntry_PrivateData_KlobucharModelParameters.beta0.getter()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 40);
  result = *v1;
  if (*(v1 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_KlobucharModelParameters.beta0.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_KlobucharModelParameters.beta0.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 40);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_KlobucharModelParameters.clearBeta0()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

float CLP_LogEntry_PrivateData_KlobucharModelParameters.beta1.getter()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 44);
  result = *v1;
  if (*(v1 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_KlobucharModelParameters.beta1.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_KlobucharModelParameters.beta1.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 44);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_KlobucharModelParameters.clearBeta1()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 44);
  *v1 = 0;
  *(v1 + 4) = 1;
}

float CLP_LogEntry_PrivateData_KlobucharModelParameters.beta2.getter()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 48);
  result = *v1;
  if (*(v1 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_KlobucharModelParameters.beta2.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_KlobucharModelParameters.beta2.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 48);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_KlobucharModelParameters.clearBeta2()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 48);
  *v1 = 0;
  *(v1 + 4) = 1;
}

float CLP_LogEntry_PrivateData_KlobucharModelParameters.beta3.getter()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 52);
  result = *v1;
  if (*(v1 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_KlobucharModelParameters.beta3.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_KlobucharModelParameters.beta3.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 52);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_KlobucharModelParameters.clearBeta3()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 52);
  *v1 = 0;
  *(v1 + 4) = 1;
}

int *CLP_LogEntry_PrivateData_KlobucharModelParameters.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1 + result[8];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1 + result[9];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1 + result[10];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a1 + result[11];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + result[12];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + result[13];
  *v11 = 0;
  *(v11 + 4) = 1;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_SfcfXyz.x.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_SfcfXyz.x.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0) + 20);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_SfcfXyz.clearX()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_SfcfXyz.y.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_SfcfXyz.y.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0) + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_SfcfXyz.clearY()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_SfcfXyz.z.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_SfcfXyz.z.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0) + 28);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_SfcfXyz.clearZ()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 20), v6, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = *(v8 + 24);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.id.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0) + 20);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.id.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + *(v9 + 20);
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = *(v9 + 24);
    v19 = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
    (*(*(v19 - 8) + 56))(v14 + v18, 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  }

  return CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.id.modify;
}

uint64_t CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.band.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0) + 24));
  if (v1 == 13)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.band.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.band.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 13)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.svReferencePoint.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0) + 28));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.svReferencePoint.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.svReferencePoint.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0) + 28);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.offsetXyzM.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 32), v6, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 8) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.offsetXyzM.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0) + 32);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.offsetXyzM.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
  }

  return CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.offsetXyzM.modify;
}

void CLP_LogEntry_PrivateData_GlonassId.slotInfo.modify(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v9 = *a1;
  v10 = *(*a1 + 12);
  v11 = (*a1)[4];
  v12 = (*a1)[5];
  v13 = (*a1)[2];
  v14 = (*a1)[3];
  v15 = **a1;
  v17 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v12, v11, a6);
    outlined destroy of Any?(v15 + v10, a3, a4);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v12, a6);
  }

  else
  {
    outlined destroy of Any?(v15 + v10, a3, a4);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v12, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
  }

  free(v12);
  free(v11);
  free(v17);

  free(v9);
}

uint64_t CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
  v3 = v2[5];
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  *(a1 + v2[6]) = 13;
  *(a1 + v2[7]) = 4;
  v5 = v2[8];
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t CLP_LogEntry_PrivateData_ReceivedTimeStamp.iosAbsoluteSec.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ReceivedTimeStamp.iosAbsoluteSec.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0) + 20);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_ReceivedTimeStamp.clearIosAbsoluteSec()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_ReceivedTimeStamp.machAbsoluteSec.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ReceivedTimeStamp.machAbsoluteSec.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0) + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_ReceivedTimeStamp.clearMachAbsoluteSec()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_ReceivedTimeStamp.machContinuousSec.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ReceivedTimeStamp.machContinuousSec.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0) + 28);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_ReceivedTimeStamp.clearMachContinuousSec()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.receivedTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
  }

  UnknownStorage.init()();
  v11 = a1 + v9[5];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v9[6];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a1 + v9[7];
  *v13 = 0;
  *(v13 + 8) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.receivedTimestamp.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.receivedTimestamp.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v14 + v9[6];
    *v20 = 0;
    *(v20 + 8) = 1;
    v21 = v14 + v9[7];
    *v21 = 0;
    *(v21 + 8) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
  }

  return CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.receivedTimestamp.modify;
}

void CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.receivedTimestamp.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.hasReceivedTimestamp.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.clearReceivedTimestamp()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.measReport.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
  }

  UnknownStorage.init()();
  v11 = *(v9 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v11) = static CLP_LogEntry_PrivateData_MeasurementReport._StorageClass.defaultInstance;
  v12 = v10(v6, 1, v9);

  if (v12 != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.measReport.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.measReport.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = *(v9 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v14 + v19) = static CLP_LogEntry_PrivateData_MeasurementReport._StorageClass.defaultInstance;
    v20 = v18(v8, 1, v9);

    if (v20 != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
  }

  return CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.measReport.modify;
}

void CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.measReport.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.hasMeasReport.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.clearMeasReport()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.svInfo.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svInfo;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.svInfo.modify;
}

void (*CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.rxBandCorrections.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rxBandCorrections;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.rxBandCorrections.modify;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.timeConversion.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
  }

  UnknownStorage.init()();
  v11 = *(v9 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v11) = static CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.defaultInstance;
  v12 = v10(v6, 1, v9);

  if (v12 != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.timeConversion.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.timeConversion.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = *(v9 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v14 + v19) = static CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.defaultInstance;
    v20 = v18(v8, 1, v9);

    if (v20 != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
  }

  return CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.timeConversion.modify;
}

void CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.timeConversion.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.hasTimeConversion.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.clearTimeConversion()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.measApplicabilityTimeMachContinuousSec.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeMachContinuousSec;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.measApplicabilityTimeMachContinuousSec.modify;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.measApplicabilityTimeMachContinuousSec.setter(void *a1, double a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass.init(copying:)(v14);
    *(v4 + v6) = v13;
  }

  v15 = v9 + *a1;
  result = swift_beginAccess();
  *v15 = a2;
  *(v15 + 8) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.measApplicabilityTimeUncertaintySec.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeUncertaintySec;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.measApplicabilityTimeUncertaintySec.modify;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.klobucharModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
  }

  UnknownStorage.init()();
  v11 = a1 + v9[5];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v9[6];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v9[7];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1 + v9[8];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a1 + v9[9];
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a1 + v9[10];
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = a1 + v9[11];
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = a1 + v9[12];
  *v18 = 0;
  *(v18 + 4) = 1;
  v19 = a1 + v9[13];
  *v19 = 0;
  *(v19 + 4) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.klobucharModel.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.klobucharModel.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v14 + v9[6];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v14 + v9[7];
    *v21 = 0;
    *(v21 + 4) = 1;
    v22 = v14 + v9[8];
    *v22 = 0;
    *(v22 + 4) = 1;
    v23 = v14 + v9[9];
    *v23 = 0;
    *(v23 + 4) = 1;
    v24 = v14 + v9[10];
    *v24 = 0;
    *(v24 + 4) = 1;
    v25 = v14 + v9[11];
    *v25 = 0;
    *(v25 + 4) = 1;
    v26 = v14 + v9[12];
    *v26 = 0;
    *(v26 + 4) = 1;
    v27 = v14 + v9[13];
    *v27 = 0;
    *(v27 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
  }

  return CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.klobucharModel.modify;
}

void CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.klobucharModel.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.hasKlobucharModel.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.clearKlobucharModel()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.apcSvOffset.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__apcSvOffset;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.apcSvOffset.modify;
}

uint64_t variable initialization expression of CLP_LogEntry_PrivateData_SyncState._storage(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t CLP_LogEntry_PrivateData_GlonassSlotInfo.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0) + 20);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else if (result == 2)
      {
        v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0) + 24);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotSource and conformance CLP_LogEntry_PrivateData_GlonassSlotSource();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GlonassSlotInfo.traverse<A>(visitor:)()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0);
  v3 = result;
  v4 = (v0 + *(result + 20));
  if (v4[1])
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v5 = *v4;
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  if (*(v0 + *(v3 + 24)) != 5)
  {
    v6 = *(v0 + *(v3 + 24));
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotSource and conformance CLP_LogEntry_PrivateData_GlonassSlotSource();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_GlonassSlotInfo@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = *(a1 + 24);
  v6 = a2 + *(a1 + 20);
  *v6 = 0;
  *(v6 + 4) = 1;
  *(a2 + v5) = 5;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_23D1B0500;
  v12 = (v11 + v10);
  v13 = v11 + v10 + v8[14];
  *v12 = 1;
  *v13 = a3;
  *(v13 + 8) = 8;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x277D21888];
  v15 = type metadata accessor for _NameMap.NameDescription();
  v16 = *(*(v15 - 8) + 104);
  (v16)(v13, v14, v15);
  v17 = v12 + v9 + v8[14];
  *(v12 + v9) = 2;
  *v17 = a4;
  *(v17 + 1) = a5;
  v17[16] = 2;
  v16();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t CLP_LogEntry_PrivateData_GlonassId.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0) + 20);
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }

      else if (result == 2)
      {
        v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0) + 24);
        type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #2 in CLP_LogEntry_PrivateData_GlonassId.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 24), v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GlonassId(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassId and conformance CLP_LogEntry_PrivateData_GlonassId, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GlonassId(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassId and conformance CLP_LogEntry_PrivateData_GlonassId, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GlonassId(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassId and conformance CLP_LogEntry_PrivateData_GlonassId, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_ConstellationId.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 3)
      {
        switch(result)
        {
          case 1:
            v3 = v0;
            v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 20);
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            break;
          case 2:
            v10 = *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 24);
            type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0);
            lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassId and conformance CLP_LogEntry_PrivateData_GlonassId, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
          case 3:
            v3 = v0;
            v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 28);
            goto LABEL_5;
        }
      }

      else
      {
        if (result <= 5)
        {
          v3 = v0;
          if (result == 4)
          {
            v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 32);
          }

          else
          {
            v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 36);
          }

          goto LABEL_5;
        }

        if (result == 6)
        {
          v3 = v0;
          v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 40);
          goto LABEL_5;
        }

        if (result == 7)
        {
          v3 = v0;
          v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 44);
          goto LABEL_5;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_ConstellationId.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v10 = result;
  v11 = (v5 + *(result + 20));
  if (v11[1])
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v12 = *v11;
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  closure #2 in CLP_LogEntry_PrivateData_ConstellationId.traverse<A>(visitor:)(v5, a1, a2, a3);
  v13 = (v5 + *(v10 + 28));
  if ((v13[1] & 1) == 0)
  {
    v14 = *v13;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v15 = (v5 + *(v10 + 32));
  if ((v15[1] & 1) == 0)
  {
    v16 = *v15;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #5 in CLP_LogEntry_PrivateData_ConstellationId.traverse<A>(visitor:)(v5);
  closure #6 in CLP_LogEntry_PrivateData_ConstellationId.traverse<A>(visitor:)(v5);
  closure #7 in CLP_LogEntry_PrivateData_ConstellationId.traverse<A>(visitor:)(v5);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #2 in CLP_LogEntry_PrivateData_ConstellationId.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 24), v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassId and conformance CLP_LogEntry_PrivateData_GlonassId, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);
}

uint64_t closure #5 in CLP_LogEntry_PrivateData_ConstellationId.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v3 = (a1 + *(result + 36));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #6 in CLP_LogEntry_PrivateData_ConstellationId.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v3 = (a1 + *(result + 40));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #7 in CLP_LogEntry_PrivateData_ConstellationId.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v3 = (a1 + *(result + 44));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_ConstellationId@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0);
  result = (*(*(v6 - 8) + 56))(a2 + v4, 1, 1, v6);
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1[10];
  v12 = a2 + a1[9];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a2 + v11;
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a2 + a1[11];
  *v14 = 0;
  *(v14 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_ConstellationId(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ConstellationId and conformance CLP_LogEntry_PrivateData_ConstellationId, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_ConstellationId(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ConstellationId and conformance CLP_LogEntry_PrivateData_ConstellationId, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_ConstellationId(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ConstellationId and conformance CLP_LogEntry_PrivateData_ConstellationId, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_SvId.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvId(0) + 20);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else if (result == 2)
      {
        v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvId(0) + 24);
        type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ConstellationId and conformance CLP_LogEntry_PrivateData_ConstellationId, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GlonassId.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v6;
  result = a4(0);
  v15 = (v10 + *(result + 20));
  if (v15[1])
  {
    if (v7)
    {
      return result;
    }
  }

  else
  {
    result = a5(*v15, 1, a2, a3);
    if (v7)
    {
      return result;
    }
  }

  a6(v10, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #2 in CLP_LogEntry_PrivateData_SvId.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 24), v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ConstellationId and conformance CLP_LogEntry_PrivateData_ConstellationId, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_GlonassId@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  UnknownStorage.init()();
  v6 = *(a1 + 20);
  v7 = *(a1 + 24);
  v8 = a3 + v6;
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a3 + v7, 1, 1, v9);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_SvId(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvId and conformance CLP_LogEntry_PrivateData_SvId, type metadata accessor for CLP_LogEntry_PrivateData_SvId);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_SvId(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvId and conformance CLP_LogEntry_PrivateData_SvId, type metadata accessor for CLP_LogEntry_PrivateData_SvId);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_SvId(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvId and conformance CLP_LogEntry_PrivateData_SvId, type metadata accessor for CLP_LogEntry_PrivateData_SvId);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GpsL1SyncState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsL1SyncState and conformance CLP_LogEntry_PrivateData_GpsL1SyncState, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GpsL1SyncState(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsL1SyncState and conformance CLP_LogEntry_PrivateData_GpsL1SyncState, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GpsL1SyncState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsL1SyncState and conformance CLP_LogEntry_PrivateData_GpsL1SyncState, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GpsL2CSyncState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsL2CSyncState and conformance CLP_LogEntry_PrivateData_GpsL2CSyncState, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GpsL2CSyncState(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsL2CSyncState and conformance CLP_LogEntry_PrivateData_GpsL2CSyncState, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GpsL2CSyncState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsL2CSyncState and conformance CLP_LogEntry_PrivateData_GpsL2CSyncState, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_GpsL1SyncState.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v7)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v8 = v4;
          v12 = *(a4(0) + 28);
        }

        else
        {
          if (result != 4)
          {
            goto LABEL_13;
          }

          v8 = v4;
          v10 = *(a4(0) + 32);
        }
      }

      else if (result == 1)
      {
        v8 = v4;
        v11 = *(a4(0) + 20);
      }

      else
      {
        if (result != 2)
        {
          goto LABEL_13;
        }

        v8 = v4;
        v9 = *(a4(0) + 24);
      }

      v4 = v8;
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
LABEL_13:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GpsL1SyncState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4(0);
  v7 = result;
  if (*(v4 + *(result + 20)) == 2)
  {
    if (v5)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }
  }

  if (*(v4 + v7[6]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v4 + v7[7]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v4 + v7[8]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GpsL5SyncState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsL5SyncState and conformance CLP_LogEntry_PrivateData_GpsL5SyncState, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GpsL5SyncState(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsL5SyncState and conformance CLP_LogEntry_PrivateData_GpsL5SyncState, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GpsL5SyncState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsL5SyncState and conformance CLP_LogEntry_PrivateData_GpsL5SyncState, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_GpsL2CSyncState.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v7)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          v8 = v4;
          v13 = *(a4(0) + 20);
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_15;
          }

          v8 = v4;
          v10 = *(a4(0) + 24);
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v8 = v4;
            v11 = *(a4(0) + 28);
            break;
          case 4:
            v8 = v4;
            v12 = *(a4(0) + 32);
            break;
          case 5:
            v8 = v4;
            v9 = *(a4(0) + 36);
            break;
          default:
            goto LABEL_15;
        }
      }

      v4 = v8;
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
LABEL_15:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GpsL2CSyncState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v8 = v5;
  result = a4(0);
  v13 = result;
  if (*(v8 + *(result + 20)) == 2)
  {
    if (v6)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v6)
    {
      return result;
    }
  }

  if (*(v8 + v13[6]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v8 + v13[7]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v8 + v13[8]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  closure #5 in CLP_LogEntry_PrivateData_GpsL2CSyncState.traverse<A>(visitor:)(v8, a1, a2, a3, a5);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #5 in CLP_LogEntry_PrivateData_GpsL2CSyncState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 36)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_GpsL2CSyncState@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  *(a2 + v5) = 2;
  v6 = a1[8];
  *(a2 + a1[7]) = 2;
  *(a2 + v6) = 2;
  *(a2 + a1[9]) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GlonassL1fSyncState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassL1fSyncState and conformance CLP_LogEntry_PrivateData_GlonassL1fSyncState, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GlonassL1fSyncState(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassL1fSyncState and conformance CLP_LogEntry_PrivateData_GlonassL1fSyncState, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GlonassL1fSyncState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassL1fSyncState and conformance CLP_LogEntry_PrivateData_GlonassL1fSyncState, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_BeidouB1SyncState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BeidouB1SyncState and conformance CLP_LogEntry_PrivateData_BeidouB1SyncState, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_BeidouB1SyncState(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BeidouB1SyncState and conformance CLP_LogEntry_PrivateData_BeidouB1SyncState, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_BeidouB1SyncState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BeidouB1SyncState and conformance CLP_LogEntry_PrivateData_BeidouB1SyncState, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_23D1B14A0;
  v8 = v7 + v6;
  v9 = v7 + v6 + v4[14];
  *(v7 + v6) = 1;
  *v9 = "code_lock";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x277D21888];
  v11 = type metadata accessor for _NameMap.NameDescription();
  v12 = *(*(v11 - 8) + 104);
  (v12)(v9, v10, v11);
  v13 = v8 + v5 + v4[14];
  *(v8 + v5) = 2;
  *v13 = "nav_bit";
  *(v13 + 8) = 7;
  *(v13 + 16) = 2;
  v12();
  v14 = (v8 + 2 * v5);
  v15 = v14 + v4[14];
  *v14 = 3;
  *v15 = "subframe";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v16 = *MEMORY[0x277D21870];
  v12();
  v17 = (v8 + 3 * v5);
  v18 = v17 + v4[14];
  *v17 = 4;
  *v18 = "tow_decoded";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v12();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_BeidouB2SyncState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BeidouB2SyncState and conformance CLP_LogEntry_PrivateData_BeidouB2SyncState, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_BeidouB2SyncState(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BeidouB2SyncState and conformance CLP_LogEntry_PrivateData_BeidouB2SyncState, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_BeidouB2SyncState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BeidouB2SyncState and conformance CLP_LogEntry_PrivateData_BeidouB2SyncState, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_GpsL1SyncState@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  *(a2 + v5) = 2;
  v6 = a1[8];
  *(a2 + a1[7]) = 2;
  *(a2 + v6) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GalileoE1SyncState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GalileoE1SyncState and conformance CLP_LogEntry_PrivateData_GalileoE1SyncState, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GalileoE1SyncState(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GalileoE1SyncState and conformance CLP_LogEntry_PrivateData_GalileoE1SyncState, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GalileoE1SyncState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GalileoE1SyncState and conformance CLP_LogEntry_PrivateData_GalileoE1SyncState, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_GalileoE5SyncState.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 5)
      {
        if (result <= 7)
        {
          v3 = v0;
          if (result == 6)
          {
            v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0) + 40);
          }

          else
          {
            v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0) + 44);
          }
        }

        else
        {
          switch(result)
          {
            case 8:
              v3 = v0;
              v11 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0) + 48);
              break;
            case 9:
              v3 = v0;
              v13 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0) + 52);
              break;
            case 10:
              v3 = v0;
              v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0) + 56);
              break;
            default:
              goto LABEL_25;
          }
        }
      }

      else if (result <= 2)
      {
        if (result == 1)
        {
          v3 = v0;
          v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0) + 20);
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_25;
          }

          v3 = v0;
          v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0) + 24);
        }
      }

      else if (result == 3)
      {
        v3 = v0;
        v10 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0) + 28);
      }

      else
      {
        v3 = v0;
        if (result == 4)
        {
          v12 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0) + 32);
        }

        else
        {
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0) + 36);
        }
      }

      v0 = v3;
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
LABEL_25:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GalileoE5SyncState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  v10 = result;
  if (*(v5 + *(result + 20)) == 2)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(v5 + v10[6]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v5 + v10[7]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v5 + v10[8]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  closure #5 in CLP_LogEntry_PrivateData_GpsL2CSyncState.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
  closure #6 in CLP_LogEntry_PrivateData_GalileoE5SyncState.traverse<A>(visitor:)(v5);
  closure #7 in CLP_LogEntry_PrivateData_GalileoE5SyncState.traverse<A>(visitor:)(v5);
  closure #8 in CLP_LogEntry_PrivateData_GalileoE5SyncState.traverse<A>(visitor:)(v5);
  closure #9 in CLP_LogEntry_PrivateData_GalileoE5SyncState.traverse<A>(visitor:)(v5);
  closure #10 in CLP_LogEntry_PrivateData_GalileoE5SyncState.traverse<A>(visitor:)(v5);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #6 in CLP_LogEntry_PrivateData_GalileoE5SyncState.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  if (*(a1 + *(result + 40)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #7 in CLP_LogEntry_PrivateData_GalileoE5SyncState.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  if (*(a1 + *(result + 44)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #8 in CLP_LogEntry_PrivateData_GalileoE5SyncState.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  if (*(a1 + *(result + 48)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #9 in CLP_LogEntry_PrivateData_GalileoE5SyncState.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  if (*(a1 + *(result + 52)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #10 in CLP_LogEntry_PrivateData_GalileoE5SyncState.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  if (*(a1 + *(result + 56)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_GalileoE5SyncState@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  *(a2 + v5) = 2;
  v6 = a1[8];
  *(a2 + a1[7]) = 2;
  *(a2 + v6) = 2;
  v7 = a1[10];
  *(a2 + a1[9]) = 2;
  *(a2 + v7) = 2;
  v8 = a1[12];
  *(a2 + a1[11]) = 2;
  *(a2 + v8) = 2;
  v9 = a1[14];
  *(a2 + a1[13]) = 2;
  *(a2 + v9) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GalileoE5SyncState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GalileoE5SyncState and conformance CLP_LogEntry_PrivateData_GalileoE5SyncState, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GalileoE5SyncState(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GalileoE5SyncState and conformance CLP_LogEntry_PrivateData_GalileoE5SyncState, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GalileoE5SyncState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GalileoE5SyncState and conformance CLP_LogEntry_PrivateData_GalileoE5SyncState, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_SbasL1SyncState.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0) + 28);
LABEL_3:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        break;
      case 2:
        v1 = *(type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0) + 24);
        goto LABEL_3;
      case 1:
        v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0) + 20);
        goto LABEL_3;
    }
  }
}

uint64_t CLP_LogEntry_PrivateData_SbasL1SyncState.traverse<A>(visitor:)()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
  v3 = result;
  if (*(v0 + *(result + 20)) == 2)
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  if (*(v0 + *(v3 + 24)) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v0 + *(v3 + 28)) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_SbasL1SyncState@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  *(a2 + v5) = 2;
  *(a2 + a1[7]) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_SbasL1SyncState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SbasL1SyncState and conformance CLP_LogEntry_PrivateData_SbasL1SyncState, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_SbasL1SyncState(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SbasL1SyncState and conformance CLP_LogEntry_PrivateData_SbasL1SyncState, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_SbasL1SyncState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SbasL1SyncState and conformance CLP_LogEntry_PrivateData_SbasL1SyncState, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_SyncState._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v95 = &v78 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v94 = &v78 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v93 = &v78 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v92 = &v78 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v91 = &v78 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v90 = &v78 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v88 = &v78 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v83 = &v78 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v79 = &v78 - v29;
  *(v1 + 16) = 13;
  v30 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL1;
  v31 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  v32 = *(*(v31 - 8) + 56);
  v32(v1 + v30, 1, 1, v31);
  v33 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL2C;
  v34 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
  (*(*(v34 - 8) + 56))(v1 + v33, 1, 1, v34);
  v35 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5;
  v80 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5;
  v36 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0);
  (*(*(v36 - 8) + 56))(v1 + v35, 1, 1, v36);
  v37 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F;
  v81 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F;
  v38 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
  (*(*(v38 - 8) + 56))(v1 + v37, 1, 1, v38);
  v39 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1;
  v82 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1;
  v40 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0);
  (*(*(v40 - 8) + 56))(v1 + v39, 1, 1, v40);
  v41 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2;
  v84 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2;
  v42 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0);
  (*(*(v42 - 8) + 56))(v1 + v41, 1, 1, v42);
  v43 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1;
  v85 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1;
  v44 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0);
  (*(*(v44 - 8) + 56))(v1 + v43, 1, 1, v44);
  v45 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5;
  v86 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5;
  v46 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  (*(*(v46 - 8) + 56))(v1 + v45, 1, 1, v46);
  v47 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1;
  v87 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1;
  v48 = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
  (*(*(v48 - 8) + 56))(v1 + v47, 1, 1, v48);
  v89 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5;
  v32(v1 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5, 1, 1, v31);
  swift_beginAccess();
  v49 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v49;
  v50 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL1;
  swift_beginAccess();
  v51 = v79;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v50, v79, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v51, v1 + v30, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  swift_endAccess();
  v52 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL2C;
  swift_beginAccess();
  v53 = v83;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v52, v83, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v53, v1 + v33, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
  swift_endAccess();
  v54 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5;
  swift_beginAccess();
  v55 = v88;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v54, v88, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
  v56 = v80;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v55, v1 + v56, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
  swift_endAccess();
  v57 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F;
  swift_beginAccess();
  v58 = v90;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v57, v90, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
  v59 = v81;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v58, v1 + v59, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
  swift_endAccess();
  v60 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1;
  swift_beginAccess();
  v61 = v91;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v60, v91, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
  v62 = v82;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v61, v1 + v62, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
  swift_endAccess();
  v63 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2;
  swift_beginAccess();
  v64 = v92;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v63, v92, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
  v65 = v84;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v64, v1 + v65, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
  swift_endAccess();
  v66 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1;
  swift_beginAccess();
  v67 = v93;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v66, v93, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
  v68 = v85;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v67, v1 + v68, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
  swift_endAccess();
  v69 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5;
  swift_beginAccess();
  v70 = v94;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v69, v94, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
  v71 = v86;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v70, v1 + v71, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
  swift_endAccess();
  v72 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1;
  swift_beginAccess();
  v73 = v95;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v72, v95, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
  v74 = v87;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v73, v1 + v74, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
  swift_endAccess();
  v75 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v75, v51, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);

  v76 = v89;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v51, v1 + v76, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  swift_endAccess();
  return v1;
}

uint64_t CLP_LogEntry_PrivateData_SyncState._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL1, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL2C, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t CLP_LogEntry_PrivateData_SyncState.decodeMessage<A>(decoder:)()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    CLP_LogEntry_PrivateData_SyncState._StorageClass.init(copying:)(v6);
    *(v2 + v3) = v10;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v1)
  {
    while (1)
    {
      if (v12)
      {
        return result;
      }

      if (result > 5)
      {
        break;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v13 = v1;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
          v14 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState;
          v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsL2CSyncState and conformance CLP_LogEntry_PrivateData_GpsL2CSyncState;
        }

        else
        {
          v13 = v1;
          if (result == 4)
          {
            swift_beginAccess();
            type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0);
            v14 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState;
            v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsL5SyncState and conformance CLP_LogEntry_PrivateData_GpsL5SyncState;
          }

          else
          {
            swift_beginAccess();
            type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
            v14 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState;
            v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassL1fSyncState and conformance CLP_LogEntry_PrivateData_GlonassL1fSyncState;
          }
        }

        goto LABEL_29;
      }

      if (result != 1)
      {
        if (result != 2)
        {
          goto LABEL_31;
        }

LABEL_21:
        v13 = v1;
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
        v14 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState;
        v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsL1SyncState and conformance CLP_LogEntry_PrivateData_GpsL1SyncState;
        goto LABEL_29;
      }

      swift_beginAccess();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_Band and conformance CLP_LogEntry_PrivateData_Band();
      dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
LABEL_30:
      swift_endAccess();
LABEL_31:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result > 8)
    {
      switch(result)
      {
        case 9:
          v13 = v1;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
          v14 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState;
          v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GalileoE5SyncState and conformance CLP_LogEntry_PrivateData_GalileoE5SyncState;
          break;
        case 10:
          v13 = v1;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
          v14 = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState;
          v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SbasL1SyncState and conformance CLP_LogEntry_PrivateData_SbasL1SyncState;
          break;
        case 11:
          goto LABEL_21;
        default:
          goto LABEL_31;
      }
    }

    else if (result == 6)
    {
      v13 = v1;
      swift_beginAccess();
      type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0);
      v14 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState;
      v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BeidouB1SyncState and conformance CLP_LogEntry_PrivateData_BeidouB1SyncState;
    }

    else
    {
      v13 = v1;
      if (result == 7)
      {
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0);
        v14 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState;
        v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BeidouB2SyncState and conformance CLP_LogEntry_PrivateData_BeidouB2SyncState;
      }

      else
      {
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0);
        v14 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState;
        v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GalileoE1SyncState and conformance CLP_LogEntry_PrivateData_GalileoE1SyncState;
      }
    }

LABEL_29:
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v14);
    v1 = v13;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    goto LABEL_30;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 16) == 13)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v11 = *(v9 + 16);
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_Band and conformance CLP_LogEntry_PrivateData_Band();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  closure #2 in closure #1 in CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #3 in closure #1 in CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #4 in closure #1 in CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #5 in closure #1 in CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #6 in closure #1 in CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #7 in closure #1 in CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #8 in closure #1 in CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #9 in closure #1 in CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #10 in closure #1 in CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #11 in closure #1 in CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(v9, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #2 in closure #1 in CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL1;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsL1SyncState and conformance CLP_LogEntry_PrivateData_GpsL1SyncState, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
}

uint64_t closure #3 in closure #1 in CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL2C;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsL2CSyncState and conformance CLP_LogEntry_PrivateData_GpsL2CSyncState, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
}

uint64_t closure #4 in closure #1 in CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsL5SyncState and conformance CLP_LogEntry_PrivateData_GpsL5SyncState, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
}

uint64_t closure #5 in closure #1 in CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassL1fSyncState and conformance CLP_LogEntry_PrivateData_GlonassL1fSyncState, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
}

uint64_t closure #6 in closure #1 in CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BeidouB1SyncState and conformance CLP_LogEntry_PrivateData_BeidouB1SyncState, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
}

uint64_t closure #7 in closure #1 in CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BeidouB2SyncState and conformance CLP_LogEntry_PrivateData_BeidouB2SyncState, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
}

uint64_t closure #8 in closure #1 in CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GalileoE1SyncState and conformance CLP_LogEntry_PrivateData_GalileoE1SyncState, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
}

uint64_t closure #9 in closure #1 in CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GalileoE5SyncState and conformance CLP_LogEntry_PrivateData_GalileoE5SyncState, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
}

uint64_t closure #10 in closure #1 in CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SbasL1SyncState and conformance CLP_LogEntry_PrivateData_SbasL1SyncState, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
}

uint64_t closure #11 in closure #1 in CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsL1SyncState and conformance CLP_LogEntry_PrivateData_GpsL1SyncState, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
}

BOOL closure #1 in static CLP_LogEntry_PrivateData_SyncState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
  v244 = *(v4 - 8);
  v5 = *(v244 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v233 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSg_ADtMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSg_ADtMR);
  v8 = *(*(v243 - 8) + 64);
  MEMORY[0x28223BE20](v243);
  v10 = &v233 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v239 = &v233 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v246 = &v233 - v15;
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  v248 = *(v16 - 8);
  v249 = v16;
  v17 = *(v248 + 64);
  MEMORY[0x28223BE20](v16);
  v240 = &v233 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSg_ADtMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSg_ADtMR);
  v19 = *(*(v247 - 8) + 64);
  MEMORY[0x28223BE20](v247);
  v250 = &v233 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v265 = &v233 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v252 = &v233 - v25;
  v26 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0);
  v255 = *(v26 - 8);
  v256 = v26;
  v27 = *(v255 + 64);
  MEMORY[0x28223BE20](v26);
  v245 = &v233 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSg_ADtMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSg_ADtMR);
  v29 = *(*(v254 - 8) + 64);
  MEMORY[0x28223BE20](v254);
  v257 = &v233 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v251 = &v233 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v259 = &v233 - v35;
  v36 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0);
  v262 = *(v36 - 8);
  v263 = v36;
  v37 = *(v262 + 64);
  MEMORY[0x28223BE20](v36);
  v253 = &v233 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSg_ADtMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSg_ADtMR);
  v39 = *(*(v261 - 8) + 64);
  MEMORY[0x28223BE20](v261);
  v264 = &v233 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x28223BE20](v41 - 8);
  v258 = &v233 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v267 = &v233 - v45;
  v46 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0);
  v270 = *(v46 - 8);
  v271 = v46;
  v47 = *(v270 + 64);
  MEMORY[0x28223BE20](v46);
  v260 = &v233 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSg_ADtMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSg_ADtMR);
  v49 = *(*(v269 - 8) + 64);
  MEMORY[0x28223BE20](v269);
  v272 = &v233 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
  v52 = *(*(v51 - 8) + 64);
  v53 = MEMORY[0x28223BE20](v51 - 8);
  v266 = &v233 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v284 = &v233 - v55;
  v56 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
  v276 = *(v56 - 8);
  v277 = v56;
  v57 = *(v276 + 64);
  MEMORY[0x28223BE20](v56);
  v268 = &v233 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSg_ADtMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSg_ADtMR);
  v59 = *(*(v275 - 8) + 64);
  MEMORY[0x28223BE20](v275);
  v278 = &v233 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
  v62 = *(*(v61 - 8) + 64);
  v63 = MEMORY[0x28223BE20](v61 - 8);
  v273 = &v233 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v285 = &v233 - v65;
  v66 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0);
  v281 = *(v66 - 8);
  v282 = v66;
  v67 = *(v281 + 64);
  MEMORY[0x28223BE20](v66);
  v274 = &v233 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSg_ADtMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSg_ADtMR);
  v69 = *(*(v280 - 8) + 64);
  MEMORY[0x28223BE20](v280);
  v283 = &v233 - v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
  v72 = *(*(v71 - 8) + 64);
  v73 = MEMORY[0x28223BE20](v71 - 8);
  v292 = &v233 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v73);
  v293 = &v233 - v75;
  v76 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
  v289 = *(v76 - 8);
  v290 = v76;
  v77 = *(v289 + 64);
  MEMORY[0x28223BE20](v76);
  v279 = &v233 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSg_ADtMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSg_ADtMR);
  v79 = *(*(v288 - 8) + 64);
  MEMORY[0x28223BE20](v288);
  v291 = &v233 - v80;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
  v82 = *(*(v81 - 8) + 64);
  v83 = MEMORY[0x28223BE20](v81 - 8);
  v286 = &v233 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v83);
  v294 = &v233 - v85;
  v86 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  v87 = *(v86 - 8);
  v296 = v86;
  v297 = v87;
  v88 = *(v87 + 64);
  MEMORY[0x28223BE20](v86);
  v287 = &v233 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSg_ADtMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSg_ADtMR);
  v90 = *(*(v295 - 8) + 64);
  v91 = MEMORY[0x28223BE20](v295);
  v242 = &v233 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v91);
  v94 = &v233 - v93;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  v96 = *(*(v95 - 8) + 64);
  v97 = MEMORY[0x28223BE20](v95 - 8);
  v238 = &v233 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = MEMORY[0x28223BE20](v97);
  v241 = &v233 - v100;
  v101 = MEMORY[0x28223BE20](v99);
  v103 = &v233 - v102;
  MEMORY[0x28223BE20](v101);
  v105 = &v233 - v104;
  swift_beginAccess();
  v106 = *(a1 + 16);
  swift_beginAccess();
  v107 = *(a2 + 16);
  if (v106 == 13)
  {
    if (v107 != 13)
    {
      return 0;
    }

LABEL_6:
    v235 = v7;
    v236 = v4;
    v237 = v10;
    v109 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL1;
    swift_beginAccess();
    v110 = a1;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v109, v105, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
    v111 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL1;
    swift_beginAccess();
    v112 = *(v295 + 48);
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v105, v94, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v111, &v94[v112], &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
    v113 = v296;
    v114 = v297 + 48;
    v115 = *(v297 + 48);
    if (v115(v94, 1, v296) == 1)
    {

      outlined destroy of Any?(v105, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
      v234 = v115;
      v116 = v115(&v94[v112], 1, v113);
      v117 = v110;
      if (v116 == 1)
      {
        v297 = v114;
        outlined destroy of Any?(v94, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
LABEL_13:
        v123 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL2C;
        swift_beginAccess();
        v124 = v294;
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v117 + v123, v294, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
        v125 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL2C;
        swift_beginAccess();
        v126 = *(v288 + 48);
        v127 = v291;
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v124, v291, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
        v128 = v127;
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v125, v127 + v126, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
        v129 = *(v289 + 48);
        v130 = v127;
        v131 = v290;
        if (v129(v130, 1, v290) == 1)
        {
          outlined destroy of Any?(v124, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
          v132 = v129(v128 + v126, 1, v131);
          v133 = v292;
          v134 = v293;
          if (v132 == 1)
          {
            outlined destroy of Any?(v128, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
            goto LABEL_20;
          }
        }

        else
        {
          v135 = v286;
          outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v128, v286, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
          v136 = v129(v128 + v126, 1, v131);
          v137 = v292;
          v134 = v293;
          if (v136 != 1)
          {
            v138 = v128 + v126;
            v139 = v279;
            outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v138, v279, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
            LODWORD(v290) = specialized static CLP_LogEntry_PrivateData_GlonassL1fSyncState.== infix(_:_:)(v135, v139, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
            outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v139, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
            outlined destroy of Any?(v294, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
            outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v135, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
            outlined destroy of Any?(v128, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
            v133 = v137;
            if ((v290 & 1) == 0)
            {
              goto LABEL_70;
            }

LABEL_20:
            v140 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5;
            swift_beginAccess();
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v117 + v140, v134, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
            v141 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5;
            swift_beginAccess();
            v142 = *(v280 + 48);
            v143 = v283;
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v134, v283, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
            v144 = v143;
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v141, v143 + v142, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
            v145 = v282;
            v146 = *(v281 + 48);
            if (v146(v143, 1, v282) == 1)
            {
              outlined destroy of Any?(v134, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
              v147 = v146(v143 + v142, 1, v145);
              v149 = v284;
              v148 = v285;
              if (v147 == 1)
              {
                outlined destroy of Any?(v144, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
                goto LABEL_27;
              }
            }

            else
            {
              outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v143, v133, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
              v150 = v146(v143 + v142, 1, v145);
              v151 = v284;
              v148 = v285;
              if (v150 != 1)
              {
                v152 = v144 + v142;
                v153 = v274;
                outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v152, v274, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
                LODWORD(v294) = specialized static CLP_LogEntry_PrivateData_GalileoE1SyncState.== infix(_:_:)(v133, v153, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
                outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v153, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
                outlined destroy of Any?(v293, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
                v154 = v133;
                v149 = v151;
                outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v154, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
                outlined destroy of Any?(v144, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
                if ((v294 & 1) == 0)
                {
                  goto LABEL_70;
                }

LABEL_27:
                v155 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F;
                swift_beginAccess();
                outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v117 + v155, v148, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
                v156 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F;
                swift_beginAccess();
                v157 = *(v275 + 48);
                v144 = v278;
                outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v148, v278, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
                outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v156, v144 + v157, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
                v158 = v277;
                v159 = *(v276 + 48);
                if (v159(v144, 1, v277) == 1)
                {
                  outlined destroy of Any?(v148, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
                  if (v159(v144 + v157, 1, v158) == 1)
                  {
                    outlined destroy of Any?(v144, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
                    goto LABEL_34;
                  }
                }

                else
                {
                  v160 = v273;
                  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v144, v273, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
                  if (v159(v144 + v157, 1, v158) != 1)
                  {
                    v161 = v144 + v157;
                    v162 = v268;
                    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v161, v268, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
                    v163 = specialized static CLP_LogEntry_PrivateData_GlonassL1fSyncState.== infix(_:_:)(v160, v162, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
                    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v162, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
                    outlined destroy of Any?(v285, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
                    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v160, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
                    outlined destroy of Any?(v144, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
                    if ((v163 & 1) == 0)
                    {
                      goto LABEL_70;
                    }

LABEL_34:
                    v164 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1;
                    swift_beginAccess();
                    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v117 + v164, v149, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
                    v165 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1;
                    swift_beginAccess();
                    v166 = *(v269 + 48);
                    v167 = v272;
                    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v149, v272, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
                    v144 = v167;
                    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v165, v167 + v166, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
                    v168 = v271;
                    v169 = *(v270 + 48);
                    if (v169(v167, 1, v271) == 1)
                    {
                      outlined destroy of Any?(v149, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
                      if (v169(v167 + v166, 1, v168) == 1)
                      {
                        outlined destroy of Any?(v167, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
                        goto LABEL_41;
                      }
                    }

                    else
                    {
                      v170 = v266;
                      outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v167, v266, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
                      if (v169(v167 + v166, 1, v168) != 1)
                      {
                        v171 = v167 + v166;
                        v172 = v260;
                        outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v171, v260, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
                        v173 = specialized static CLP_LogEntry_PrivateData_GalileoE1SyncState.== infix(_:_:)(v170, v172, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
                        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v172, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
                        outlined destroy of Any?(v284, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
                        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v170, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
                        outlined destroy of Any?(v167, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
                        if ((v173 & 1) == 0)
                        {
                          goto LABEL_70;
                        }

LABEL_41:
                        v174 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2;
                        swift_beginAccess();
                        v175 = v267;
                        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v117 + v174, v267, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
                        v176 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2;
                        swift_beginAccess();
                        v177 = *(v261 + 48);
                        v144 = v264;
                        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v175, v264, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
                        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v176, v144 + v177, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
                        v178 = v263;
                        v179 = *(v262 + 48);
                        if (v179(v144, 1, v263) == 1)
                        {
                          outlined destroy of Any?(v175, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
                          v180 = v179(v144 + v177, 1, v178);
                          v181 = v265;
                          if (v180 == 1)
                          {
                            outlined destroy of Any?(v144, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
                            goto LABEL_48;
                          }
                        }

                        else
                        {
                          v182 = v258;
                          outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v144, v258, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
                          v183 = v177;
                          v184 = v179(v144 + v177, 1, v178);
                          v181 = v265;
                          if (v184 != 1)
                          {
                            v185 = v144 + v183;
                            v186 = v253;
                            outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v185, v253, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
                            v187 = specialized static CLP_LogEntry_PrivateData_GalileoE1SyncState.== infix(_:_:)(v182, v186, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
                            outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v186, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
                            outlined destroy of Any?(v267, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
                            outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v182, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
                            outlined destroy of Any?(v144, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
                            if ((v187 & 1) == 0)
                            {
                              goto LABEL_70;
                            }

LABEL_48:
                            v188 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1;
                            swift_beginAccess();
                            v189 = v259;
                            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v117 + v188, v259, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
                            v190 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1;
                            swift_beginAccess();
                            v191 = *(v254 + 48);
                            v192 = v257;
                            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v189, v257, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
                            v144 = v192;
                            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v190, v192 + v191, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
                            v193 = v256;
                            v194 = *(v255 + 48);
                            if (v194(v192, 1, v256) == 1)
                            {
                              outlined destroy of Any?(v189, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
                              if (v194(v192 + v191, 1, v193) == 1)
                              {
                                outlined destroy of Any?(v192, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
LABEL_55:
                                v199 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5;
                                swift_beginAccess();
                                v200 = v252;
                                outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v117 + v199, v252, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
                                v201 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5;
                                swift_beginAccess();
                                v202 = *(v247 + 48);
                                v203 = v250;
                                outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v200, v250, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
                                v144 = v203;
                                outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v201, v203 + v202, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
                                v204 = v249;
                                v205 = *(v248 + 48);
                                if (v205(v203, 1, v249) == 1)
                                {
                                  outlined destroy of Any?(v200, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
                                  if (v205(v203 + v202, 1, v204) == 1)
                                  {
                                    outlined destroy of Any?(v203, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
LABEL_62:
                                    v209 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1;
                                    swift_beginAccess();
                                    v210 = v246;
                                    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v117 + v209, v246, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
                                    v211 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1;
                                    swift_beginAccess();
                                    v212 = *(v243 + 48);
                                    v213 = v210;
                                    v214 = v237;
                                    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v213, v237, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
                                    v144 = v214;
                                    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v211, v214 + v212, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
                                    v215 = *(v244 + 48);
                                    v216 = v236;
                                    if (v215(v214, 1, v236) == 1)
                                    {
                                      outlined destroy of Any?(v246, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
                                      if (v215(v214 + v212, 1, v216) == 1)
                                      {
                                        outlined destroy of Any?(v214, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
LABEL_74:
                                        v221 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5;
                                        swift_beginAccess();
                                        v222 = v241;
                                        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v117 + v221, v241, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
                                        v223 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5;
                                        swift_beginAccess();
                                        v224 = *(v295 + 48);
                                        v225 = v242;
                                        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v222, v242, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
                                        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v223, v225 + v224, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
                                        v226 = v296;
                                        v227 = v234;
                                        if (v234(v225, 1, v296) == 1)
                                        {

                                          outlined destroy of Any?(v241, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
                                          if (v227(v225 + v224, 1, v226) == 1)
                                          {
                                            outlined destroy of Any?(v242, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
                                            return 1;
                                          }

                                          goto LABEL_79;
                                        }

                                        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v225, v238, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
                                        if (v227(v225 + v224, 1, v226) == 1)
                                        {

                                          outlined destroy of Any?(v241, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
                                          outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v238, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
LABEL_79:
                                          outlined destroy of Any?(v242, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSg_ADtMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSg_ADtMR);
                                          return 0;
                                        }

                                        v228 = v242;
                                        v229 = v242 + v224;
                                        v230 = v287;
                                        outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v229, v287, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
                                        v231 = v238;
                                        v232 = specialized static CLP_LogEntry_PrivateData_GalileoE1SyncState.== infix(_:_:)(v238, v230, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);

                                        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v230, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
                                        outlined destroy of Any?(v241, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
                                        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v231, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
                                        outlined destroy of Any?(v228, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
                                        return (v232 & 1) != 0;
                                      }

                                      goto LABEL_67;
                                    }

                                    v217 = v239;
                                    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v214, v239, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
                                    if (v215(v214 + v212, 1, v216) == 1)
                                    {
                                      outlined destroy of Any?(v246, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
                                      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v217, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
LABEL_67:
                                      v118 = &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSg_ADtMd;
                                      v119 = &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSg_ADtMR;
                                      goto LABEL_68;
                                    }

                                    v218 = v214 + v212;
                                    v219 = v235;
                                    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v218, v235, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
                                    v220 = specialized static CLP_LogEntry_PrivateData_SbasL1SyncState.== infix(_:_:)(v217, v219);
                                    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v219, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
                                    outlined destroy of Any?(v246, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
                                    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v217, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
                                    outlined destroy of Any?(v214, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
                                    if (v220)
                                    {
                                      goto LABEL_74;
                                    }

LABEL_70:

                                    return 0;
                                  }
                                }

                                else
                                {
                                  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v203, v181, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
                                  if (v205(v203 + v202, 1, v204) != 1)
                                  {
                                    v206 = v203 + v202;
                                    v207 = v240;
                                    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v206, v240, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
                                    v208 = specialized static CLP_LogEntry_PrivateData_GalileoE5SyncState.== infix(_:_:)(v181, v207);
                                    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v207, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
                                    outlined destroy of Any?(v252, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
                                    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v181, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
                                    outlined destroy of Any?(v203, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
                                    if ((v208 & 1) == 0)
                                    {
                                      goto LABEL_70;
                                    }

                                    goto LABEL_62;
                                  }

                                  outlined destroy of Any?(v252, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
                                  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v181, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
                                }

                                v118 = &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSg_ADtMd;
                                v119 = &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSg_ADtMR;
LABEL_68:
                                v120 = v144;
                                goto LABEL_69;
                              }
                            }

                            else
                            {
                              v195 = v251;
                              outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v192, v251, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
                              if (v194(v192 + v191, 1, v193) != 1)
                              {
                                v196 = v192 + v191;
                                v197 = v245;
                                outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v196, v245, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
                                v198 = specialized static CLP_LogEntry_PrivateData_GalileoE1SyncState.== infix(_:_:)(v195, v197, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
                                outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v197, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
                                outlined destroy of Any?(v259, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
                                outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v195, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
                                outlined destroy of Any?(v192, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
                                if ((v198 & 1) == 0)
                                {
                                  goto LABEL_70;
                                }

                                goto LABEL_55;
                              }

                              outlined destroy of Any?(v259, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
                              outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v195, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
                            }

                            v118 = &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSg_ADtMd;
                            v119 = &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSg_ADtMR;
                            goto LABEL_68;
                          }

                          outlined destroy of Any?(v267, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
                          outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v182, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
                        }

                        v118 = &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSg_ADtMd;
                        v119 = &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSg_ADtMR;
                        goto LABEL_68;
                      }

                      outlined destroy of Any?(v284, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
                      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v170, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
                    }

                    v118 = &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSg_ADtMd;
                    v119 = &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSg_ADtMR;
                    goto LABEL_68;
                  }

                  outlined destroy of Any?(v285, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
                  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v160, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
                }

                v118 = &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSg_ADtMd;
                v119 = &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSg_ADtMR;
                goto LABEL_68;
              }

              outlined destroy of Any?(v293, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
              outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v133, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
            }

            v118 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSg_ADtMd;
            v119 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSg_ADtMR;
            goto LABEL_68;
          }

          outlined destroy of Any?(v294, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
          outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v135, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
        }

        v118 = &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSg_ADtMd;
        v119 = &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSg_ADtMR;
        v120 = v128;
LABEL_69:
        outlined destroy of Any?(v120, v118, v119);
        goto LABEL_70;
      }
    }

    else
    {
      outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v94, v103, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
      if (v115(&v94[v112], 1, v113) != 1)
      {
        v234 = v115;
        v297 = v114;
        v121 = v287;
        outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v94[v112], v287, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
        v117 = v110;

        v122 = specialized static CLP_LogEntry_PrivateData_GalileoE1SyncState.== infix(_:_:)(v103, v121, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v121, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
        outlined destroy of Any?(v105, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v103, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
        outlined destroy of Any?(v94, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
        if ((v122 & 1) == 0)
        {
          goto LABEL_70;
        }

        goto LABEL_13;
      }

      outlined destroy of Any?(v105, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v103, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
    }

    v118 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSg_ADtMd;
    v119 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSg_ADtMR;
    v120 = v94;
    goto LABEL_69;
  }

  result = 0;
  if (v107 != 13 && v106 == v107)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_SyncState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SyncState and conformance CLP_LogEntry_PrivateData_SyncState, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_SyncState(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SyncState and conformance CLP_LogEntry_PrivateData_SyncState, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_SyncState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SyncState and conformance CLP_LogEntry_PrivateData_SyncState, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_SvTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvTime and conformance CLP_LogEntry_PrivateData_SvTime, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_SvTime(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvTime and conformance CLP_LogEntry_PrivateData_SvTime, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_SvTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvTime and conformance CLP_LogEntry_PrivateData_SvTime, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_SvTime.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v8 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v6 = *(a4(0) + 28);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        break;
      case 2:
        v10 = *(a4(0) + 24);
LABEL_10:
        v4 = 0;
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        break;
      case 1:
        v9 = *(a4(0) + 20);
        goto LABEL_10;
    }
  }
}

uint64_t CLP_LogEntry_PrivateData_SvTime.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4(0);
  v7 = result;
  v8 = (v4 + *(result + 20));
  if (v8[1])
  {
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v9 = *v8;
    result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }
  }

  v10 = (v4 + *(v7 + 24));
  if ((v10[1] & 1) == 0)
  {
    v11 = *v10;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if (*(v4 + *(v7 + 28)) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_FrequencyOffset(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FrequencyOffset and conformance CLP_LogEntry_PrivateData_FrequencyOffset, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_FrequencyOffset(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FrequencyOffset and conformance CLP_LogEntry_PrivateData_FrequencyOffset, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_FrequencyOffset(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FrequencyOffset and conformance CLP_LogEntry_PrivateData_FrequencyOffset, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        v1 = *(type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0) + 28);
        goto LABEL_3;
      }

      if (result == 4)
      {
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0) + 32);
LABEL_3:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }
    }

    else if (result == 1)
    {
      v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0) + 20);
LABEL_14:
      v0 = 0;
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }

    else if (result == 2)
    {
      v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0) + 24);
      goto LABEL_14;
    }
  }
}

uint64_t CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking.traverse<A>(visitor:)()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  v3 = result;
  v4 = (v0 + *(result + 20));
  if (v4[1])
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v5 = *v4;
    result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  v6 = (v0 + v3[6]);
  if ((v6[1] & 1) == 0)
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if (*(v0 + v3[7]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v0 + v3[8]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1[8];
  *(a2 + a1[7]) = 2;
  *(a2 + v8) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking and conformance CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking and conformance CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking and conformance CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_PhaseTracking.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0) + 20);
LABEL_16:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
      }

      else if (result == 2)
      {
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0) + 24);
        goto LABEL_16;
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          v1 = *(type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0) + 28);
          goto LABEL_3;
        case 4:
          v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0) + 32);
LABEL_3:
          v0 = 0;
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          break;
        case 5:
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0) + 36);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
      }
    }
  }
}

uint64_t CLP_LogEntry_PrivateData_PhaseTracking.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  v10 = result;
  v11 = v5 + *(result + 20);
  if (*(v11 + 8))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v12 = *v11;
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  v13 = v5 + v10[6];
  if ((*(v13 + 8) & 1) == 0)
  {
    v14 = *v13;
    dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  v15 = v5 + v10[7];
  if ((*(v15 + 8) & 1) == 0)
  {
    v16 = *v15;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  v17 = v5 + v10[8];
  if ((*(v17 + 8) & 1) == 0)
  {
    v18 = *v17;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  closure #5 in CLP_LogEntry_PrivateData_GpsL2CSyncState.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_PhaseTracking@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 8) = 1;
  *(a2 + a1[9]) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_PhaseTracking(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PhaseTracking and conformance CLP_LogEntry_PrivateData_PhaseTracking, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_PhaseTracking(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PhaseTracking and conformance CLP_LogEntry_PrivateData_PhaseTracking, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_PhaseTracking(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PhaseTracking and conformance CLP_LogEntry_PrivateData_PhaseTracking, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_SignalCorrelationPeak.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      switch(result)
      {
        case 3:
          v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0) + 28);
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
          goto LABEL_5;
        case 2:
          v4 = v0;
          v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0) + 24);
          type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
          v6 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset;
          v7 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FrequencyOffset and conformance CLP_LogEntry_PrivateData_FrequencyOffset;
          break;
        case 1:
          v4 = v0;
          v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0) + 20);
          type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
          v6 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime;
          v7 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvTime and conformance CLP_LogEntry_PrivateData_SvTime;
          break;
        default:
          goto LABEL_5;
      }

      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v6);
      v0 = v4;
      dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_SignalCorrelationPeak.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in CLP_LogEntry_PrivateData_SignalCorrelationPeak.traverse<A>(visitor:)(v5, a1, a2, a3);
  if (!v4)
  {
    closure #2 in CLP_LogEntry_PrivateData_SignalCorrelationPeak.traverse<A>(visitor:)(v5, a1, a2, a3);
    v10 = v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0) + 28);
    if ((*(v10 + 4) & 1) == 0)
    {
      v11 = *v10;
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CLP_LogEntry_PrivateData_SignalCorrelationPeak.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 20), v8, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvTime and conformance CLP_LogEntry_PrivateData_SvTime, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
}

uint64_t closure #2 in CLP_LogEntry_PrivateData_SignalCorrelationPeak.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 24), v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FrequencyOffset and conformance CLP_LogEntry_PrivateData_FrequencyOffset, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
}