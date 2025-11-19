Swift::Void __swiftcall CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData.clearInclination()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0) + 44);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 48), v6, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
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
    return outlined destroy of Any?(v6, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData.timestamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0) + 48);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData.timestamp.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0) + 48);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
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
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return CLP_LogEntry_PrivateData_AccelSample.applicableTime.modify;
}

BOOL CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData.hasTimestamp.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v0 + *(v5 + 48), v4, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData.clearTimestamp()()
{
  v1 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0) + 48);
  outlined destroy of Any?(v0 + v1, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + v2[6];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = a1 + v2[7];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a1 + v2[8];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1 + v2[9];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1 + v2[10];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a1 + v2[11];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v2[12];
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a1 + v10, 1, 1, v11);
}

uint64_t CLP_LogEntry_PrivateData_GeomagneticModelData.data.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMd, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GeomagneticModelData(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 20), v6, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMd, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
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
  v14 = a1 + v8[9];
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = a1 + v8[10];
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = a1 + v8[11];
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = v8[12];
  v18 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v18 - 8) + 56))(a1 + v17, 1, 1, v18);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMd, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GeomagneticModelData.data.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GeomagneticModelData(0) + 20);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMd, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_PrivateData_GeomagneticModelData.data.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMd, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_GeomagneticModelData(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMd, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMR);
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
    v21 = v14 + v9[9];
    *v21 = 0;
    *(v21 + 8) = 1;
    v22 = v14 + v9[10];
    *v22 = 0;
    *(v22 + 8) = 1;
    v23 = v14 + v9[11];
    *v23 = 0;
    *(v23 + 8) = 1;
    v24 = v9[12];
    v25 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
    (*(*(v25 - 8) + 56))(v14 + v24, 1, 1, v25);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMd, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
  }

  return CLP_LogEntry_PrivateData_GeomagneticModelData.data.modify;
}

uint64_t CLP_LogEntry_PrivateData_WifiAccessPoint.mac.setter(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_WifiAccessPoint.mac.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0) + 20);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_WifiAccessPoint.clearMac()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t (*CLP_LogEntry_PrivateData_WifiAccessPoint.ssid.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return CLP_LogEntry_PrivateData_XtraFileAvailable.where.modify;
}

uint64_t CLP_LogEntry_PrivateData_WifiAccessPoint.rssiDb.setter(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_WifiAccessPoint.rssiDb.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0) + 28);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_WifiAccessPoint.clearRssiDb()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_WifiAccessPoint.mode.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0) + 32));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_WifiAccessPoint.mode.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_WifiAccessPoint.mode.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0) + 32);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_WifiAccessPoint.channel.setter(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_WifiAccessPoint.channel.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0) + 36);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_WifiAccessPoint.clearChannel()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_WifiAccessPoint.ageS.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_WifiAccessPoint.ageS.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0) + 40);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_WifiAccessPoint.clearAgeS()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_WifiAccessPoint.isApplePersonalHotspot.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_WifiAccessPoint.isApplePersonalHotspot.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0) + 44);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_WifiAccessPoint.isMoving.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_WifiAccessPoint.isMoving.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0) + 48);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_WifiAccessPoint.band.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_WifiAccessPoint.band.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0) + 52);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_WifiAccessPoint.frequencyKhz.getter()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0) + 56));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_WifiAccessPoint.frequencyKhz.setter(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v4 = v1 + *(result + 56);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_WifiAccessPoint.frequencyKhz.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0) + 56);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_WifiAccessPoint.clearFrequencyKhz()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0) + 56);
  *v1 = 0;
  *(v1 + 4) = 1;
}

int *CLP_LogEntry_PrivateData_WifiAccessPoint.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = (a1 + result[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  *(a1 + result[8]) = 4;
  v6 = a1 + result[9];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1 + result[10];
  *v7 = 0;
  *(v7 + 4) = 1;
  *(a1 + result[11]) = 2;
  *(a1 + result[12]) = 2;
  *(a1 + result[13]) = 4;
  v8 = a1 + result[14];
  *v8 = 0;
  *(v8 + 4) = 1;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_WifiAssociationState.isAssociated.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_WifiAssociationState.isAssociated.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_WifiAssociationState.ap.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_PrivateData_WifiAssociationState.ap.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = (v14 + v9[6]);
    *v18 = 0;
    v18[1] = 0;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 4) = 1;
    *(v14 + v9[8]) = 4;
    v20 = v14 + v9[9];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v14 + v9[10];
    *v21 = 0;
    *(v21 + 4) = 1;
    *(v14 + v9[11]) = 2;
    *(v14 + v9[12]) = 2;
    *(v14 + v9[13]) = 4;
    v22 = v14 + v9[14];
    *v22 = 0;
    *(v22 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  }

  return CLP_LogEntry_PrivateData_WifiAssociationState.ap.modify;
}

uint64_t CLP_LogEntry_PrivateData_WifiAssociationState.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  *(a1 + *(v2 + 20)) = 2;
  v3 = *(v2 + 24);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

uint64_t CLP_LogEntry_PrivateData_WifiScanResult.scanTimestamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*CLP_LogEntry_PrivateData_WifiScanResult.scanTimestamp.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
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
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return CLP_LogEntry_PrivateData_AccelSample.applicableTime.modify;
}

uint64_t CLP_LogEntry_PrivateData_WifiNotification.eventReceiptTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_WifiNotification._StorageClass.init(copying:)(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v17, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_WifiNotification.eventReceiptTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
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
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return CLP_LogEntry_PrivateData_WifiNotification.eventReceiptTime.modify;
}

void CLP_LogEntry_PrivateData_WifiNotification.eventReceiptTime.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_WifiNotification._StorageClass.init(copying:)(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_WifiNotification._StorageClass.init(copying:)(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_WifiNotification.clearEventReceiptTime()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_WifiNotification._StorageClass.init(copying:)(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v15, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_WifiNotification.client.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_WifiNotification.client.modify;
}

void (*CLP_LogEntry_PrivateData_WifiNotification.type.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 15)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return CLP_LogEntry_PrivateData_WifiNotification.type.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_WifiNotification.clearType()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_WifiNotification._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  v10 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type;
  swift_beginAccess();
  *(v5 + v10) = 15;
}

void (*CLP_LogEntry_PrivateData_WifiNotification.scanType.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scanType;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 15)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return CLP_LogEntry_PrivateData_WifiNotification.scanType.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_WifiNotification.clearScanType()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_WifiNotification._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  v10 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scanType;
  swift_beginAccess();
  *(v5 + v10) = 15;
}

void (*CLP_LogEntry_PrivateData_WifiNotification.power.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__power;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return CLP_LogEntry_PrivateData_WifiNotification.power.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_WifiNotification.clearPower()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_WifiNotification._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  v10 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__power;
  swift_beginAccess();
  *(v5 + v10) = 2;
}

uint64_t CLP_LogEntry_PrivateData_WifiNotification.associatedState.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_WifiNotification._StorageClass.init(copying:)(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__associatedState;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v17, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_WifiNotification.associatedState.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__associatedState;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + *(v9 + 20)) = 2;
    v19 = *(v9 + 24);
    v20 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);
  }

  return CLP_LogEntry_PrivateData_WifiNotification.associatedState.modify;
}

void CLP_LogEntry_PrivateData_WifiNotification.associatedState.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_WifiNotification._StorageClass.init(copying:)(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__associatedState;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v14, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_WifiNotification._StorageClass.init(copying:)(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__associatedState;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_WifiNotification.clearAssociatedState()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_WifiNotification._StorageClass.init(copying:)(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__associatedState;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v15, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_WifiNotification.scan.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_WifiNotification._StorageClass.init(copying:)(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scan;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v17, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_WifiNotification.scan.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scan;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    v19 = &v14[*(v9 + 20)];
    UnknownStorage.init()();
    v20 = *(v9 + 24);
    v21 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
    (*(*(v21 - 8) + 56))(&v14[v20], 1, 1, v21);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
  }

  return CLP_LogEntry_PrivateData_WifiNotification.scan.modify;
}

void CLP_LogEntry_PrivateData_WifiNotification.scan.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_WifiNotification._StorageClass.init(copying:)(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scan;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v14, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_WifiNotification._StorageClass.init(copying:)(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scan;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_WifiNotification.clearScan()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_WifiNotification._StorageClass.init(copying:)(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scan;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v15, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR);
  swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_WifiNotification.simulated.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__simulated;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return CLP_LogEntry_PrivateData_WifiNotification.simulated.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_WifiNotification.clearSimulated()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_WifiNotification._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  v10 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__simulated;
  swift_beginAccess();
  *(v5 + v10) = 2;
}

void (*CLP_LogEntry_PrivateData_WifiNotification.available.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__available;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return CLP_LogEntry_PrivateData_WifiNotification.available.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_WifiNotification.clearAvailable()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_WifiNotification._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  v10 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__available;
  swift_beginAccess();
  *(v5 + v10) = 2;
}

void (*CLP_LogEntry_PrivateData_WifiNotification.isInvoluntaryLinkDown.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInvoluntaryLinkDown;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return CLP_LogEntry_PrivateData_WifiNotification.isInvoluntaryLinkDown.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_WifiNotification.clearIsInvoluntaryLinkDown()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_WifiNotification._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  v10 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInvoluntaryLinkDown;
  swift_beginAccess();
  *(v5 + v10) = 2;
}

void (*CLP_LogEntry_PrivateData_WifiNotification.isApAwake.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isApAwake;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return CLP_LogEntry_PrivateData_WifiNotification.isApAwake.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_WifiNotification.clearIsApAwake()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_WifiNotification._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  v10 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isApAwake;
  swift_beginAccess();
  *(v5 + v10) = 2;
}

uint64_t (*CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.applicableTime.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
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
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return CLP_LogEntry_PrivateData_AccelSample.applicableTime.modify;
}

uint64_t CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.state.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction(0) + 24));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.state.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.state.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.stateProbability.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.stateProbability.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction(0) + 28);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.clearStateProbability()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.measurementSource.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction(0) + 32));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.measurementSource.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.measurementSource.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction(0) + 32);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.MeasurementSource(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.MeasurementSource and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.MeasurementSource();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction(0);
  v3 = v2[5];
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  *(a1 + v2[6]) = 4;
  v6 = a1 + v2[7];
  *v6 = 0;
  *(v6 + 8) = 1;
  *(a1 + v2[8]) = 4;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_GEOLocationCoordinate2D.latitudeDeg.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GEOLocationCoordinate2D.latitudeDeg.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0) + 20);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_GEOLocationCoordinate2D.clearLatitudeDeg()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_GEOLocationCoordinate2D.longitudeDeg.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GEOLocationCoordinate2D.longitudeDeg.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0) + 24);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_GEOLocationCoordinate2D.clearLongitudeDeg()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection.baseHeightAboveGroundM.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection.baseHeightAboveGroundM.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0) + 24);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection.clearBaseHeightAboveGroundM()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection.heightAboveBaseM.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection.heightAboveBaseM.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0) + 28);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection.clearHeightAboveBaseM()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection.hasTerrainElevation_p.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection.hasTerrainElevation_p.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection.terrainElevationM.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection.terrainElevationM.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0) + 36);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection.clearTerrainElevationM()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0) + 36);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection.minBaseHeightM.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection.minBaseHeightM.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0) + 40);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection.clearMinBaseHeightM()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0) + 40);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection.maxBaseHeightM.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection.maxBaseHeightM.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0) + 44);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection.clearMaxBaseHeightM()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0) + 44);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double CLP_LogEntry_PrivateData_DirectionOfTravel.startLongitudeDeg.getter(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 48);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection.topHeightM.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection.topHeightM.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0) + 48);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection.clearTopHeightM()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0) + 48);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0);
  v3 = a1 + v2[5];
  result = UnknownStorage.init()();
  v5 = a1 + v2[6];
  *v5 = 0;
  v5[8] = 1;
  v6 = a1 + v2[7];
  *v6 = 0;
  v6[8] = 1;
  *(a1 + v2[8]) = 2;
  v7 = a1 + v2[9];
  *v7 = 0;
  v7[8] = 1;
  v8 = a1 + v2[10];
  *v8 = 0;
  v8[8] = 1;
  v9 = a1 + v2[11];
  *v9 = 0;
  v9[8] = 1;
  v10 = a1 + v2[12];
  *v10 = 0;
  v10[8] = 1;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureBuilding.buildingHash.getter()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding(0) + 24));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureBuilding.buildingHash.setter(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GEOMapFeatureBuilding.buildingHash.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding(0) + 24);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_GEOMapFeatureBuilding.clearBuildingHash()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureBuilding.buildingID.setter(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GEOMapFeatureBuilding.buildingID.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding(0) + 28);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_GEOMapFeatureBuilding.clearBuildingID()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureBuilding.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding(0);
  v3 = a1 + v2[5];
  result = UnknownStorage.init()();
  v5 = a1 + v2[6];
  *v5 = 0;
  v5[8] = 1;
  v6 = a1 + v2[7];
  *v6 = 0;
  v6[8] = 1;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_WorkoutUpdate.startTime.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  v9 = a1(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v2 + *(v9 + 28), v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v11 = *(*(v10 - 1) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, a2, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  UnknownStorage.init()();
  v12 = a2 + v10[5];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a2 + v10[6];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a2 + v10[7];
  *v14 = 0;
  *(v14 + 8) = 1;
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapBuildingData.receiptTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData(0) + 28);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_PrivateData_GEOMapBuildingData.receiptTime.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
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
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return CLP_LogEntry_PrivateData_GEOMapBuildingData.receiptTime.modify;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapBuildingData.queryLocationCoordinate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 32), v6, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
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
    return outlined destroy of Any?(v6, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapBuildingData.queryLocationCoordinate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData(0) + 32);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_PrivateData_GEOMapBuildingData.queryLocationCoordinate.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMR);
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
      outlined destroy of Any?(v8, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
  }

  return CLP_LogEntry_PrivateData_GEOMapBuildingData.queryLocationCoordinate.modify;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapBuildingData.init()@<X0>(char *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 1) = v2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData(0);
  v4 = &a1[v3[6]];
  UnknownStorage.init()();
  v5 = v3[7];
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = v3[8];
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a1[v7], 1, 1, v8);
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.branchType.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0) + 24));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.branchType.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.branchType.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.branchNumber.setter(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.branchNumber.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0) + 28);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.clearBranchNumber()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.branchWidthMm.setter(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.branchWidthMm.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0) + 32);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.clearBranchWidthMm()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.branchLengthMm.setter(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.branchLengthMm.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0) + 36);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.clearBranchLengthMm()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.BranchType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.BranchType and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.BranchType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0);
  v3 = a1 + v2[5];
  result = UnknownStorage.init()();
  *(a1 + v2[6]) = 4;
  v5 = a1 + v2[7];
  *v5 = 0;
  v5[4] = 1;
  v6 = a1 + v2[8];
  *v6 = 0;
  v6[4] = 1;
  v7 = a1 + v2[9];
  *v7 = 0;
  v7[4] = 1;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox.northLatitudeDeg.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox.northLatitudeDeg.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0) + 24);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox.clearNorthLatitudeDeg()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox.westLongitudeDeg.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox.westLongitudeDeg.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0) + 28);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox.clearWestLongitudeDeg()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox.southLatitudeDeg.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox.southLatitudeDeg.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0) + 32);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox.clearSouthLatitudeDeg()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox.eastLongitudeDeg.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox.eastLongitudeDeg.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0) + 36);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox.clearEastLongitudeDeg()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0) + 36);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0);
  v3 = a1 + v2[5];
  result = UnknownStorage.init()();
  v5 = a1 + v2[6];
  *v5 = 0;
  v5[8] = 1;
  v6 = a1 + v2[7];
  *v6 = 0;
  v6[8] = 1;
  v7 = a1 + v2[8];
  *v7 = 0;
  v7[8] = 1;
  v8 = a1 + v2[9];
  *v8 = 0;
  v8[8] = 1;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.boundingBox.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMd, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 24), v6, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMd, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);
  }

  *a1 = MEMORY[0x277D84F90];
  v10 = a1 + v8[5];
  UnknownStorage.init()();
  v11 = a1 + v8[6];
  *v11 = 0;
  v11[8] = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  v12[8] = 1;
  v13 = a1 + v8[8];
  *v13 = 0;
  v13[8] = 1;
  v14 = a1 + v8[9];
  *v14 = 0;
  v14[8] = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMd, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.boundingBox.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMd, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.boundingBox.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMd, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMd, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    v17 = v14 + v9[5];
    UnknownStorage.init()();
    v18 = v14 + v9[6];
    *v18 = 0;
    v18[8] = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    v19[8] = 1;
    v20 = v14 + v9[8];
    *v20 = 0;
    v20[8] = 1;
    v21 = v14 + v9[9];
    *v21 = 0;
    v21[8] = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMd, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);
  }

  return CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.boundingBox.modify;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureBuilding.buildingID.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.treeID.setter(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.treeID.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0) + 28);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.clearTreeID()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.treeType.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0) + 32));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.treeType.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.treeType.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0) + 32);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.reliabilityScoreDeprecated.setter(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.reliabilityScoreDeprecated.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0) + 36);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.clearReliabilityScoreDeprecated()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.treeFeatures.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMd, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 40), v6, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMd, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);
  }

  UnknownStorage.init()();
  *(a1 + *(v8 + 20)) = 2;
  *(a1 + *(v8 + 24)) = 2;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMd, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.treeFeatures.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0) + 40);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMd, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.treeFeatures.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMd, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0) + 40);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMd, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + *(v9 + 20)) = 2;
    *(v14 + *(v9 + 24)) = 2;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMd, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);
  }

  return CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.treeFeatures.modify;
}

BOOL CLP_LogEntry_PrivateData_DeviceMotionSample.hasStatus.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + *(v13 + 40), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  outlined destroy of Any?(v12, a1, a2);
  return v15;
}

uint64_t CLP_LogEntry_PrivateData_DeviceMotionSample.clearStatus()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 40);
  outlined destroy of Any?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.branchCount.getter()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0) + 44));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.branchCount.setter(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.branchCount.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0) + 44);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.clearBranchCount()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0) + 44);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures.hasBranchWidths_p.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures.hasBranchWidths_p.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures.hasBranchLengths_p.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures.hasBranchLengths_p.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.init()@<X0>(char *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
  v3 = &a1[v2[5]];
  UnknownStorage.init()();
  v4 = v2[6];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0);
  (*(*(v5 - 8) + 56))(&a1[v4], 1, 1, v5);
  v6 = &a1[v2[7]];
  *v6 = 0;
  v6[8] = 1;
  a1[v2[8]] = 4;
  v7 = &a1[v2[9]];
  *v7 = 0;
  v7[4] = 1;
  v8 = v2[10];
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0);
  result = (*(*(v9 - 8) + 56))(&a1[v8], 1, 1, v9);
  v11 = &a1[v2[11]];
  *v11 = 0;
  v11[8] = 1;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData.receiptTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData.receiptTime.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
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
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return CLP_LogEntry_PrivateData_AccelSample.applicableTime.modify;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData.containsBranchGeometry.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData.containsBranchGeometry.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData.init()@<X0>(char *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData(0);
  v3 = &a1[v2[5]];
  UnknownStorage.init()();
  v4 = v2[6];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v5 - 8) + 56))(&a1[v4], 1, 1, v5);
  a1[v2[7]] = 2;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_WatchOrientation.wristOrientation.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0) + 20));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_WatchOrientation.wristOrientation.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_WatchOrientation.wristOrientation.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_WatchOrientation.crownOrientation.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0) + 24));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_WatchOrientation.crownOrientation.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_WatchOrientation.crownOrientation.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType and conformance CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t (*CLP_LogEntry_PrivateData_WristState.applicableTime.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_WristState(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
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
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return CLP_LogEntry_PrivateData_AccelSample.applicableTime.modify;
}

uint64_t CLP_LogEntry_PrivateData_WristState.onWrist.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WristState(0) + 24));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_WristState.onWrist.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_WristState.onWrist.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WristState(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_WristState.onWristSensor.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WristState(0) + 28));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_WristState.onWristSensor.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_WristState.onWristSensor.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WristState(0) + 28);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_WristState.onWristConfidence.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WristState(0) + 32));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_WristState.onWristConfidence.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_WristState.onWristConfidence.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WristState(0) + 32);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_WristState.isOnCharger.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_WristState.isOnCharger.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WristState(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_WristState.isForcedOnWristEnabled.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_WristState.isForcedOnWristEnabled.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WristState(0) + 40);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_WristState.isWristDetectionEnabled.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_WristState.isWristDetectionEnabled.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WristState(0) + 44);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_WristState.WristStateType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WristState.WristStateType and conformance CLP_LogEntry_PrivateData_WristState.WristStateType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType and conformance CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_WristState.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
  v3 = v2[5];
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  *(a1 + v2[6]) = 4;
  *(a1 + v2[7]) = 4;
  *(a1 + v2[8]) = 4;
  *(a1 + v2[9]) = 2;
  *(a1 + v2[10]) = 2;
  *(a1 + v2[11]) = 2;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_AccelSample.applicableTime.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  v9 = a1(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v2 + *(v9 + 20), v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v11 = *(*(v10 - 1) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, a2, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  UnknownStorage.init()();
  v12 = a2 + v10[5];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a2 + v10[6];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a2 + v10[7];
  *v14 = 0;
  *(v14 + 8) = 1;
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_AccelSample.applicableTime.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  outlined destroy of Any?(v2 + v4, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v2 + v4, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

uint64_t (*CLP_LogEntry_PrivateData_WatchState.eventReceiptTime.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
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
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return CLP_LogEntry_PrivateData_AccelSample.applicableTime.modify;
}

uint64_t CLP_LogEntry_PrivateData_WatchState.client.setter(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_WatchState.client.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0) + 24);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_WatchState.clearClient()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_WatchState.watchOrientation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 28), v6, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation);
  }

  UnknownStorage.init()();
  *(a1 + *(v8 + 20)) = 4;
  *(a1 + *(v8 + 24)) = 4;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_WatchState.watchOrientation.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0) + 28);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_PrivateData_WatchState.watchOrientation.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + *(v9 + 20)) = 4;
    *(v14 + *(v9 + 24)) = 4;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation);
  }

  return CLP_LogEntry_PrivateData_WatchState.watchOrientation.modify;
}

uint64_t CLP_LogEntry_PrivateData_WatchState.wristState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 32), v6, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
  }

  UnknownStorage.init()();
  v10 = v8[5];
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  *(a1 + v8[6]) = 4;
  *(a1 + v8[7]) = 4;
  *(a1 + v8[8]) = 4;
  *(a1 + v8[9]) = 2;
  *(a1 + v8[10]) = 2;
  *(a1 + v8[11]) = 2;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_WatchState.wristState.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0) + 32);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_PrivateData_WatchState.wristState.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v9[5];
    v18 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    *(v14 + v9[6]) = 4;
    *(v14 + v9[7]) = 4;
    *(v14 + v9[8]) = 4;
    *(v14 + v9[9]) = 2;
    *(v14 + v9[10]) = 2;
    *(v14 + v9[11]) = 2;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
  }

  return CLP_LogEntry_PrivateData_WatchState.wristState.modify;
}

void CLP_LogEntry_PrivateData_AccelSample.applicableTime.modify(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
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
    outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(v12, v11, a6);
    outlined destroy of Any?(v15 + v10, a3, a4);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v11, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v12, a6);
  }

  else
  {
    outlined destroy of Any?(v15 + v10, a3, a4);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v12, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
  }

  free(v12);
  free(v11);
  free(v17);

  free(v9);
}

uint64_t CLP_LogEntry_PrivateData_WatchState.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0);
  v3 = v2[5];
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = a1 + v2[6];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = v2[7];
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0);
  (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  v8 = v2[8];
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a1 + v8, 1, 1, v9);
}

uint64_t CLP_LogEntry_PrivateData_PlaceInference.userSpecificPlaceType.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0) + 20));
  if (v1 == 5)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_PlaceInference.userSpecificPlaceType.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_PlaceInference.userSpecificPlaceType.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_PlaceInference.placeType.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0) + 24));
  if (v1 == 3)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_PlaceInference.placeType.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_PlaceInference.placeType.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 3)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_PlaceInference.preferredName.getter()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0) + 28));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t CLP_LogEntry_PrivateData_PlaceInference.preferredName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_PlaceInference.preferredName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return CLP_LogEntry_PrivateData_PlaceInference.preferredName.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_PlaceInference.clearPreferredName()()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0) + 28));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t CLP_LogEntry_PrivateData_PlaceInference.loiUuidIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0) + 32));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t CLP_LogEntry_PrivateData_PlaceInference.loiUuidIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_PlaceInference.loiUuidIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return CLP_LogEntry_PrivateData_XtraFileAvailable.where.modify;
}

void CLP_LogEntry_PrivateData_XtraFileAvailable.where.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {
    v8 = (v7 + v5);
    v9 = (*a1)[1];

    *v8 = v4;
    v8[1] = v3;
    v10 = v2[1];
  }

  else
  {
    v11 = (*a1)[3];

    v12 = (v7 + v5);
    *v12 = v4;
    v12[1] = v3;
  }

  free(v2);
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_PlaceInference.clearLoiUuidIdentifier()()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0) + 32));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType and conformance CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType and conformance CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

int *CLP_LogEntry_PrivateData_PlaceInference.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
  *(a1 + result[5]) = 5;
  *(a1 + result[6]) = 3;
  v3 = (a1 + result[7]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + result[8]);
  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_RoutineVisit.receiptTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__receiptTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v17, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_RoutineVisit.receiptTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__receiptTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
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
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return CLP_LogEntry_PrivateData_RoutineVisit.receiptTime.modify;
}

void CLP_LogEntry_PrivateData_RoutineVisit.receiptTime.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__receiptTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__receiptTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_RoutineVisit.hasReceiptTime.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__receiptTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_RoutineVisit.clearReceiptTime()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__receiptTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v15, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_RoutineVisit.arrivalTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__arrivalTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v17, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_RoutineVisit.arrivalTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__arrivalTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
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
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return CLP_LogEntry_PrivateData_RoutineVisit.arrivalTime.modify;
}

void CLP_LogEntry_PrivateData_RoutineVisit.arrivalTime.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__arrivalTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__arrivalTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_RoutineVisit.hasArrivalTime.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__arrivalTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_RoutineVisit.clearArrivalTime()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__arrivalTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v15, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_RoutineVisit.departureTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__departureTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v17, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_RoutineVisit.departureTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__departureTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
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
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return CLP_LogEntry_PrivateData_RoutineVisit.departureTime.modify;
}

void CLP_LogEntry_PrivateData_RoutineVisit.departureTime.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__departureTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__departureTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_RoutineVisit.hasDepartureTime.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__departureTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_RoutineVisit.clearDepartureTime()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__departureTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v15, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_RoutineVisit.detectionTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__detectionTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v17, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_RoutineVisit.detectionTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__detectionTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
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
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return CLP_LogEntry_PrivateData_RoutineVisit.detectionTime.modify;
}

void CLP_LogEntry_PrivateData_RoutineVisit.detectionTime.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__detectionTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__detectionTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_RoutineVisit.hasDetectionTime.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__detectionTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_RoutineVisit.clearDetectionTime()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__detectionTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v15, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_RoutineVisit.placeInference.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);
  }

  UnknownStorage.init()();
  *(a1 + v9[5]) = 5;
  *(a1 + v9[6]) = 3;
  v11 = (a1 + v9[7]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v9[8]);
  *v12 = 0;
  v12[1] = 0;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_RoutineVisit.placeInference.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v17, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_RoutineVisit.placeInference.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + v9[5]) = 5;
    *(v14 + v9[6]) = 3;
    v19 = (v14 + v9[7]);
    *v19 = 0;
    v19[1] = 0;
    v20 = (v14 + v9[8]);
    *v20 = 0;
    v20[1] = 0;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);
  }

  return CLP_LogEntry_PrivateData_RoutineVisit.placeInference.modify;
}

void CLP_LogEntry_PrivateData_RoutineVisit.placeInference.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v14, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_RoutineVisit.hasPlaceInference.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_RoutineVisit.clearPlaceInference()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v15, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocation.coordinate.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = *(v3 + *(a1(0) + 20));
  v12 = *a2;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v11 + v12, v10, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v13 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v14 = *(*(v13 - 8) + 48);
  if (v14(v10, 1, v13) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v10, a3, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  }

  UnknownStorage.init()();
  v15 = a3 + *(v13 + 20);
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = a3 + *(v13 + 24);
  *v16 = 0;
  *(v16 + 8) = 1;
  result = (v14)(v10, 1, v13);
  if (result != 1)
  {
    return outlined destroy of Any?(v10, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_RoutineVisit.coordinate.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v17, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_RoutineVisit.coordinate.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + *(v9 + 20);
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v14 + *(v9 + 24);
    *v20 = 0;
    *(v20 + 8) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  }

  return CLP_LogEntry_PrivateData_RoutineVisit.coordinate.modify;
}

void CLP_LogEntry_PrivateData_RoutineVisit.coordinate.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v14, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_RoutineVisit.hasCoordinate.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_RoutineVisit.clearCoordinate()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v15, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_RoutineVisit.horizontalAccuracyM.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalAccuracyM;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return CLP_LogEntry_PrivateData_RoutineVisit.horizontalAccuracyM.modify;
}

uint64_t CLP_LogEntry_PrivateData_OutdoorUpdate.startTimeCfatSec.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_OutdoorUpdate.startTimeCfatSec.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 20);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_OutdoorUpdate.clearStartTimeCfatSec()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_OutdoorUpdate.mctTimestampSec.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_OutdoorUpdate.mctTimestampSec.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 24);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_OutdoorUpdate.clearMctTimestampSec()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_OutdoorUpdate.type.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 28));
  if (v1 == 3)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_OutdoorUpdate.type.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_OutdoorUpdate.type.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 28);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 3)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_OutdoorUpdate.confidence.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 32));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_OutdoorUpdate.confidence.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_OutdoorUpdate.confidence.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 32);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_OutdoorUpdate.estimatedStateProbabilityOutdoor.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_OutdoorUpdate.estimatedStateProbabilityOutdoor.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 36);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_OutdoorUpdate.clearEstimatedStateProbabilityOutdoor()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 36);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_OutdoorUpdate.daylightConfidence.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 40));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_OutdoorUpdate.daylightConfidence.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_OutdoorUpdate.daylightConfidence.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 40);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_OutdoorUpdate.isAstronomicalDaytime.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_OutdoorUpdate.isAstronomicalDaytime.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 44);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_OutdoorUpdate.currentLux.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_OutdoorUpdate.currentLux.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 48);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_OutdoorUpdate.clearCurrentLux()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 48);
  *v1 = 0;
  *(v1 + 4) = 1;
}

int *CLP_LogEntry_PrivateData_OutdoorUpdate.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 8) = 1;
  *(a1 + result[7]) = 3;
  *(a1 + result[8]) = 4;
  v5 = a1 + result[9];
  *v5 = 0;
  *(v5 + 8) = 1;
  *(a1 + result[10]) = 4;
  *(a1 + result[11]) = 2;
  v6 = a1 + result[12];
  *v6 = 0;
  *(v6 + 4) = 1;
  return result;
}

double CLP_LogEntry_PrivateData_DaemonLocationPrivate.odometer.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  result = *(v2 + 16);
  if (*(v2 + 24))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.cfAbsoluteTimestampSec.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v8 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 16) = a1;
  *(v7 + 24) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_InertialOdometrySample.cfAbsoluteTimestampSec.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (*(v6 + 24))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return CLP_LogEntry_PrivateData_InertialOdometrySample.cfAbsoluteTimestampSec.modify;
}

void CLP_LogEntry_PrivateData_InertialOdometrySample.cfAbsoluteTimestampSec.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 16) = v2;
  *(v7 + 24) = 0;

  free(v1);
}

BOOL CLP_LogEntry_PrivateData_DaemonLocationPrivate.hasOdometer.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 24) & 1) == 0;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_InertialOdometrySample.clearCfAbsoluteTimestampSec()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v6 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 16) = 0;
  *(v5 + 24) = 1;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.machContinuousTimestampSec.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v8 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 32) = a1;
  *(v7 + 40) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_InertialOdometrySample.machContinuousTimestampSec.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 32);
  if (*(v6 + 40))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return CLP_LogEntry_PrivateData_InertialOdometrySample.machContinuousTimestampSec.modify;
}

void CLP_LogEntry_PrivateData_InertialOdometrySample.machContinuousTimestampSec.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 32) = v2;
  *(v7 + 40) = 0;

  free(v1);
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_InertialOdometrySample.clearMachContinuousTimestampSec()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v6 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 32) = 0;
  *(v5 + 40) = 1;
}

float CLP_LogEntry_PrivateData_InertialOdometrySample.sampleIntervalSec.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  result = *(v1 + 44);
  if (*(v1 + 48))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.sampleIntervalSec.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v8 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 44) = a1;
  *(v7 + 48) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_InertialOdometrySample.sampleIntervalSec.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 44);
  if (*(v6 + 48))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_InertialOdometrySample.sampleIntervalSec.modify;
}

void CLP_LogEntry_PrivateData_InertialOdometrySample.sampleIntervalSec.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 44) = v2;
  *(v7 + 48) = 0;

  free(v1);
}

BOOL CLP_LogEntry_PrivateData_InertialOdometrySample.hasSampleIntervalSec.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  return (*(v1 + 48) & 1) == 0;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_InertialOdometrySample.clearSampleIntervalSec()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v6 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 44) = 0;
  *(v5 + 48) = 1;
}

float CLP_LogEntry_PrivateData_InertialOdometrySample.dPosXM.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  result = *(v1 + 52);
  if (*(v1 + 56))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.dPosXM.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v8 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 52) = a1;
  *(v7 + 56) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_InertialOdometrySample.dPosXM.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 52);
  if (*(v6 + 56))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_InertialOdometrySample.dPosXM.modify;
}

void CLP_LogEntry_PrivateData_InertialOdometrySample.dPosXM.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 52) = v2;
  *(v7 + 56) = 0;

  free(v1);
}

BOOL CLP_LogEntry_PrivateData_InertialOdometrySample.hasDPosXM.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  return (*(v1 + 56) & 1) == 0;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_InertialOdometrySample.clearDPosXM()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v6 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 52) = 0;
  *(v5 + 56) = 1;
}

float CLP_LogEntry_PrivateData_InertialOdometrySample.dPosYM.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  result = *(v1 + 60);
  if (*(v1 + 64))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.dPosYM.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v8 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 60) = a1;
  *(v7 + 64) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_InertialOdometrySample.dPosYM.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 60);
  if (*(v6 + 64))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_InertialOdometrySample.dPosYM.modify;
}

void CLP_LogEntry_PrivateData_InertialOdometrySample.dPosYM.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 60) = v2;
  *(v7 + 64) = 0;

  free(v1);
}

BOOL CLP_LogEntry_PrivateData_InertialOdometrySample.hasDPosYM.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  return (*(v1 + 64) & 1) == 0;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_InertialOdometrySample.clearDPosYM()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v6 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 60) = 0;
  *(v5 + 64) = 1;
}

float CLP_LogEntry_PrivateData_InertialOdometrySample.dPosZM.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  result = *(v1 + 68);
  if (*(v1 + 72))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.dPosZM.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v8 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 68) = a1;
  *(v7 + 72) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_InertialOdometrySample.dPosZM.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 68);
  if (*(v6 + 72))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_InertialOdometrySample.dPosZM.modify;
}

void CLP_LogEntry_PrivateData_InertialOdometrySample.dPosZM.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 68) = v2;
  *(v7 + 72) = 0;

  free(v1);
}

BOOL CLP_LogEntry_PrivateData_InertialOdometrySample.hasDPosZM.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  return (*(v1 + 72) & 1) == 0;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_InertialOdometrySample.clearDPosZM()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v6 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 68) = 0;
  *(v5 + 72) = 1;
}

float CLP_LogEntry_PrivateData_InertialOdometrySample.dVelXMps.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  result = *(v1 + 76);
  if (*(v1 + 80))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.dVelXMps.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v8 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 76) = a1;
  *(v7 + 80) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_InertialOdometrySample.dVelXMps.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 76);
  if (*(v6 + 80))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_InertialOdometrySample.dVelXMps.modify;
}

void CLP_LogEntry_PrivateData_InertialOdometrySample.dVelXMps.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 76) = v2;
  *(v7 + 80) = 0;

  free(v1);
}

BOOL CLP_LogEntry_PrivateData_InertialOdometrySample.hasDVelXMps.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  return (*(v1 + 80) & 1) == 0;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_InertialOdometrySample.clearDVelXMps()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v6 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 76) = 0;
  *(v5 + 80) = 1;
}

float CLP_LogEntry_PrivateData_InertialOdometrySample.dVelYMps.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  result = *(v1 + 84);
  if (*(v1 + 88))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.dVelYMps.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v8 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 84) = a1;
  *(v7 + 88) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_InertialOdometrySample.dVelYMps.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 84);
  if (*(v6 + 88))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_InertialOdometrySample.dVelYMps.modify;
}

void CLP_LogEntry_PrivateData_InertialOdometrySample.dVelYMps.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 84) = v2;
  *(v7 + 88) = 0;

  free(v1);
}

BOOL CLP_LogEntry_PrivateData_InertialOdometrySample.hasDVelYMps.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  return (*(v1 + 88) & 1) == 0;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_InertialOdometrySample.clearDVelYMps()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v6 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 84) = 0;
  *(v5 + 88) = 1;
}

float CLP_LogEntry_PrivateData_DaemonLocationPrivate.horzUncSemiMaj.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  result = *(v2 + 92);
  if (*(v2 + 96))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.dVelZMps.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v8 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 92) = a1;
  *(v7 + 96) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_InertialOdometrySample.dVelZMps.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 92);
  if (*(v6 + 96))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_InertialOdometrySample.dVelZMps.modify;
}

void CLP_LogEntry_PrivateData_InertialOdometrySample.dVelZMps.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 92) = v2;
  *(v7 + 96) = 0;

  free(v1);
}

BOOL CLP_LogEntry_PrivateData_DaemonLocationPrivate.hasHorzUncSemiMaj.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 96) & 1) == 0;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_InertialOdometrySample.clearDVelZMps()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v6 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 92) = 0;
  *(v5 + 96) = 1;
}

float CLP_LogEntry_PrivateData_DaemonLocationPrivate.horzUncSemiMin.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  result = *(v2 + 100);
  if (*(v2 + 104))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.qX.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v8 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 100) = a1;
  *(v7 + 104) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_InertialOdometrySample.qX.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 100);
  if (*(v6 + 104))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_InertialOdometrySample.qX.modify;
}

void CLP_LogEntry_PrivateData_InertialOdometrySample.qX.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 100) = v2;
  *(v7 + 104) = 0;

  free(v1);
}

BOOL CLP_LogEntry_PrivateData_DaemonLocationPrivate.hasHorzUncSemiMin.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 104) & 1) == 0;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_InertialOdometrySample.clearQX()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v6 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 100) = 0;
  *(v5 + 104) = 1;
}

float CLP_LogEntry_PrivateData_DaemonLocationPrivate.horzUncSemiMajAz.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  result = *(v2 + 108);
  if (*(v2 + 112))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.qY.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v8 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 108) = a1;
  *(v7 + 112) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_InertialOdometrySample.qY.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 108);
  if (*(v6 + 112))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_InertialOdometrySample.qY.modify;
}

void CLP_LogEntry_PrivateData_InertialOdometrySample.qY.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 108) = v2;
  *(v7 + 112) = 0;

  free(v1);
}

BOOL CLP_LogEntry_PrivateData_DaemonLocationPrivate.hasHorzUncSemiMajAz.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 112) & 1) == 0;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_InertialOdometrySample.clearQY()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v6 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 108) = 0;
  *(v5 + 112) = 1;
}

float CLP_LogEntry_PrivateData_InertialOdometrySample.qZ.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  result = *(v1 + 116);
  if (*(v1 + 120))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.qZ.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v8 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 116) = a1;
  *(v7 + 120) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_InertialOdometrySample.qZ.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 116);
  if (*(v6 + 120))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_InertialOdometrySample.qZ.modify;
}

void CLP_LogEntry_PrivateData_InertialOdometrySample.qZ.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 116) = v2;
  *(v7 + 120) = 0;

  free(v1);
}

BOOL CLP_LogEntry_PrivateData_InertialOdometrySample.hasQZ.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  return (*(v1 + 120) & 1) == 0;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_InertialOdometrySample.clearQZ()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v6 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 116) = 0;
  *(v5 + 120) = 1;
}

float CLP_LogEntry_PrivateData_InertialOdometrySample.qW.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  result = *(v1 + 124);
  if (*(v1 + 128))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.qW.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v8 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 124) = a1;
  *(v7 + 128) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_InertialOdometrySample.qW.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 124);
  if (*(v6 + 128))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_InertialOdometrySample.qW.modify;
}

void CLP_LogEntry_PrivateData_InertialOdometrySample.qW.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 124) = v2;
  *(v7 + 128) = 0;

  free(v1);
}

BOOL CLP_LogEntry_PrivateData_InertialOdometrySample.hasQW.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  return (*(v1 + 128) & 1) == 0;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_InertialOdometrySample.clearQW()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v6 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 124) = 0;
  *(v5 + 128) = 1;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.referenceFrame.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  if (*(v1 + 129) == 3)
  {
    return 0;
  }

  else
  {
    return *(v1 + 129);
  }
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.referenceFrame.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v8 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 129) = a1;
  return result;
}

void (*CLP_LogEntry_PrivateData_InertialOdometrySample.referenceFrame.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 129);
  if (v7 == 3)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return CLP_LogEntry_PrivateData_InertialOdometrySample.referenceFrame.modify;
}

void CLP_LogEntry_PrivateData_InertialOdometrySample.referenceFrame.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 84);
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 129) = v2;

  free(v1);
}

BOOL CLP_LogEntry_PrivateData_InertialOdometrySample.hasReferenceFrame.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  return *(v1 + 129) != 3;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_InertialOdometrySample.clearReferenceFrame()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v6 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 129) = 3;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.isDeltaPositionValidDeprecated.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  return *(v1 + 130) & 1;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.isDeltaPositionValidDeprecated.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v8 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 130) = a1 & 1;
  return result;
}

void (*CLP_LogEntry_PrivateData_InertialOdometrySample.isDeltaPositionValidDeprecated.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 130) & 1;
  return CLP_LogEntry_PrivateData_InertialOdometrySample.isDeltaPositionValidDeprecated.modify;
}

void CLP_LogEntry_PrivateData_InertialOdometrySample.isDeltaPositionValidDeprecated.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 130) = v4;

  free(v1);
}

BOOL CLP_LogEntry_PrivateData_InertialOdometrySample.hasIsDeltaPositionValidDeprecated.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  return *(v1 + 130) != 2;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_InertialOdometrySample.clearIsDeltaPositionValidDeprecated()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v6 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 130) = 2;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.isDeltaVelocityValidDeprecated.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  return *(v1 + 131) & 1;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.isDeltaVelocityValidDeprecated.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v8 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 131) = a1 & 1;
  return result;
}

void (*CLP_LogEntry_PrivateData_InertialOdometrySample.isDeltaVelocityValidDeprecated.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 131) & 1;
  return CLP_LogEntry_PrivateData_InertialOdometrySample.isDeltaVelocityValidDeprecated.modify;
}

void CLP_LogEntry_PrivateData_InertialOdometrySample.isDeltaVelocityValidDeprecated.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 131) = v4;

  free(v1);
}

BOOL CLP_LogEntry_PrivateData_InertialOdometrySample.hasIsDeltaVelocityValidDeprecated.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  return *(v1 + 131) != 2;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_InertialOdometrySample.clearIsDeltaVelocityValidDeprecated()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v6 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 131) = 2;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.isAttitudeValidDeprecated.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  return *(v1 + 132) & 1;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.isAttitudeValidDeprecated.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v8 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 132) = a1 & 1;
  return result;
}

void (*CLP_LogEntry_PrivateData_InertialOdometrySample.isAttitudeValidDeprecated.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 132) & 1;
  return CLP_LogEntry_PrivateData_InertialOdometrySample.isAttitudeValidDeprecated.modify;
}

void CLP_LogEntry_PrivateData_InertialOdometrySample.isAttitudeValidDeprecated.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 132) = v4;

  free(v1);
}

BOOL CLP_LogEntry_PrivateData_InertialOdometrySample.hasIsAttitudeValidDeprecated.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  return *(v1 + 132) != 2;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_InertialOdometrySample.clearIsAttitudeValidDeprecated()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v6 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 132) = 2;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.staticIndicator.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  if (*(v1 + 133) == 4)
  {
    return 0;
  }

  else
  {
    return *(v1 + 133);
  }
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.staticIndicator.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v8 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 133) = a1;
  return result;
}

void (*CLP_LogEntry_PrivateData_InertialOdometrySample.staticIndicator.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 133);
  if (v7 == 4)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return CLP_LogEntry_PrivateData_InertialOdometrySample.staticIndicator.modify;
}

void CLP_LogEntry_PrivateData_InertialOdometrySample.staticIndicator.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 84);
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 133) = v2;

  free(v1);
}

BOOL CLP_LogEntry_PrivateData_InertialOdometrySample.hasStaticIndicator.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  return *(v1 + 133) != 4;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_InertialOdometrySample.clearStaticIndicator()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v6 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 133) = 4;
}

float CLP_LogEntry_PrivateData_InertialOdometrySample.rotationToTrueNorthFromMagnetometerRad.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  result = *(v1 + 136);
  if (*(v1 + 140))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.rotationToTrueNorthFromMagnetometerRad.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v8 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 136) = a1;
  *(v7 + 140) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_InertialOdometrySample.rotationToTrueNorthFromMagnetometerRad.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 136);
  if (*(v6 + 140))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_InertialOdometrySample.rotationToTrueNorthFromMagnetometerRad.modify;
}

void CLP_LogEntry_PrivateData_InertialOdometrySample.rotationToTrueNorthFromMagnetometerRad.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 136) = v2;
  *(v7 + 140) = 0;

  free(v1);
}

BOOL CLP_LogEntry_PrivateData_InertialOdometrySample.hasRotationToTrueNorthFromMagnetometerRad.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  return (*(v1 + 140) & 1) == 0;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_InertialOdometrySample.clearRotationToTrueNorthFromMagnetometerRad()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v6 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 136) = 0;
  *(v5 + 140) = 1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_InertialOdometrySample.ReferenceFrame(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_InertialOdometrySample.ReferenceFrame and conformance CLP_LogEntry_PrivateData_InertialOdometrySample.ReferenceFrame();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_InertialOdometrySample.StaticIndicator(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_InertialOdometrySample.StaticIndicator and conformance CLP_LogEntry_PrivateData_InertialOdometrySample.StaticIndicator();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_TimeStamp(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_TimeStamp(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_TimeStamp(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_AccelSample(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccelSample and conformance CLP_LogEntry_PrivateData_AccelSample, type metadata accessor for CLP_LogEntry_PrivateData_AccelSample);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_AccelSample(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccelSample and conformance CLP_LogEntry_PrivateData_AccelSample, type metadata accessor for CLP_LogEntry_PrivateData_AccelSample);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_AccelSample(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccelSample and conformance CLP_LogEntry_PrivateData_AccelSample, type metadata accessor for CLP_LogEntry_PrivateData_AccelSample);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_Accel.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Accel(0) + 24);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_AccelSample(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccelSample and conformance CLP_LogEntry_PrivateData_AccelSample, type metadata accessor for CLP_LogEntry_PrivateData_AccelSample);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_Accel.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in CLP_LogEntry_PrivateData_Accel.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_AccelSample(0);
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccelSample and conformance CLP_LogEntry_PrivateData_AccelSample, type metadata accessor for CLP_LogEntry_PrivateData_AccelSample);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v8 = v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_Accel(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CLP_LogEntry_PrivateData_Accel.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_Accel(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 24), v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_Accel(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Accel and conformance CLP_LogEntry_PrivateData_Accel, type metadata accessor for CLP_LogEntry_PrivateData_Accel);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_Accel(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Accel and conformance CLP_LogEntry_PrivateData_Accel, type metadata accessor for CLP_LogEntry_PrivateData_Accel);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_Accel(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Accel and conformance CLP_LogEntry_PrivateData_Accel, type metadata accessor for CLP_LogEntry_PrivateData_Accel);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_AccelSample.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  result = closure #1 in CLP_LogEntry_PrivateData_AccelSample.traverse<A>(visitor:)(v5, a1, a2, a3, a4);
  if (!v6)
  {
    v9 = a5(0);
    v10 = v5 + v9[6];
    if ((*(v10 + 4) & 1) == 0)
    {
      v11 = *v10;
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    }

    v12 = v5 + v9[7];
    if ((*(v12 + 4) & 1) == 0)
    {
      v13 = *v12;
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    }

    v14 = v5 + v9[8];
    if ((*(v14 + 4) & 1) == 0)
    {
      v15 = *v14;
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_AccelSample@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = a2 + a1[6];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + a1[8];
  *v10 = 0;
  *(v10 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GyroSample(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GyroSample and conformance CLP_LogEntry_PrivateData_GyroSample, type metadata accessor for CLP_LogEntry_PrivateData_GyroSample);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GyroSample(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GyroSample and conformance CLP_LogEntry_PrivateData_GyroSample, type metadata accessor for CLP_LogEntry_PrivateData_GyroSample);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GyroSample(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GyroSample and conformance CLP_LogEntry_PrivateData_GyroSample, type metadata accessor for CLP_LogEntry_PrivateData_GyroSample);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_Gyro.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Gyro(0) + 24);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_GyroSample(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GyroSample and conformance CLP_LogEntry_PrivateData_GyroSample, type metadata accessor for CLP_LogEntry_PrivateData_GyroSample);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_Gyro.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in CLP_LogEntry_PrivateData_Gyro.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_GyroSample(0);
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GyroSample and conformance CLP_LogEntry_PrivateData_GyroSample, type metadata accessor for CLP_LogEntry_PrivateData_GyroSample);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v8 = v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_Gyro(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CLP_LogEntry_PrivateData_Gyro.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_Gyro(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 24), v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_Gyro(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Gyro and conformance CLP_LogEntry_PrivateData_Gyro, type metadata accessor for CLP_LogEntry_PrivateData_Gyro);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_Gyro(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Gyro and conformance CLP_LogEntry_PrivateData_Gyro, type metadata accessor for CLP_LogEntry_PrivateData_Gyro);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_Gyro(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Gyro and conformance CLP_LogEntry_PrivateData_Gyro, type metadata accessor for CLP_LogEntry_PrivateData_Gyro);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_BaroSample.decodeMessage<A>(decoder:)()
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

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        v3 = v0;
        v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_BaroSample(0) + 24);
LABEL_5:
        v0 = v3;
        dispatch thunk of Decoder.decodeSingularFloatField(value:)();
        goto LABEL_6;
      }

      if (result == 1)
      {
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_BaroSample(0) + 20);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v3 = v0;
    v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_BaroSample(0) + 28);
    goto LABEL_5;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_BaroSample.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in CLP_LogEntry_PrivateData_AccelSample.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_BaroSample);
  if (!v4)
  {
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_BaroSample(0);
    v7 = v3 + *(v6 + 24);
    if ((*(v7 + 4) & 1) == 0)
    {
      v8 = v6;
      v9 = *v7;
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
      v6 = v8;
    }

    v10 = v3 + *(v6 + 28);
    if ((*(v10 + 4) & 1) == 0)
    {
      v11 = *v10;
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_BaroSample@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = a2 + a1[6];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_BaroSample(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BaroSample and conformance CLP_LogEntry_PrivateData_BaroSample, type metadata accessor for CLP_LogEntry_PrivateData_BaroSample);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_BaroSample(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BaroSample and conformance CLP_LogEntry_PrivateData_BaroSample, type metadata accessor for CLP_LogEntry_PrivateData_BaroSample);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_BaroSample(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BaroSample and conformance CLP_LogEntry_PrivateData_BaroSample, type metadata accessor for CLP_LogEntry_PrivateData_BaroSample);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_Baro.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Baro(0) + 24);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_BaroSample(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BaroSample and conformance CLP_LogEntry_PrivateData_BaroSample, type metadata accessor for CLP_LogEntry_PrivateData_BaroSample);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_Baro.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in CLP_LogEntry_PrivateData_Baro.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_BaroSample(0);
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BaroSample and conformance CLP_LogEntry_PrivateData_BaroSample, type metadata accessor for CLP_LogEntry_PrivateData_BaroSample);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v8 = v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_Baro(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CLP_LogEntry_PrivateData_Baro.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_Baro(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 24), v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_Baro(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Baro and conformance CLP_LogEntry_PrivateData_Baro, type metadata accessor for CLP_LogEntry_PrivateData_Baro);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_Baro(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Baro and conformance CLP_LogEntry_PrivateData_Baro, type metadata accessor for CLP_LogEntry_PrivateData_Baro);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_Baro(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Baro and conformance CLP_LogEntry_PrivateData_Baro, type metadata accessor for CLP_LogEntry_PrivateData_Baro);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_ClientLocationCoordinate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientLocationCoordinate and conformance CLP_LogEntry_PrivateData_ClientLocationCoordinate, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_ClientLocationCoordinate(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientLocationCoordinate and conformance CLP_LogEntry_PrivateData_ClientLocationCoordinate, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_ClientLocationCoordinate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientLocationCoordinate and conformance CLP_LogEntry_PrivateData_ClientLocationCoordinate, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocation._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCoordinate, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocation.decodeMessage<A>(decoder:)()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocation._StorageClass.init(copying:)(v6);

    *(v2 + v3) = v10;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v1)
  {
    while ((v12 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType();
          goto LABEL_16;
        case 2:
        case 14:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientLocationCoordinate and conformance CLP_LogEntry_PrivateData_ClientLocationCoordinate, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_17;
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 12:
        case 15:
        case 21:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_17;
        case 11:
        case 16:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_17;
        case 13:
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_LocationType and conformance CLP_LogEntry_PrivateData_LocationType();
          goto LABEL_16;
        case 17:
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType();
          goto LABEL_16;
        case 18:
        case 19:
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType and conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType();
          goto LABEL_16;
        case 20:
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType and conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType();
LABEL_16:
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_17;
        case 22:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
LABEL_17:
          swift_endAccess();
          break;
        default:
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 16) == 4)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  closure #2 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3);
  v11 = v9 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalAccuracy;
  swift_beginAccess();
  if ((*(v11 + 8) & 1) == 0)
  {
    v12 = *v11;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  v13 = v9 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitude;
  swift_beginAccess();
  if ((*(v13 + 8) & 1) == 0)
  {
    v14 = *v13;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  v15 = v9 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalAccuracy;
  swift_beginAccess();
  if ((*(v15 + 8) & 1) == 0)
  {
    v16 = *v15;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  v17 = v9 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speed;
  swift_beginAccess();
  if ((*(v17 + 8) & 1) == 0)
  {
    v18 = *v17;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speedAccuracy);
  closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__course);
  closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAccuracy);
  closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp);
  closure #11 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__confidence, 11, MEMORY[0x277D21848]);
  closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lifespan);
  closure #13 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9);
  closure #14 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourse);
  closure #11 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floor, 16, MEMORY[0x277D21848]);
  closure #17 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__integrity, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType);
  closure #18 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType and conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType);
  closure #18 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawReferenceFrame, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType and conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType);
  closure #20 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalEnvironmentType, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType and conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType);
  closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__ellipsoidalAltitude);
  closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fromSimulationController);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #2 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientLocationCoordinate and conformance CLP_LogEntry_PrivateData_ClientLocationCoordinate, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
}

uint64_t closure #13 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type;
  result = swift_beginAccess();
  if (*(a1 + v2) != 14)
  {
    v4 = *(a1 + v2);
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_LocationType and conformance CLP_LogEntry_PrivateData_LocationType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #14 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCoordinate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientLocationCoordinate and conformance CLP_LogEntry_PrivateData_ClientLocationCoordinate, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
}

uint64_t closure #1 in static CLP_LogEntry_PrivateData_DaemonLocation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v141 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v4 = *(v141 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v141);
  v7 = &v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSg_ADtMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSg_ADtMR);
  v8 = *(*(v140 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v140);
  v11 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v134 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v138 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v139 = &v134 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v134 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v134 - v23;
  swift_beginAccess();
  v25 = *(a1 + 16);
  swift_beginAccess();
  v26 = *(a2 + 16);
  if (v25 == 4)
  {
    if (v26 != 4)
    {
      return 0;
    }
  }

  else if (v26 == 4 || qword_23D1C6D90[v25] != qword_23D1C6D90[v26])
  {
    return 0;
  }

  v136 = v11;
  v137 = v7;
  v142 = a2;
  v27 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v27, v24, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v28 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  swift_beginAccess();
  v29 = *(v140 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v24, v13, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v30 = v142 + v28;
  v31 = v142;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v30, &v13[v29], &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v34 = *(v4 + 48);
  v32 = v4 + 48;
  v33 = v34;
  v35 = v141;
  if (v34(v13, 1, v141) == 1)
  {

    outlined destroy of Any?(v24, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
    if (v33(&v13[v29], 1, v35) == 1)
    {
      v134 = v33;
      v135 = v32;
      outlined destroy of Any?(v13, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
      goto LABEL_15;
    }

LABEL_11:
    outlined destroy of Any?(v13, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSg_ADtMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSg_ADtMR);
    goto LABEL_12;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v13, v22, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  if (v33(&v13[v29], 1, v35) == 1)
  {

    outlined destroy of Any?(v24, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v22, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    goto LABEL_11;
  }

  v134 = v33;
  v135 = v32;
  v37 = &v13[v29];
  v38 = v137;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v37, v137, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);

  v39 = specialized static CLP_LogEntry_PrivateData_GEOLocationCoordinate2D.== infix(_:_:)(v22, v38, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v38, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  outlined destroy of Any?(v24, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v22, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  v31 = v142;
  outlined destroy of Any?(v13, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  if ((v39 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v40 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalAccuracy;
  swift_beginAccess();
  v41 = *v40;
  LOBYTE(v40) = *(v40 + 8);
  v42 = v31 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalAccuracy;
  swift_beginAccess();
  v43 = *(v42 + 8);
  if (v40)
  {
    if ((*(v42 + 8) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((*(v42 + 8) & 1) != 0 || v41 != *v42)
  {
    goto LABEL_12;
  }

  v44 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitude;
  swift_beginAccess();
  v45 = *v44;
  LOBYTE(v44) = *(v44 + 8);
  v46 = v31 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitude;
  swift_beginAccess();
  v47 = *(v46 + 8);
  if (v44)
  {
    if ((*(v46 + 8) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((*(v46 + 8) & 1) != 0 || v45 != *v46)
  {
    goto LABEL_12;
  }

  v48 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalAccuracy;
  swift_beginAccess();
  v49 = *v48;
  LOBYTE(v48) = *(v48 + 8);
  v50 = v31 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalAccuracy;
  swift_beginAccess();
  v51 = *(v50 + 8);
  if (v48)
  {
    if ((*(v50 + 8) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((*(v50 + 8) & 1) != 0 || v49 != *v50)
  {
    goto LABEL_12;
  }

  v52 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speed;
  swift_beginAccess();
  v53 = *v52;
  LOBYTE(v52) = *(v52 + 8);
  v54 = v31 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speed;
  swift_beginAccess();
  v55 = *(v54 + 8);
  if (v52)
  {
    if ((*(v54 + 8) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((*(v54 + 8) & 1) != 0 || v53 != *v54)
  {
    goto LABEL_12;
  }

  v56 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speedAccuracy;
  swift_beginAccess();
  v57 = *v56;
  LOBYTE(v56) = *(v56 + 8);
  v58 = v31 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speedAccuracy;
  swift_beginAccess();
  v59 = *(v58 + 8);
  if (v56)
  {
    if ((*(v58 + 8) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((*(v58 + 8) & 1) != 0 || v57 != *v58)
  {
    goto LABEL_12;
  }

  v60 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__course;
  swift_beginAccess();
  v61 = *v60;
  LOBYTE(v60) = *(v60 + 8);
  v62 = v31 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__course;
  swift_beginAccess();
  v63 = *(v62 + 8);
  if (v60)
  {
    if ((*(v62 + 8) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((*(v62 + 8) & 1) != 0 || v61 != *v62)
  {
    goto LABEL_12;
  }

  v64 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAccuracy;
  swift_beginAccess();
  v65 = *v64;
  LOBYTE(v64) = *(v64 + 8);
  v66 = v31 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAccuracy;
  swift_beginAccess();
  v67 = *(v66 + 8);
  if (v64)
  {
    if ((*(v66 + 8) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((*(v66 + 8) & 1) != 0 || v65 != *v66)
  {
    goto LABEL_12;
  }

  v68 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  v69 = *v68;
  LOBYTE(v68) = *(v68 + 8);
  v70 = v31 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  v71 = *(v70 + 8);
  if (v68)
  {
    if (*(v70 + 8))
    {
      goto LABEL_55;
    }

LABEL_12:

    return 0;
  }

  if ((*(v70 + 8) & 1) != 0 || v69 != *v70)
  {
    goto LABEL_12;
  }

LABEL_55:
  v72 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__confidence;
  swift_beginAccess();
  v73 = *v72;
  LOBYTE(v72) = *(v72 + 4);
  v74 = v31 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__confidence;
  swift_beginAccess();
  v75 = *(v74 + 4);
  if (v72)
  {
    if ((*(v74 + 4) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((*(v74 + 4) & 1) != 0 || v73 != *v74)
  {
    goto LABEL_12;
  }

  v76 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lifespan;
  swift_beginAccess();
  v77 = *v76;
  LOBYTE(v76) = *(v76 + 8);
  v78 = v142 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lifespan;
  swift_beginAccess();
  v79 = *(v78 + 8);
  if (v76)
  {
    if ((*(v78 + 8) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((*(v78 + 8) & 1) != 0 || v77 != *v78)
  {
    goto LABEL_12;
  }

  v80 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type;
  swift_beginAccess();
  v81 = *(a1 + v80);
  v82 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type;
  v83 = v142;
  swift_beginAccess();
  v84 = *(v83 + v82);
  if (v81 == 14)
  {
    if (v84 != 14)
    {
      goto LABEL_12;
    }
  }

  else if (v84 == 14 || v81 != v84)
  {
    goto LABEL_12;
  }

  v85 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCoordinate;
  swift_beginAccess();
  v86 = v139;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v85, v139, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v87 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCoordinate;
  v88 = v142;
  swift_beginAccess();
  v89 = *(v140 + 48);
  v90 = v136;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v86, v136, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v88 + v87, v90 + v89, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  if (v134(v90, 1, v141) == 1)
  {
    outlined destroy of Any?(v139, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
    if (v134(&v136[v89], 1, v141) == 1)
    {
      outlined destroy of Any?(v136, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
      goto LABEL_78;
    }

LABEL_75:
    outlined destroy of Any?(v136, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSg_ADtMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSg_ADtMR);
    goto LABEL_12;
  }

  v91 = v136;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v136, v138, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  if (v134((v91 + v89), 1, v141) == 1)
  {
    outlined destroy of Any?(v139, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v138, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    goto LABEL_75;
  }

  v92 = v136;
  v93 = &v136[v89];
  v94 = v137;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v93, v137, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  v95 = v138;
  v96 = specialized static CLP_LogEntry_PrivateData_GEOLocationCoordinate2D.== infix(_:_:)(v138, v94, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v94, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  outlined destroy of Any?(v139, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v95, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  outlined destroy of Any?(v92, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  if ((v96 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_78:
  v97 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourse;
  swift_beginAccess();
  v98 = *v97;
  LOBYTE(v97) = *(v97 + 8);
  v99 = v142 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourse;
  swift_beginAccess();
  v100 = *(v99 + 8);
  if (v97)
  {
    if ((*(v99 + 8) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((*(v99 + 8) & 1) != 0 || v98 != *v99)
  {
    goto LABEL_12;
  }

  v101 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floor;
  swift_beginAccess();
  v102 = *v101;
  LOBYTE(v101) = *(v101 + 4);
  v103 = v142 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floor;
  swift_beginAccess();
  v104 = *(v103 + 4);
  if (v101)
  {
    if ((*(v103 + 4) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((*(v103 + 4) & 1) != 0 || v102 != *v103)
  {
    goto LABEL_12;
  }

  v105 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__integrity;
  swift_beginAccess();
  v106 = *(a1 + v105);
  v107 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__integrity;
  v108 = v142;
  swift_beginAccess();
  v109 = *(v108 + v107);
  if (v106 == 5)
  {
    if (v109 != 5)
    {
      goto LABEL_12;
    }
  }

  else if (v109 == 5 || qword_23D1C6DB0[v106] != qword_23D1C6DB0[v109])
  {
    goto LABEL_12;
  }

  v110 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame;
  swift_beginAccess();
  v111 = *(a1 + v110);
  v112 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame;
  v113 = v142;
  swift_beginAccess();
  v114 = *(v113 + v112);
  if (v111 == 3)
  {
    if (v114 != 3)
    {
      goto LABEL_12;
    }
  }

  else if (v114 == 3 || v111 != v114)
  {
    goto LABEL_12;
  }

  v115 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawReferenceFrame;
  swift_beginAccess();
  v116 = *(a1 + v115);
  v117 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawReferenceFrame;
  v118 = v142;
  swift_beginAccess();
  v119 = *(v118 + v117);
  if (v116 == 3)
  {
    if (v119 != 3)
    {
      goto LABEL_12;
    }
  }

  else if (v119 == 3 || v116 != v119)
  {
    goto LABEL_12;
  }

  v120 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalEnvironmentType;
  swift_beginAccess();
  v121 = *(a1 + v120);
  v122 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalEnvironmentType;
  v123 = v142;
  swift_beginAccess();
  v124 = *(v123 + v122);
  if (v121 == 8)
  {
    if (v124 != 8)
    {
      goto LABEL_12;
    }
  }

  else if (v124 == 8 || v121 != v124)
  {
    goto LABEL_12;
  }

  v125 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__ellipsoidalAltitude;
  swift_beginAccess();
  v126 = *v125;
  LOBYTE(v125) = *(v125 + 8);
  v127 = v142 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__ellipsoidalAltitude;
  swift_beginAccess();
  v128 = *(v127 + 8);
  if (v125)
  {
    if ((*(v127 + 8) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((*(v127 + 8) & 1) != 0 || v126 != *v127)
  {
    goto LABEL_12;
  }

  v129 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fromSimulationController;
  swift_beginAccess();
  v130 = *(a1 + v129);

  v131 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fromSimulationController;
  v132 = v142;
  swift_beginAccess();
  v133 = *(v132 + v131);

  if (v130 == 2)
  {
    if (v133 != 2)
    {
      return 0;
    }
  }

  else if (v133 == 2 || ((v130 ^ v133) & 1) != 0)
  {
    return 0;
  }

  return 1;
}