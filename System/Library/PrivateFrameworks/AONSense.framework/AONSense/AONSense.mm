uint64_t ALWiFiNotification.init(pb:)(uint64_t a1)
{
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ALDataTypes16ALWiFiScanResultVSgMd, &_s11ALDataTypes16ALWiFiScanResultVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v31 - v12;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ALDataTypes11ALTimeStampVSgMd, &_s11ALDataTypes11ALTimeStampVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v31 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ALDataTypes18ALWiFiNotificationV8NotiTypeOSgMd, &_s11ALDataTypes18ALWiFiNotificationV8NotiTypeOSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v31 - v24;
  ALWiFiNotification.init()();
  if (CLP_LogEntry_PrivateData_WifiNotification.hasType.getter())
  {
    v26 = CLP_LogEntry_PrivateData_WifiNotification.type.getter();
    ALWiFiNotification.NotiType.init(_:)(v26, v25);
    v27 = type metadata accessor for ALWiFiNotification.NotiType();
    (*(*(v27 - 8) + 56))(v25, 0, 1, v27);
    ALWiFiNotification._type.setter();
  }

  if (CLP_LogEntry_PrivateData_WifiNotification.hasEventReceiptTime.getter())
  {
    CLP_LogEntry_PrivateData_WifiNotification.eventReceiptTime.getter(v17);
    ALTimeStamp.init(pb:)(v17);
    v28 = type metadata accessor for ALTimeStamp();
    (*(*(v28 - 8) + 56))(v21, 0, 1, v28);
    ALWiFiNotification._timestamp.setter();
  }

  if (CLP_LogEntry_PrivateData_WifiNotification.hasScan.getter())
  {
    CLP_LogEntry_PrivateData_WifiNotification.scan.getter(v9);
    ALWiFiScanResult.init(pb:)(v9, v13);
    v29 = type metadata accessor for ALWiFiScanResult();
    (*(*(v29 - 8) + 56))(v13, 0, 1, v29);
    ALWiFiNotification._scanResult.setter();
  }

  if (CLP_LogEntry_PrivateData_WifiNotification.hasAssociatedState.getter())
  {
    CLP_LogEntry_PrivateData_WifiNotification.associatedState.getter(v5);
    CLP_LogEntry_PrivateData_WifiAssociationState.mac.getter();
    _s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVWOhTm_0(v5, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);
    ALWiFiNotification._associatedMac.setter();
  }

  if (CLP_LogEntry_PrivateData_WifiNotification.hasSimulated.getter())
  {
    CLP_LogEntry_PrivateData_WifiNotification.simulated.getter();
    ALWiFiNotification._simulated.setter();
  }

  if (CLP_LogEntry_PrivateData_WifiNotification.hasAvailable.getter())
  {
    CLP_LogEntry_PrivateData_WifiNotification.available.getter();
    ALWiFiNotification._available.setter();
  }

  if (CLP_LogEntry_PrivateData_WifiNotification.hasIsApAwake.getter())
  {
    CLP_LogEntry_PrivateData_WifiNotification.isApAwake.getter();
    ALWiFiNotification._isApAwake.setter();
  }

  return _s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVWOhTm_0(a1, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification);
}

BOOL CLP_LogEntry_PrivateData_WifiNotification.hasEventReceiptTime.getter()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  return v7;
}

uint64_t type metadata accessor for CLP_LogEntry_AONLoc_Request(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t __swift_get_extra_inhabitant_index_378Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t outlined destroy of Any?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t CLP_LogEntry_PrivateData_Location.eventReceiptTime.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v18 - v8;
  v10 = *(v3 + *(a1(0) + 20));
  v11 = *a2;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v10 + v11, v9, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v13 = *(*(v12 - 1) + 48);
  if (v13(v9, 1, v12) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v9, a3, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  UnknownStorage.init()();
  v14 = a3 + v12[5];
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = a3 + v12[6];
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = a3 + v12[7];
  *v16 = 0;
  *(v16 + 8) = 1;
  result = (v13)(v9, 1, v12);
  if (result != 1)
  {
    return outlined destroy of Any?(v9, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  return result;
}

uint64_t outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ALTimeStamp.init(pb:)(uint64_t a1)
{
  ALTimeStamp.init()();
  if (CLP_LogEntry_PrivateData_TimeStamp.hasCfAbsoluteTimeS.getter())
  {
    CLP_LogEntry_PrivateData_TimeStamp.cfAbsoluteTimeS.getter();
    ALTimeStamp._cfAbsoluteTimeSec.setter();
  }

  if (CLP_LogEntry_PrivateData_TimeStamp.hasMachAbsoluteTimeS.getter())
  {
    CLP_LogEntry_PrivateData_TimeStamp.machAbsoluteTimeS.getter();
    ALTimeStamp._machAbsoluteTimeSec.setter();
  }

  if (CLP_LogEntry_PrivateData_TimeStamp.hasMachContinuousTimeS.getter())
  {
    CLP_LogEntry_PrivateData_TimeStamp.machContinuousTimeS.getter();
    ALTimeStamp._machContinuousTimeSec.setter();
  }

  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(a1);
}

double CLP_LogEntry_PrivateData_TimeStamp.cfAbsoluteTimeS.getter(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 20);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

double CLP_LogEntry_PrivateData_TimeStamp.machAbsoluteTimeS.getter(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 24);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

double CLP_LogEntry_PrivateData_TimeStamp.machContinuousTimeS.getter(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 28);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(uint64_t a1)
{
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL CLP_LogEntry_PrivateData_WifiNotification.hasScan.getter()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scan;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR);
  return v7;
}

uint64_t __swift_get_extra_inhabitant_index_502Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnknownStorage();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t CLP_LogEntry_PrivateData_WifiNotification.scan.getter@<X0>(char *a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v14 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scan;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
  }

  *a1 = MEMORY[0x277D84F90];
  v10 = &a1[*(v8 + 20)];
  UnknownStorage.init()();
  v11 = *(v8 + 24);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR);
  }

  return result;
}

uint64_t ALWiFiScanResult.init(pb:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0) - 8);
  v5 = *(v4 + 64);
  (MEMORY[0x28223BE20])();
  v46 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ALWiFiScanSingleAccessPoint();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = (MEMORY[0x28223BE20])();
  v48 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ALDataTypes11ALTimeStampVSgMd, &_s11ALDataTypes11ALTimeStampVSgMR);
  v15 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v39 - v16;
  v18 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a2;
  ALWiFiScanResult.init()();
  if (CLP_LogEntry_PrivateData_WifiScanResult.hasScanTimestamp.getter())
  {
    CLP_LogEntry_PrivateData_WifiScanResult.scanTimestamp.getter(v21);
    v22 = CLP_LogEntry_PrivateData_TimeStamp.hasMachContinuousTimeS.getter();
    _s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVWOhTm_0(v21, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    if (v22)
    {
      CLP_LogEntry_PrivateData_WifiScanResult.scanTimestamp.getter(v21);
      ALTimeStamp.init(pb:)(v21);
      v23 = type metadata accessor for ALTimeStamp();
      (*(*(v23 - 8) + 56))(v17, 0, 1, v23);
      ALWiFiScanResult._scanTimestamp.setter();
    }
  }

  v40 = a1;
  v24 = *(*a1 + 16);
  v25 = v48;
  if (v24)
  {
    v26 = *a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v27 = *(v4 + 72);
    v43 = v8 + 32;
    v44 = v27;
    v41 = (v8 + 16);
    v42 = v8 + 8;
    v45 = v7;
    do
    {
      v28 = v46;
      _s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVWOcTm_0(v26, v46, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
      v29 = ALWiFiScanResult._scanTimestamp.modify();
      ALWiFiScanSingleAccessPoint.init(pb:ts:)(v28);
      v29(v49, 0);
      (*v41)(v25, v13, v7);
      v30 = ALWiFiScanResult._accessPoints.modify();
      v32 = v31;
      v33 = *v31;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v32 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33[2] + 1, 1, v33, &_ss23_ContiguousArrayStorageCy11ALDataTypes27ALWiFiScanSingleAccessPointVGMd, &_ss23_ContiguousArrayStorageCy11ALDataTypes27ALWiFiScanSingleAccessPointVGMR, MEMORY[0x277CE49B0]);
        *v32 = v33;
      }

      v36 = v33[2];
      v35 = v33[3];
      if (v36 >= v35 >> 1)
      {
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v35 > 1, v36 + 1, 1, v33, &_ss23_ContiguousArrayStorageCy11ALDataTypes27ALWiFiScanSingleAccessPointVGMd, &_ss23_ContiguousArrayStorageCy11ALDataTypes27ALWiFiScanSingleAccessPointVGMR, MEMORY[0x277CE49B0]);
        *v32 = v33;
      }

      v33[2] = v36 + 1;
      v37 = v33 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v36;
      v25 = v48;
      v7 = v45;
      (*(v8 + 32))(v37, v48, v45);
      v30(v49, 0);
      (*(v8 + 8))(v13, v7);
      v26 += v44;
      --v24;
    }

    while (v24);
  }

  return _s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVWOhTm_0(v40, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
}

BOOL CLP_LogEntry_PrivateData_Accel.hasEventReceiptTime.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v16 - v10;
  v12 = a3(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + *(v12 + 24), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  outlined destroy of Any?(v11, a1, a2);
  return v14;
}

uint64_t CLP_LogEntry_PrivateData_Accel.eventReceiptTime.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v15 - v6;
  v8 = a1(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v2 + *(v8 + 24), v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v7, a2, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  UnknownStorage.init()();
  v11 = a2 + v9[5];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a2 + v9[6];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a2 + v9[7];
  *v13 = 0;
  *(v13 + 8) = 1;
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  return result;
}

uint64_t outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ALWiFiScanSingleAccessPoint.init(pb:ts:)(uint64_t a1)
{
  v2 = type metadata accessor for ALWiFiScanSingleAccessPoint.Mode();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v22 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11ALDataTypes27ALWiFiScanSingleAccessPointV4ModeOSgMd, &_s11ALDataTypes27ALWiFiScanSingleAccessPointV4ModeOSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v21 - v7;
  v9 = type metadata accessor for ALWiFiScanSingleAccessPoint.Band();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11ALDataTypes27ALWiFiScanSingleAccessPointV4BandOSgMd, &_s11ALDataTypes27ALWiFiScanSingleAccessPointV4BandOSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v16 = &v21 - v15;
  ALWiFiScanSingleAccessPoint.init(_:)();
  if (CLP_LogEntry_PrivateData_WifiAccessPoint.hasMac.getter())
  {
    CLP_LogEntry_PrivateData_WifiAccessPoint.mac.getter();
    ALWiFiScanSingleAccessPoint._mac.setter();
  }

  if (CLP_LogEntry_PrivateData_WifiAccessPoint.hasSsid.getter())
  {
    CLP_LogEntry_PrivateData_WifiAccessPoint.ssid.getter();
    ALWiFiScanSingleAccessPoint._ssid.setter();
  }

  if (CLP_LogEntry_PrivateData_WifiAccessPoint.hasRssiDb.getter())
  {
    CLP_LogEntry_PrivateData_WifiAccessPoint.rssiDb.getter();
    v23 = 0;
    ALWiFiScanSingleAccessPoint._rssidB.setter();
  }

  if (CLP_LogEntry_PrivateData_WifiAccessPoint.hasChannel.getter())
  {
    CLP_LogEntry_PrivateData_WifiAccessPoint.channel.getter();
    v24 = 0;
    ALWiFiScanSingleAccessPoint._channel.setter();
  }

  if (CLP_LogEntry_PrivateData_WifiAccessPoint.hasAgeS.getter())
  {
    CLP_LogEntry_PrivateData_WifiAccessPoint.ageS.getter();
    v25 = 0;
    ALWiFiScanSingleAccessPoint._ageSec.setter();
  }

  if (CLP_LogEntry_PrivateData_WifiAccessPoint.hasIsMoving.getter())
  {
    CLP_LogEntry_PrivateData_WifiAccessPoint.isMoving.getter();
    ALWiFiScanSingleAccessPoint._isMoving.setter();
  }

  if (CLP_LogEntry_PrivateData_WifiAccessPoint.hasFrequencyKhz.getter())
  {
    CLP_LogEntry_PrivateData_WifiAccessPoint.frequencyKhz.getter();
    v26 = 0;
    ALWiFiScanSingleAccessPoint._frequencyKhz.setter();
  }

  if (CLP_LogEntry_PrivateData_WifiAccessPoint.hasBand.getter())
  {
    v17 = CLP_LogEntry_PrivateData_WifiAccessPoint.band.getter();
    (*(v10 + 104))(v13, **(&unk_278BC4C48 + v17), v9);
    (*(v10 + 32))(v16, v13, v9);
    (*(v10 + 56))(v16, 0, 1, v9);
    ALWiFiScanSingleAccessPoint._band.setter();
  }

  if (CLP_LogEntry_PrivateData_WifiAccessPoint.hasMode.getter())
  {
    v18 = CLP_LogEntry_PrivateData_WifiAccessPoint.mode.getter();
    v19 = v22;
    (*(v3 + 104))(v22, **(&unk_278BC4C68 + v18), v2);
    (*(v3 + 32))(v8, v19, v2);
    (*(v3 + 56))(v8, 0, 1, v2);
    ALWiFiScanSingleAccessPoint._mode.setter();
  }

  if (CLP_LogEntry_PrivateData_WifiAccessPoint.hasIsApplePersonalHotspot.getter())
  {
    CLP_LogEntry_PrivateData_WifiAccessPoint.isApplePersonalHotspot.getter();
    ALWiFiScanSingleAccessPoint._isAph.setter();
  }

  return _s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVWOhTm_0(a1, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
}

uint64_t CLP_LogEntry_PrivateData_MapsRouteHintData.roadID.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t CLP_LogEntry_PrivateData_WifiAccessPoint.rssiDb.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.client.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 36));
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

float CLP_LogEntry_PrivateData_ClientSatelliteInfo.l5Cn0.getter(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 40);
  result = *v2;
  if (*(v2 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_WifiAccessPoint.band.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0) + 52));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

BOOL CLP_LogEntry_PrivateData_WifiNotification.hasAssociatedState.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__associatedState;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
  return v8;
}

uint64_t sub_23CEB0CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 253)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t __swift_get_extra_inhabitant_index_691Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
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

uint64_t sub_23CEB0F38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 253)
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_WifiNotification.associatedState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__associatedState;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);
  }

  UnknownStorage.init()();
  *(a1 + *(v9 + 20)) = 2;
  v11 = *(v9 + 24);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_WifiAssociationState.mac.getter()
{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!CLP_LogEntry_PrivateData_WifiAssociationState.hasIsAssociated.getter())
  {
    return 0;
  }

  if (!CLP_LogEntry_PrivateData_WifiAssociationState.hasAp.getter())
  {
    return 0;
  }

  CLP_LogEntry_PrivateData_WifiAssociationState.ap.getter(v3);
  v4 = CLP_LogEntry_PrivateData_WifiAccessPoint.hasMac.getter();
  _s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVWOhTm_0(v3, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  if (!v4)
  {
    return 0;
  }

  CLP_LogEntry_PrivateData_WifiAssociationState.ap.getter(v3);
  v5 = CLP_LogEntry_PrivateData_WifiAccessPoint.mac.getter();
  _s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVWOhTm_0(v3, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  return v5;
}

uint64_t CLP_LogEntry_PrivateData_WifiAssociationState.ap.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 24), v6, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = (a1 + v8[6]);
  *v11 = 0;
  v11[1] = 0;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 4) = 1;
  *(a1 + v8[8]) = 4;
  v13 = a1 + v8[9];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1 + v8[10];
  *v14 = 0;
  *(v14 + 4) = 1;
  *(a1 + v8[11]) = 2;
  *(a1 + v8[12]) = 2;
  *(a1 + v8[13]) = 4;
  v15 = a1 + v8[14];
  *v15 = 0;
  *(v15 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMR);
  }

  return result;
}

BOOL CLP_LogEntry_PrivateData_DaemonLocation.hasFromSimulationController.getter(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = *(v2 + *(a1(0) + 20));
  v5 = *a2;
  swift_beginAccess();
  return *(v4 + v5) != 2;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocation.fromSimulationController.getter(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = *(v2 + *(a1(0) + 20));
  v5 = *a2;
  swift_beginAccess();
  return *(v4 + v5) & 1;
}

uint64_t ALWiFiNotifications.init(pb:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ALWiFiNotification();
  v9 = *(v35 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v35);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = (&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = a2;
  ALWiFiNotifications.init()();
  if (CLP_LogEntry_AONLoc_Indication.hasType.getter() && (v37[0] = CLP_LogEntry_AONLoc_Indication.type.getter(), v37[39] = 4, lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Indication.TypeEnum and conformance CLP_LogEntry_AONLoc_Indication.TypeEnum(), (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0) && CLP_LogEntry_AONLoc_Indication.hasWifiIndication.getter())
  {
    v32 = a1;
    CLP_LogEntry_AONLoc_Indication.wifiIndication.getter(v16);
    v31 = v16;
    v17 = *v16;
    v18 = *(*v16 + 16);
    if (v18)
    {
      v19 = v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v20 = *(v5 + 72);
      v33 = v9 + 32;
      v34 = v20;
      do
      {
        _s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVWOcTm_0(v19, v8, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification);
        ALWiFiNotification.init(pb:)(v8);
        v21 = ALWiFiNotifications._results.modify();
        v23 = v22;
        v24 = *v22;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v23 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24[2] + 1, 1, v24, &_ss23_ContiguousArrayStorageCy11ALDataTypes18ALWiFiNotificationVGMd, &_ss23_ContiguousArrayStorageCy11ALDataTypes18ALWiFiNotificationVGMR, MEMORY[0x277CE4968]);
          *v23 = v24;
        }

        v27 = v24[2];
        v26 = v24[3];
        if (v27 >= v26 >> 1)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v26 > 1, v27 + 1, 1, v24, &_ss23_ContiguousArrayStorageCy11ALDataTypes18ALWiFiNotificationVGMd, &_ss23_ContiguousArrayStorageCy11ALDataTypes18ALWiFiNotificationVGMR, MEMORY[0x277CE4968]);
          *v23 = v24;
        }

        v24[2] = v27 + 1;
        (*(v9 + 32))(v24 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v27, v12, v35);
        v21(v37, 0);
        v19 += v34;
        --v18;
      }

      while (v18);
    }

    a1 = v31;
    CLP_LogEntry_AONLoc_WiFiIndication.isLastBatch.getter();
    ALWiFiNotifications._isLastBatch.setter();
    _s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVWOhTm_0(v32, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
    v28 = type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication;
  }

  else
  {
    v28 = type metadata accessor for CLP_LogEntry_AONLoc_Indication;
  }

  return _s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVWOhTm_0(a1, v28);
}

uint64_t ALWiFiNotifications.init(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for BinaryDecodingOptions();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for CLP_LogEntry_AONLoc_Indication(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v17 - v14;
  v19 = a1;
  v20 = a2;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Indication and conformance CLP_LogEntry_AONLoc_Indication, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v3)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  _s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVWOcTm_0(v15, v13, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
  ALWiFiNotifications.init(pb:)(v13, a3);
  outlined consume of Data._Representation(a1, a2);
  return _s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVWOhTm_0(v15, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t CLP_LogEntry_AONLoc_Indication._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdResponse, &_s10ALProtobuf19Proto_Gpsd_ResponseVSgMd, &_s10ALProtobuf19Proto_Gpsd_ResponseVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdIndication, &_s10ALProtobuf21Proto_Gpsd_IndicationVSgMd, &_s10ALProtobuf21Proto_Gpsd_IndicationVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiResponse, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMd, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiIndication, &_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSgMd, &_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btResponse, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMd, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btIndication, &_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSgMd, &_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_23CEB1EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 <= 0xA)
    {
      v11 = 10;
    }

    else
    {
      v11 = *(a1 + *(a3 + 28));
    }

    v12 = v11 - 10;
    if (v10 >= 0xA)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_315Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
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

uint64_t sub_23CEB2090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 6)
    {
      v11 = 6;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 6;
    if (v10 >= 6)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_35Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t CLP_LogEntry_PrivateData_WifiNotification._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__associatedState, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scan, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t closure #2 in ALFWiFiScanResultsRequester.register(callback:intervalSec:)(uint64_t a1, unint64_t a2, void (*a3)(uint64_t, void), uint64_t a4)
{
  v44 = a4;
  v45 = a3;
  v7 = type metadata accessor for Logger();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v36[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = type metadata accessor for ALWiFiNotifications();
  v11 = *(v42 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v42);
  v15 = &v36[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v36[-v17];
  MEMORY[0x28223BE20](v16);
  v20 = &v36[-v19];
  outlined copy of Data._Representation(a1, a2);
  result = ALWiFiNotifications.init(data:)(a1, a2, v20);
  if (!v4)
  {
    v40 = v7;
    v41 = 0;
    wifilog.getter(v10);
    v22 = v11[2];
    v23 = v42;
    v22(v18, v20, v42);
    v22(v15, v20, v23);
    v39 = v10;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v37 = v25;
      v27 = v26;
      *v26 = 134349312;
      v28 = *(ALWiFiNotifications.results.getter() + 16);

      v38 = v24;
      v29 = v11[1];
      v29(v18, v23);
      *(v27 + 1) = v28;
      *(v27 + 6) = 1026;
      LODWORD(v28) = ALWiFiNotifications.isLastBatch.getter() & 1;
      v29(v15, v23);
      v30 = v29;
      v24 = v38;
      *(v27 + 14) = v28;
      _os_log_impl(&dword_23CEAD000, v24, v37, "#WiFi,dataCallback,results,%{public}ld,last,%{BOOL,public}d", v27, 0x12u);
      MEMORY[0x23EEDAF70](v27, -1, -1);
    }

    else
    {
      v31 = v11[1];
      v31(v15, v23);
      v31(v18, v23);
      v30 = v31;
    }

    v32 = v40;
    v33 = v43;

    (*(v33 + 8))(v39, v32);
    v34 = ALWiFiNotifications.results.getter();
    v35 = ALWiFiNotifications.isLastBatch.getter();
    v45(v34, v35 & 1);

    return v30(v20, v23);
  }

  return result;
}

uint64_t static ALLogger.core.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t ALXPCClient.onData(_:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  xpclog.getter(v10);
  outlined copy of Data._Representation(a1, a2);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  outlined consume of Data._Representation(a1, a2);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26 = v7;
    v14 = v13;
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 136315138;
    v16 = Data.description.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v27);
    v25 = v6;
    v19 = a2;
    v20 = v3;
    v21 = v18;

    *(v14 + 4) = v21;
    v3 = v20;
    a2 = v19;
    _os_log_impl(&dword_23CEAD000, v11, v12, "XPC %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23EEDAF70](v15, -1, -1);
    MEMORY[0x23EEDAF70](v14, -1, -1);

    (*(v26 + 8))(v10, v25);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v22 = *(v3 + 32);
  return (*(v3 + 24))(a1, a2);
}

uint64_t closure #1 in ALFResultsRequesterData.register(payload:dataCallback:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = type metadata accessor for Logger();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  return a3(a1, a2);
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t closure #2 in ALFBtAdvResultsRequester.register(callback:intervalSec:)(uint64_t a1, unint64_t a2, void (*a3)(uint64_t, void), uint64_t a4)
{
  v44 = a4;
  v45 = a3;
  v7 = type metadata accessor for Logger();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v36[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = type metadata accessor for ALBtNotifications();
  v11 = *(v42 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v42);
  v15 = &v36[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v36[-v17];
  MEMORY[0x28223BE20](v16);
  v20 = &v36[-v19];
  outlined copy of Data._Representation(a1, a2);
  result = ALBtNotifications.init(data:)(a1, a2, v20);
  if (!v4)
  {
    v40 = v7;
    v41 = 0;
    leechlog.getter(v10);
    v22 = v11[2];
    v23 = v42;
    v22(v18, v20, v42);
    v22(v15, v20, v23);
    v39 = v10;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v37 = v25;
      v27 = v26;
      *v26 = 134349312;
      v28 = *(ALBtNotifications.results.getter() + 16);

      v38 = v24;
      v29 = v11[1];
      v29(v18, v23);
      *(v27 + 1) = v28;
      *(v27 + 6) = 1026;
      LODWORD(v28) = ALBtNotifications.isLastBatch.getter() & 1;
      v29(v15, v23);
      v30 = v29;
      v24 = v38;
      *(v27 + 14) = v28;
      _os_log_impl(&dword_23CEAD000, v24, v37, "#BT,dataCallback,results,%{public}ld,last,%{BOOL,public}d", v27, 0x12u);
      MEMORY[0x23EEDAF70](v27, -1, -1);
    }

    else
    {
      v31 = v11[1];
      v31(v15, v23);
      v31(v18, v23);
      v30 = v31;
    }

    v32 = v40;
    v33 = v43;

    (*(v33 + 8))(v39, v32);
    v34 = ALBtNotifications.results.getter();
    v35 = ALBtNotifications.isLastBatch.getter();
    v45(v34, v35 & 1);

    return v30(v20, v23);
  }

  return result;
}

uint64_t CLP_LogEntry_AONLoc_Indication.decodeMessage<A>(decoder:)()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_AONLoc_Indication._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    CLP_LogEntry_AONLoc_Indication._StorageClass.init(copying:)(v6);
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

      if (result > 11)
      {
        break;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_29;
          }

          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }

        goto LABEL_28;
      }

      if (result != 3)
      {
        if (result != 11)
        {
          goto LABEL_29;
        }

        v13 = v1;
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_Response(0);
        v14 = type metadata accessor for Proto_Gpsd_Response;
        v15 = &lazy protocol witness table cache variable for type Proto_Gpsd_Response and conformance Proto_Gpsd_Response;
        goto LABEL_27;
      }

      swift_beginAccess();
      lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Indication.TypeEnum and conformance CLP_LogEntry_AONLoc_Indication.TypeEnum();
      dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
LABEL_28:
      swift_endAccess();
LABEL_29:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result <= 21)
    {
      if (result != 12)
      {
        if (result != 21)
        {
          goto LABEL_29;
        }

LABEL_26:
        v13 = v1;
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_AONLoc_Response(0);
        v14 = type metadata accessor for CLP_LogEntry_AONLoc_Response;
        v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Response and conformance CLP_LogEntry_AONLoc_Response;
        goto LABEL_27;
      }

      v13 = v1;
      swift_beginAccess();
      type metadata accessor for Proto_Gpsd_Indication(0);
      v14 = type metadata accessor for Proto_Gpsd_Indication;
      v15 = &lazy protocol witness table cache variable for type Proto_Gpsd_Indication and conformance Proto_Gpsd_Indication;
    }

    else
    {
      if (result != 22)
      {
        if (result != 31)
        {
          if (result != 32)
          {
            goto LABEL_29;
          }

          v13 = v1;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_AONLoc_BtIndication(0);
          v14 = type metadata accessor for CLP_LogEntry_AONLoc_BtIndication;
          v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtIndication and conformance CLP_LogEntry_AONLoc_BtIndication;
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      v13 = v1;
      swift_beginAccess();
      type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication(0);
      v14 = type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication;
      v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_WiFiIndication and conformance CLP_LogEntry_AONLoc_WiFiIndication;
    }

LABEL_27:
    lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(v15, v14);
    v1 = v13;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    goto LABEL_28;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ALBtNotifications.init(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for BinaryDecodingOptions();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for CLP_LogEntry_AONLoc_Indication(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v17 - v14;
  v19 = a1;
  v20 = a2;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Indication and conformance CLP_LogEntry_AONLoc_Indication, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v3)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  outlined init with copy of CLP_LogEntry_AONLoc_BtAdvertisement(v15, v13, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
  ALBtNotifications.init(pb:)(v13, a3);
  outlined consume of Data._Representation(a1, a2);
  return outlined destroy of CLP_LogEntry_AONLoc_BtAdvertisement(v15, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_AONLoc_Indication@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a2 + v4) = static CLP_LogEntry_AONLoc_Indication._StorageClass.defaultInstance;
}

uint64_t CLP_LogEntry_AONLoc_BtNotification.eventReceiptTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 24), v6, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_AONLoc_Type7Info(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  CLP_LogEntry_PrivateData_TimeStamp.init()(a1);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_AONLoc_Indication._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSgMd, &_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v51 = &v42 - v4;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSgMd, &_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v50 = &v42 - v6;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMd, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v49 = &v42 - v8;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf21Proto_Gpsd_IndicationVSgMd, &_s10ALProtobuf21Proto_Gpsd_IndicationVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v48 = &v42 - v10;
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf19Proto_Gpsd_ResponseVSgMd, &_s10ALProtobuf19Proto_Gpsd_ResponseVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v43 = &v42 - v12;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 28) = 0;
  *(v1 + 32) = 1793;
  v13 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdResponse;
  v14 = type metadata accessor for Proto_Gpsd_Response(0);
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdIndication;
  v42 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdIndication;
  v16 = type metadata accessor for Proto_Gpsd_Indication(0);
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiResponse;
  v44 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiResponse;
  v18 = type metadata accessor for CLP_LogEntry_AONLoc_Response(0);
  v19 = *(*(v18 - 8) + 56);
  v19(v1 + v17, 1, 1, v18);
  v20 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiIndication;
  v45 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiIndication;
  v21 = type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication(0);
  (*(*(v21 - 8) + 56))(v1 + v20, 1, 1, v21);
  v47 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btResponse;
  v19(v1 + OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btResponse, 1, 1, v18);
  v22 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btIndication;
  v46 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btIndication;
  v23 = type metadata accessor for CLP_LogEntry_AONLoc_BtIndication(0);
  (*(*(v23 - 8) + 56))(v1 + v22, 1, 1, v23);
  swift_beginAccess();
  v24 = *(a1 + 16);
  LOBYTE(v19) = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v24;
  *(v1 + 24) = v19;
  swift_beginAccess();
  LODWORD(v24) = *(a1 + 28);
  LOBYTE(v19) = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 28) = v24;
  *(v1 + 32) = v19;
  swift_beginAccess();
  LOBYTE(v24) = *(a1 + 33);
  swift_beginAccess();
  *(v1 + 33) = v24;
  v25 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdResponse;
  swift_beginAccess();
  v26 = v43;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v25, v43, &_s10ALProtobuf19Proto_Gpsd_ResponseVSgMd, &_s10ALProtobuf19Proto_Gpsd_ResponseVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v26, v1 + v13, &_s10ALProtobuf19Proto_Gpsd_ResponseVSgMd, &_s10ALProtobuf19Proto_Gpsd_ResponseVSgMR);
  swift_endAccess();
  v27 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdIndication;
  swift_beginAccess();
  v28 = v48;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v27, v48, &_s10ALProtobuf21Proto_Gpsd_IndicationVSgMd, &_s10ALProtobuf21Proto_Gpsd_IndicationVSgMR);
  v29 = v42;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v28, v1 + v29, &_s10ALProtobuf21Proto_Gpsd_IndicationVSgMd, &_s10ALProtobuf21Proto_Gpsd_IndicationVSgMR);
  swift_endAccess();
  v30 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiResponse;
  swift_beginAccess();
  v31 = v49;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v30, v49, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMd, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMR);
  v32 = v44;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v31, v1 + v32, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMd, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMR);
  swift_endAccess();
  v33 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiIndication;
  swift_beginAccess();
  v34 = v50;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v33, v50, &_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSgMd, &_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSgMR);
  v35 = v45;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v34, v1 + v35, &_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSgMd, &_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSgMR);
  swift_endAccess();
  v36 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btResponse;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v36, v31, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMd, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMR);
  v37 = v47;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v31, v1 + v37, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMd, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMR);
  swift_endAccess();
  v38 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btIndication;
  swift_beginAccess();
  v39 = v51;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v38, v51, &_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSgMd, &_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSgMR);

  v40 = v46;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v39, v1 + v40, &_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSgMd, &_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSgMR);
  swift_endAccess();
  return v1;
}

uint64_t sub_23CEB3F84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 10;
  }

  return result;
}

uint64_t __swift_store_extra_inhabitant_index_316Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
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

uint64_t sub_23CEB4164(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 6;
  }

  return result;
}

void *__swift_store_extra_inhabitant_index_36Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CLP_LogEntry_AONLoc_WiFiIndication.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 11:
          type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0);
          lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiNotification and conformance CLP_LogEntry_PrivateData_WifiNotification, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
        case 2:
          v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication(0) + 28);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 1:
          v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication(0) + 24);
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_SyncState@<X0>(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  UnknownStorage.init()();
  v8 = *(a1 + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t CLP_LogEntry_PrivateData_WifiNotification.decodeMessage<A>(decoder:)()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_WifiNotification._StorageClass.init(copying:)(v6);

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

      if (result <= 5)
      {
        break;
      }

      if (result <= 8)
      {
        if (result == 6)
        {
          v13 = v1;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
          v14 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState;
          v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAssociationState and conformance CLP_LogEntry_PrivateData_WifiAssociationState;
        }

        else
        {
          if (result != 7)
          {
            goto LABEL_30;
          }

          v13 = v1;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
          v14 = type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult;
          v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiScanResult and conformance CLP_LogEntry_PrivateData_WifiScanResult;
        }

LABEL_29:
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(v15, v14);
        v1 = v13;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        goto LABEL_31;
      }

      if (result == 9 || result == 10 || result == 11)
      {
        goto LABEL_30;
      }

LABEL_32:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        v13 = v1;
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        v14 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
        v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp;
        goto LABEL_29;
      }

      if (result != 2)
      {
        goto LABEL_32;
      }

      swift_beginAccess();
      dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
    }

    else
    {
      if (result == 3)
      {
        v16 = v1;
        swift_beginAccess();
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WifiNotificationType and conformance CLP_LogEntry_PrivateData_WifiNotificationType();
      }

      else
      {
        if (result != 4)
        {
LABEL_30:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_31;
        }

        v16 = v1;
        swift_beginAccess();
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WifiScanType and conformance CLP_LogEntry_PrivateData_WifiScanType();
      }

      v1 = v16;
      dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
    }

LABEL_31:
    swift_endAccess();
    goto LABEL_32;
  }

  return result;
}

uint64_t specialized CLP_LogEntry_PrivateData_WifiNotification._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v49 = &v40 - v4;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v46 = &v40 - v6;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v40 - v8;
  v10 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  v12 = v1 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type) = 15;
  v14 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scanType;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scanType) = 15;
  v41 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__power;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__power) = 2;
  v15 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__associatedState;
  v42 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__associatedState;
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scan;
  v43 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scan;
  v18 = type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  v44 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__simulated;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__simulated) = 2;
  v45 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__available;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__available) = 2;
  v47 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInvoluntaryLinkDown;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInvoluntaryLinkDown) = 2;
  v48 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isApAwake;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isApAwake) = 2;
  v19 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v19, v9, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v9, v1 + v10, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_endAccess();
  v20 = a1 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  LODWORD(v19) = *v20;
  LOBYTE(v20) = *(v20 + 4);
  swift_beginAccess();
  *v12 = v19;
  *(v12 + 4) = v20;
  v21 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type;
  swift_beginAccess();
  LOBYTE(v21) = *(a1 + v21);
  swift_beginAccess();
  *(v1 + v13) = v21;
  v22 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scanType;
  swift_beginAccess();
  LOBYTE(v22) = *(a1 + v22);
  swift_beginAccess();
  *(v1 + v14) = v22;
  v23 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__power;
  swift_beginAccess();
  LOBYTE(v23) = *(a1 + v23);
  v24 = v41;
  swift_beginAccess();
  *(v1 + v24) = v23;
  v25 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__associatedState;
  swift_beginAccess();
  v26 = v46;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v25, v46, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
  v27 = v42;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v26, v1 + v27, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
  swift_endAccess();
  v28 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scan;
  swift_beginAccess();
  v29 = v49;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v28, v49, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR);
  v30 = v43;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v29, v1 + v30, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR);
  swift_endAccess();
  v31 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__simulated;
  swift_beginAccess();
  LOBYTE(v31) = *(a1 + v31);
  v32 = v44;
  swift_beginAccess();
  *(v1 + v32) = v31;
  v33 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__available;
  swift_beginAccess();
  LOBYTE(v33) = *(a1 + v33);
  v34 = v45;
  swift_beginAccess();
  *(v1 + v34) = v33;
  v35 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInvoluntaryLinkDown;
  swift_beginAccess();
  LOBYTE(v35) = *(a1 + v35);
  v36 = v47;
  swift_beginAccess();
  *(v1 + v36) = v35;
  v37 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isApAwake;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v37);
  v38 = v48;
  swift_beginAccess();
  *(v1 + v38) = a1;
  return v1;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_Wgs84Ecef@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 8) = 1;
  return result;
}

uint64_t outlined assign with take of Proto_Gpsd_Response?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Indication.TypeEnum and conformance CLP_LogEntry_AONLoc_Indication.TypeEnum()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Indication.TypeEnum and conformance CLP_LogEntry_AONLoc_Indication.TypeEnum;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Indication.TypeEnum and conformance CLP_LogEntry_AONLoc_Indication.TypeEnum)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Indication.TypeEnum and conformance CLP_LogEntry_AONLoc_Indication.TypeEnum);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Indication.TypeEnum and conformance CLP_LogEntry_AONLoc_Indication.TypeEnum;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Indication.TypeEnum and conformance CLP_LogEntry_AONLoc_Indication.TypeEnum)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Indication.TypeEnum and conformance CLP_LogEntry_AONLoc_Indication.TypeEnum);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Indication.TypeEnum and conformance CLP_LogEntry_AONLoc_Indication.TypeEnum;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Indication.TypeEnum and conformance CLP_LogEntry_AONLoc_Indication.TypeEnum)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Indication.TypeEnum and conformance CLP_LogEntry_AONLoc_Indication.TypeEnum);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Indication.TypeEnum and conformance CLP_LogEntry_AONLoc_Indication.TypeEnum;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Indication.TypeEnum and conformance CLP_LogEntry_AONLoc_Indication.TypeEnum)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Indication.TypeEnum and conformance CLP_LogEntry_AONLoc_Indication.TypeEnum);
  }

  return result;
}

uint64_t protocol witness for Enum.init(rawValue:) in conformance CLP_LogEntry_AONLoc_Indication.TypeEnum@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CLP_LogEntry_AONLoc_Indication.TypeEnum.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t specialized CLP_LogEntry_AONLoc_Indication.TypeEnum.init(rawValue:)(uint64_t a1)
{
  if (a1 <= 20)
  {
    if (a1 == 1)
    {
      return 0;
    }

    if (a1 != 11)
    {
      if (a1 == 12)
      {
        return 2;
      }

      return 7;
    }

    return 1;
  }

  else if (a1 > 30)
  {
    if (a1 != 31)
    {
      if (a1 == 32)
      {
        return 6;
      }

      return 7;
    }

    return 5;
  }

  else
  {
    if (a1 != 21)
    {
      if (a1 == 22)
      {
        return 4;
      }

      return 7;
    }

    return 3;
  }
}

uint64_t getEnumTagSinglePayload for CLP_LogEntry_AONLoc_Indication.TypeEnum(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CLP_LogEntry_AONLoc_Indication.TypeEnum(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_AONLoc_WiFiIndication@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = a2 + a1[5];
  result = UnknownStorage.init()();
  v6 = a1[7];
  v7 = a2 + a1[6];
  *v7 = 0;
  v7[8] = 1;
  *(a2 + v6) = 2;
  return result;
}

uint64_t __swift_store_extra_inhabitant_index_379Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t CLP_LogEntry_AONLoc_BtNotification.decodeMessage<A>(decoder:)()
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
        if (result == 1)
        {
          v7 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0) + 24);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else if (result == 2)
        {
          type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0);
          lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 4:
            v3 = v0;
            v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0) + 28);
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            break;
          case 5:
            v3 = v0;
            v6 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0) + 32);
            goto LABEL_5;
          case 6:
            v3 = v0;
            v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0) + 36);
            goto LABEL_5;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_AONLoc_BtIndication.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 11:
          type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
          lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtNotification and conformance CLP_LogEntry_AONLoc_BtNotification, type metadata accessor for CLP_LogEntry_AONLoc_BtNotification);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
        case 2:
          v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtIndication(0) + 28);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 1:
          v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtIndication(0) + 24);
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_AONLoc_BtNotification@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = &a2[a1[5]];
  UnknownStorage.init()();
  v5 = a1[6];
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v8 = a1[8];
  a2[a1[7]] = 2;
  a2[v8] = 2;
  a2[a1[9]] = 2;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_TimeStamp.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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
        v10 = *(a4(0) + 28);
LABEL_3:
        v4 = 0;
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        break;
      case 2:
        v6 = *(a4(0) + 24);
        goto LABEL_3;
      case 1:
        v9 = *(a4(0) + 20);
        goto LABEL_3;
    }
  }
}

BOOL CLP_LogEntry_AONLoc_Indication.hasType.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20));
  swift_beginAccess();
  return *(v1 + 33) != 7;
}

uint64_t CLP_LogEntry_AONLoc_Indication.type.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20));
  swift_beginAccess();
  if (*(v1 + 33) == 7)
  {
    return 0;
  }

  else
  {
    return *(v1 + 33);
  }
}

uint64_t outlined init with take of CLP_LogEntry_AONLoc_Request.ResultOptions(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.decodeMessage<A>(decoder:)()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v6);
    *(v2 + v3) = v10;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v1)
  {
    v13 = &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
    while ((v12 & 1) == 0)
    {
      switch(result)
      {
        case 1:
        case 9:
        case 10:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
          goto LABEL_17;
        case 2:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularFixed64Field(value:)();
          goto LABEL_17;
        case 3:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularSInt32Field(value:)();
          goto LABEL_17;
        case 4:
        case 5:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_17;
        case 6:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBytesField(value:)();
          goto LABEL_17;
        case 8:
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement.BtType and conformance CLP_LogEntry_AONLoc_BtAdvertisement.BtType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_17;
        case 11:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_17;
        case 12:
        case 13:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
LABEL_17:
          swift_endAccess();
          break;
        case 31:
          v14 = v13;
          v15 = v13[94];
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
          lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Type7Info and conformance CLP_LogEntry_AONLoc_Type7Info, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          swift_endAccess();
          v13 = v14;
          break;
        default:
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_AONLoc_Type7Info.decodeMessage<A>(decoder:)()
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

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            v3 = v0;
            v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0) + 32);
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            break;
          case 5:
            v3 = v0;
            v9 = *(type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0) + 36);
            goto LABEL_5;
          case 6:
            v6 = *(type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0) + 40);
            lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Type7Info.Placement and conformance CLP_LogEntry_AONLoc_Type7Info.Placement();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            v3 = v0;
            v7 = *(type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0) + 20);
            goto LABEL_5;
          case 2:
            v3 = v0;
            v8 = *(type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0) + 24);
            goto LABEL_5;
          case 3:
            v3 = v0;
            v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0) + 28);
            goto LABEL_5;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement.BtType and conformance CLP_LogEntry_AONLoc_BtAdvertisement.BtType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtAdvertisement.BtType and conformance CLP_LogEntry_AONLoc_BtAdvertisement.BtType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtAdvertisement.BtType and conformance CLP_LogEntry_AONLoc_BtAdvertisement.BtType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtAdvertisement.BtType and conformance CLP_LogEntry_AONLoc_BtAdvertisement.BtType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtAdvertisement.BtType and conformance CLP_LogEntry_AONLoc_BtAdvertisement.BtType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtAdvertisement.BtType and conformance CLP_LogEntry_AONLoc_BtAdvertisement.BtType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtAdvertisement.BtType and conformance CLP_LogEntry_AONLoc_BtAdvertisement.BtType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtAdvertisement.BtType and conformance CLP_LogEntry_AONLoc_BtAdvertisement.BtType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtAdvertisement.BtType and conformance CLP_LogEntry_AONLoc_BtAdvertisement.BtType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtAdvertisement.BtType and conformance CLP_LogEntry_AONLoc_BtAdvertisement.BtType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtAdvertisement.BtType and conformance CLP_LogEntry_AONLoc_BtAdvertisement.BtType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtAdvertisement.BtType and conformance CLP_LogEntry_AONLoc_BtAdvertisement.BtType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtAdvertisement.BtType and conformance CLP_LogEntry_AONLoc_BtAdvertisement.BtType);
  }

  return result;
}

uint64_t protocol witness for Enum.init(rawValue:) in conformance CLP_LogEntry_AONLoc_BtAdvertisement.BtType@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  if (result == 7)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (result == 18)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  *a2 = v4;
  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_AONLoc_Type7Info@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  *(a2 + v7) = 8;
  return result;
}

uint64_t ALBtNotification.init(pb:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v43 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ALBtAdvertisement();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v44 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v40 - v13;
  v15 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ALDataTypes11ALTimeStampVSgMd, &_s11ALDataTypes11ALTimeStampVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v40 - v21;
  v45 = a2;
  ALBtNotification.init()();
  if (CLP_LogEntry_AONLoc_BtNotification.hasEventReceiptTime.getter())
  {
    CLP_LogEntry_AONLoc_BtNotification.eventReceiptTime.getter(v18);
    ALTimeStamp.init(pb:)(v18);
    v23 = type metadata accessor for ALTimeStamp();
    (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
    ALBtNotification._timestamp.setter();
  }

  v40[0] = a1;
  v24 = *a1;
  v25 = *(*a1 + 16);
  v26 = v44;
  if (v25)
  {
    v27 = v24 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v28 = *(v5 + 72);
    v40[2] = v9 + 32;
    v41 = v28;
    v40[1] = v9 + 8;
    v42 = v8;
    do
    {
      v29 = v43;
      outlined init with copy of CLP_LogEntry_AONLoc_BtAdvertisement(v27, v43, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);
      ALBtAdvertisement.init(pb:)(v29);
      (*(v9 + 16))(v26, v14, v8);
      v30 = ALBtNotification._advertisements.modify();
      v32 = v31;
      v33 = *v31;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v32 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33[2] + 1, 1, v33, &_ss23_ContiguousArrayStorageCy11ALDataTypes17ALBtAdvertisementVGMd, &_ss23_ContiguousArrayStorageCy11ALDataTypes17ALBtAdvertisementVGMR, MEMORY[0x277CE48E8]);
        *v32 = v33;
      }

      v36 = v33[2];
      v35 = v33[3];
      if (v36 >= v35 >> 1)
      {
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v35 > 1, v36 + 1, 1, v33, &_ss23_ContiguousArrayStorageCy11ALDataTypes17ALBtAdvertisementVGMd, &_ss23_ContiguousArrayStorageCy11ALDataTypes17ALBtAdvertisementVGMR, MEMORY[0x277CE48E8]);
        *v32 = v33;
      }

      v33[2] = v36 + 1;
      v37 = v33 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v36;
      v26 = v44;
      v8 = v42;
      (*(v9 + 32))(v37, v44, v42);
      v30(v46, 0);
      (*(v9 + 8))(v14, v8);
      v27 += v41;
      --v25;
    }

    while (v25);
  }

  v38 = v40[0];
  if (CLP_LogEntry_AONLoc_BtNotification.hasIsSimulated.getter())
  {
    CLP_LogEntry_AONLoc_BtNotification.isSimulated.getter();
    ALBtNotification._simulated.setter();
  }

  if (CLP_LogEntry_AONLoc_BtNotification.hasIsApOn.getter())
  {
    CLP_LogEntry_AONLoc_BtNotification.isApOn.getter();
    ALBtNotification._isApOn.setter();
  }

  if (CLP_LogEntry_AONLoc_BtNotification.hasIsScreenOn.getter())
  {
    CLP_LogEntry_AONLoc_BtNotification.isScreenOn.getter();
    ALBtNotification._isScreenOn.setter();
  }

  return outlined destroy of CLP_LogEntry_AONLoc_BtAdvertisement(v38, type metadata accessor for CLP_LogEntry_AONLoc_BtNotification);
}

BOOL CLP_LogEntry_AONLoc_BtNotification.hasEventReceiptTime.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v0 + *(v5 + 24), v4, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  return v7;
}

uint64_t specialized Proto_Gpsd_SuplInitDecodeResult.init(rawValue:)(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x304020100uLL >> (8 * a1));
  }
}

uint64_t sub_23CEB6738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
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
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

BOOL CLP_LogEntry_AONLoc_BtAdvertisement.hasIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  return *(v1 + 144) != 0;
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.identifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  if (*(v1 + 144))
  {
    v2 = *(v1 + 136);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_AONLoc_BtAdvertisement@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a2 + v4) = static CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.defaultInstance;
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v43 = &v35 - v4;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 44) = 0;
  *(v1 + 52) = 0;
  *(v1 + 48) = 1;
  *(v1 + 56) = 1;
  *(v1 + 60) = 0;
  v35 = (v1 + 60);
  *(v1 + 64) = 1;
  *(v1 + 72) = xmmword_23D1B1460;
  *(v1 + 88) = 3;
  *(v1 + 96) = 0;
  v36 = (v1 + 88);
  v37 = (v1 + 96);
  *(v1 + 104) = 1;
  *(v1 + 112) = 0;
  v38 = (v1 + 112);
  *(v1 + 120) = 1;
  *(v1 + 124) = 0;
  v39 = (v1 + 124);
  *(v1 + 152) = 0u;
  *(v1 + 128) = 1;
  *(v1 + 136) = 0u;
  v40 = (v1 + 136);
  v41 = (v1 + 152);
  v5 = OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info;
  v42 = OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info;
  v6 = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  swift_beginAccess();
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v7;
  *(v1 + 24) = v8;
  swift_beginAccess();
  v9 = *(a1 + 32);
  LOBYTE(v7) = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v9;
  *(v1 + 40) = v7;
  swift_beginAccess();
  LODWORD(v9) = *(a1 + 44);
  LOBYTE(v7) = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 44) = v9;
  *(v1 + 48) = v7;
  swift_beginAccess();
  LODWORD(v9) = *(a1 + 52);
  LOBYTE(v7) = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 52) = v9;
  *(v1 + 56) = v7;
  swift_beginAccess();
  LODWORD(v9) = *(a1 + 60);
  LOBYTE(v7) = *(a1 + 64);
  v10 = v35;
  swift_beginAccess();
  *v10 = v9;
  *(v1 + 64) = v7;
  swift_beginAccess();
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  swift_beginAccess();
  v13 = *(v1 + 72);
  v14 = *(v1 + 80);
  *(v1 + 72) = v11;
  *(v1 + 80) = v12;
  outlined copy of Data?(v11, v12);
  outlined consume of Data?(v13, v14);
  swift_beginAccess();
  v15 = *(a1 + 88);
  v16 = v36;
  swift_beginAccess();
  *v16 = v15;
  swift_beginAccess();
  v17 = *(a1 + 96);
  LOBYTE(v16) = *(a1 + 104);
  v18 = v37;
  swift_beginAccess();
  *v18 = v17;
  *(v1 + 104) = v16;
  swift_beginAccess();
  v19 = *(a1 + 112);
  LOBYTE(v16) = *(a1 + 120);
  v20 = v38;
  swift_beginAccess();
  *v20 = v19;
  *(v1 + 120) = v16;
  swift_beginAccess();
  LODWORD(v19) = *(a1 + 124);
  LOBYTE(v16) = *(a1 + 128);
  v21 = v39;
  swift_beginAccess();
  *v21 = v19;
  *(v1 + 128) = v16;
  swift_beginAccess();
  v23 = *(a1 + 136);
  v22 = *(a1 + 144);
  v24 = v40;
  swift_beginAccess();
  v25 = *(v1 + 144);
  *v24 = v23;
  *(v1 + 144) = v22;

  swift_beginAccess();
  v27 = *(a1 + 152);
  v26 = *(a1 + 160);
  v28 = v41;
  swift_beginAccess();
  v29 = *(v1 + 160);
  *v28 = v27;
  *(v1 + 160) = v26;

  v30 = OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info;
  swift_beginAccess();
  v31 = a1 + v30;
  v32 = v43;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v31, v43, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);

  v33 = v42;
  swift_beginAccess();
  outlined assign with take of CLP_LogEntry_AONLoc_Type7Info?(v32, v1 + v33);
  swift_endAccess();
  return v1;
}

uint64_t sub_23CEB6E74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined assign with take of CLP_LogEntry_AONLoc_Type7Info?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for CLP_LogEntry_PrivateData_IonosphericCorrectionSource(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CLP_LogEntry_PrivateData_IonosphericCorrectionSource(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t outlined init with copy of CLP_LogEntry_AONLoc_BtAdvertisement(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ALBtNotifications.init(pb:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = type metadata accessor for ALBtNotification();
  v9 = *(v35 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v35);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CLP_LogEntry_AONLoc_BtIndication(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = (&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = a2;
  ALBtNotifications.init()();
  if (CLP_LogEntry_AONLoc_Indication.hasType.getter() && (v37[0] = CLP_LogEntry_AONLoc_Indication.type.getter(), v37[39] = 6, lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Indication.TypeEnum and conformance CLP_LogEntry_AONLoc_Indication.TypeEnum(), (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0))
  {
    v32 = a1;
    CLP_LogEntry_AONLoc_Indication.btIndication.getter(v16);
    v31 = v16;
    v17 = *v16;
    v18 = *(*v16 + 16);
    if (v18)
    {
      v19 = v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v20 = *(v5 + 72);
      v33 = v9 + 32;
      v34 = v20;
      do
      {
        outlined init with copy of CLP_LogEntry_AONLoc_BtAdvertisement(v19, v8, type metadata accessor for CLP_LogEntry_AONLoc_BtNotification);
        ALBtNotification.init(pb:)(v8, v12);
        v21 = ALBtNotifications._results.modify();
        v23 = v22;
        v24 = *v22;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v23 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24[2] + 1, 1, v24, &_ss23_ContiguousArrayStorageCy11ALDataTypes16ALBtNotificationVGMd, &_ss23_ContiguousArrayStorageCy11ALDataTypes16ALBtNotificationVGMR, MEMORY[0x277CE48C8]);
          *v23 = v24;
        }

        v27 = v24[2];
        v26 = v24[3];
        if (v27 >= v26 >> 1)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v26 > 1, v27 + 1, 1, v24, &_ss23_ContiguousArrayStorageCy11ALDataTypes16ALBtNotificationVGMd, &_ss23_ContiguousArrayStorageCy11ALDataTypes16ALBtNotificationVGMR, MEMORY[0x277CE48C8]);
          *v23 = v24;
        }

        v24[2] = v27 + 1;
        (*(v9 + 32))(v24 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v27, v12, v35);
        v21(v37, 0);
        v19 += v34;
        --v18;
      }

      while (v18);
    }

    a1 = v31;
    CLP_LogEntry_AONLoc_BtIndication.isLastBatch.getter();
    ALBtNotifications._isLastBatch.setter();
    outlined destroy of CLP_LogEntry_AONLoc_BtAdvertisement(v32, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
    v28 = type metadata accessor for CLP_LogEntry_AONLoc_BtIndication;
  }

  else
  {
    v28 = type metadata accessor for CLP_LogEntry_AONLoc_Indication;
  }

  return outlined destroy of CLP_LogEntry_AONLoc_BtAdvertisement(a1, v28);
}

uint64_t CLP_LogEntry_AONLoc_Indication.btIndication.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSgMd, &_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btIndication;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSgMd, &_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSgMR);
  v9 = type metadata accessor for CLP_LogEntry_AONLoc_BtIndication(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of CLP_LogEntry_AONLoc_Request.ResultOptions(v6, a1, type metadata accessor for CLP_LogEntry_AONLoc_BtIndication);
  }

  *a1 = MEMORY[0x277D84F90];
  v11 = a1 + v9[5];
  UnknownStorage.init()();
  v12 = a1 + v9[6];
  *v12 = 0;
  v12[8] = 1;
  *(a1 + v9[7]) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSgMd, &_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSgMR);
  }

  return result;
}

uint64_t outlined init with take of CLP_LogEntry_AONLoc_Type7Info(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ALBtAdvertisement.init(pb:)(uint64_t a1)
{
  v2 = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ALDataTypes16ALBtAdvInfoType7VSgMd, &_s11ALDataTypes16ALBtAdvInfoType7VSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22[-v8];
  v10 = type metadata accessor for ALBtAdvertisement.BtType();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ALDataTypes17ALBtAdvertisementV6BtTypeOSgMd, &_s11ALDataTypes17ALBtAdvertisementV6BtTypeOSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v22[-v17];
  ALBtAdvertisement.init()();
  if (CLP_LogEntry_AONLoc_BtAdvertisement.hasMachContTimeNs.getter())
  {
    CLP_LogEntry_AONLoc_BtAdvertisement.machContTimeNs.getter();
    ALBtAdvertisement._machContTimeNs.setter();
  }

  if (CLP_LogEntry_AONLoc_BtAdvertisement.hasMac.getter())
  {
    CLP_LogEntry_AONLoc_BtAdvertisement.mac.getter();
    ALBtAdvertisement._mac.setter();
  }

  if (CLP_LogEntry_AONLoc_BtAdvertisement.hasRssiDb.getter())
  {
    CLP_LogEntry_AONLoc_BtAdvertisement.rssiDb.getter();
    v22[0] = 0;
    ALBtAdvertisement._rssidB.setter();
  }

  if (CLP_LogEntry_AONLoc_BtAdvertisement.hasAntennaIndex.getter())
  {
    CLP_LogEntry_AONLoc_BtAdvertisement.antennaIndex.getter();
    v22[4] = 0;
    ALBtAdvertisement._antennaIndex.setter();
  }

  if (CLP_LogEntry_AONLoc_BtAdvertisement.hasPayload.getter())
  {
    CLP_LogEntry_AONLoc_BtAdvertisement.payload.getter();
    ALBtAdvertisement._payload.setter();
  }

  if (CLP_LogEntry_AONLoc_BtAdvertisement.hasChannel.getter())
  {
    CLP_LogEntry_AONLoc_BtAdvertisement.channel.getter();
    v22[8] = 0;
    ALBtAdvertisement._channel.setter();
  }

  if (CLP_LogEntry_AONLoc_BtAdvertisement.hasProductID.getter())
  {
    CLP_LogEntry_AONLoc_BtAdvertisement.productID.getter();
    v22[12] = 0;
    ALBtAdvertisement._productID.setter();
  }

  if (CLP_LogEntry_AONLoc_BtAdvertisement.hasIdentifier.getter())
  {
    CLP_LogEntry_AONLoc_BtAdvertisement.identifier.getter();
    ALBtAdvertisement._identifier.setter();
  }

  if (CLP_LogEntry_AONLoc_BtAdvertisement.hasIdsDeviceID.getter())
  {
    CLP_LogEntry_AONLoc_BtAdvertisement.idsDeviceID.getter();
    ALBtAdvertisement._idsDeviceID.setter();
  }

  if (CLP_LogEntry_AONLoc_BtAdvertisement.hasDeviceFlags.getter())
  {
    CLP_LogEntry_AONLoc_BtAdvertisement.deviceFlags.getter();
    ALBtAdvertisement._deviceFlags.setter();
  }

  if (CLP_LogEntry_AONLoc_BtAdvertisement.hasDiscoveryFlags.getter())
  {
    CLP_LogEntry_AONLoc_BtAdvertisement.discoveryFlags.getter();
    ALBtAdvertisement._discoveryFlags.setter();
  }

  if (CLP_LogEntry_AONLoc_BtAdvertisement.hasBtType.getter())
  {
    v19 = CLP_LogEntry_AONLoc_BtAdvertisement.btType.getter();
    (*(v11 + 104))(v14, **(&unk_278BC48C0 + v19), v10);
    (*(v11 + 32))(v18, v14, v10);
    (*(v11 + 56))(v18, 0, 1, v10);
    ALBtAdvertisement._type.setter();
  }

  if (CLP_LogEntry_AONLoc_BtAdvertisement.hasType7Info.getter())
  {
    CLP_LogEntry_AONLoc_BtAdvertisement.type7Info.getter(v5);
    ALBtAdvInfoType7.init(pb:)(v5);
    v20 = type metadata accessor for ALBtAdvInfoType7();
    (*(*(v20 - 8) + 56))(v9, 0, 1, v20);
    ALBtAdvertisement._type7Info.setter();
  }

  return outlined destroy of CLP_LogEntry_AONLoc_BtAdvertisement(a1, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);
}

BOOL CLP_LogEntry_AONLoc_BtAdvertisement.hasMachContTimeNs.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  return (*(v1 + 24) & 1) == 0;
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.machContTimeNs.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  if (*(v1 + 24))
  {
    return 0;
  }

  else
  {
    return *(v1 + 16);
  }
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.mac.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  if (*(v1 + 40))
  {
    return 0;
  }

  else
  {
    return *(v1 + 32);
  }
}

BOOL CLP_LogEntry_AONLoc_BtAdvertisement.hasMac.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  return (*(v1 + 40) & 1) == 0;
}

BOOL CLP_LogEntry_AONLoc_BtAdvertisement.hasRssiDb.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  return (*(v1 + 48) & 1) == 0;
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.rssiDb.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  if (*(v1 + 48))
  {
    return 0;
  }

  else
  {
    return *(v1 + 44);
  }
}

BOOL CLP_LogEntry_AONLoc_BtAdvertisement.hasAntennaIndex.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  return (*(v1 + 64) & 1) == 0;
}

BOOL CLP_LogEntry_AONLoc_BtAdvertisement.hasPayload.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  return *(v1 + 80) >> 60 != 15;
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.channel.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  if (*(v1 + 56))
  {
    return 0;
  }

  else
  {
    return *(v1 + 52);
  }
}

BOOL CLP_LogEntry_AONLoc_BtAdvertisement.hasChannel.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  return (*(v1 + 56) & 1) == 0;
}

BOOL CLP_LogEntry_AONLoc_BtAdvertisement.hasProductID.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  return (*(v1 + 128) & 1) == 0;
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.productID.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  if (*(v1 + 128))
  {
    return 0;
  }

  else
  {
    return *(v1 + 124);
  }
}

void *__swift_store_extra_inhabitant_index_503Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WifiNotificationType and conformance CLP_LogEntry_PrivateData_WifiNotificationType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiNotificationType and conformance CLP_LogEntry_PrivateData_WifiNotificationType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiNotificationType and conformance CLP_LogEntry_PrivateData_WifiNotificationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiNotificationType and conformance CLP_LogEntry_PrivateData_WifiNotificationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiNotificationType and conformance CLP_LogEntry_PrivateData_WifiNotificationType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiNotificationType and conformance CLP_LogEntry_PrivateData_WifiNotificationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiNotificationType and conformance CLP_LogEntry_PrivateData_WifiNotificationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiNotificationType and conformance CLP_LogEntry_PrivateData_WifiNotificationType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiNotificationType and conformance CLP_LogEntry_PrivateData_WifiNotificationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiNotificationType and conformance CLP_LogEntry_PrivateData_WifiNotificationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiNotificationType and conformance CLP_LogEntry_PrivateData_WifiNotificationType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiNotificationType and conformance CLP_LogEntry_PrivateData_WifiNotificationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiNotificationType and conformance CLP_LogEntry_PrivateData_WifiNotificationType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CLP_LogEntry_PrivateData_WifiScanType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CLP_LogEntry_PrivateData_WifiScanType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_WifiAssociationState@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = *(a1 + 24);
  *(a2 + v4) = 2;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t CLP_LogEntry_PrivateData_WifiAssociationState.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0) + 20);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else if (result == 2)
      {
        v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0) + 24);
        type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAccessPoint and conformance CLP_LogEntry_PrivateData_WifiAccessPoint, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_WifiAccessPoint@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  *(a2 + v8) = 4;
  v10 = a1[10];
  v11 = a2 + a1[9];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1[12];
  *(a2 + a1[11]) = 2;
  *(a2 + v13) = 2;
  v14 = a1[14];
  *(a2 + a1[13]) = 4;
  v15 = a2 + v14;
  *v15 = 0;
  *(v15 + 4) = 1;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_WifiAccessPoint.decodeMessage<A>(decoder:)()
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
        break;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v11 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0) + 28);
          dispatch thunk of Decoder.decodeSingularSInt32Field(value:)();
          goto LABEL_5;
        }

        if (result != 4)
        {
          v4 = v0;
          v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0) + 36);
LABEL_17:
          v0 = v4;
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_5;
        }

        v13 = v0;
        v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0) + 32);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WifiAccessPointMode and conformance CLP_LogEntry_PrivateData_WifiAccessPointMode();
LABEL_29:
        v0 = v13;
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        goto LABEL_5;
      }

      if (result == 1)
      {
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0) + 20);
        dispatch thunk of Decoder.decodeSingularFixed64Field(value:)();
      }

      else if (result == 2)
      {
        v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0) + 24);
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result <= 7)
    {
      if (result == 6)
      {
        v10 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0) + 40);
        dispatch thunk of Decoder.decodeSingularFloatField(value:)();
        goto LABEL_5;
      }

      v8 = v0;
      v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0) + 44);
      goto LABEL_26;
    }

    if (result == 8)
    {
      v8 = v0;
      v12 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0) + 48);
LABEL_26:
      v0 = v8;
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      goto LABEL_5;
    }

    if (result != 9)
    {
      if (result != 10)
      {
        goto LABEL_5;
      }

      v4 = v0;
      v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0) + 56);
      goto LABEL_17;
    }

    v13 = v0;
    v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0) + 52);
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WifiRfBand and conformance CLP_LogEntry_PrivateData_WifiRfBand();
    goto LABEL_29;
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_Accel@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = &a2[*(a1 + 20)];
  UnknownStorage.init()();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t CLP_LogEntry_PrivateData_WifiScanResult.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0) + 24);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAccessPoint and conformance CLP_LogEntry_PrivateData_WifiAccessPoint, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WifiRfBand and conformance CLP_LogEntry_PrivateData_WifiRfBand()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiRfBand and conformance CLP_LogEntry_PrivateData_WifiRfBand;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiRfBand and conformance CLP_LogEntry_PrivateData_WifiRfBand)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiRfBand and conformance CLP_LogEntry_PrivateData_WifiRfBand);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiRfBand and conformance CLP_LogEntry_PrivateData_WifiRfBand;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiRfBand and conformance CLP_LogEntry_PrivateData_WifiRfBand)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiRfBand and conformance CLP_LogEntry_PrivateData_WifiRfBand);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiRfBand and conformance CLP_LogEntry_PrivateData_WifiRfBand;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiRfBand and conformance CLP_LogEntry_PrivateData_WifiRfBand)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiRfBand and conformance CLP_LogEntry_PrivateData_WifiRfBand);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiRfBand and conformance CLP_LogEntry_PrivateData_WifiRfBand;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiRfBand and conformance CLP_LogEntry_PrivateData_WifiRfBand)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiRfBand and conformance CLP_LogEntry_PrivateData_WifiRfBand);
  }

  return result;
}

unint64_t specialized CLP_LogEntry_PrivateData_SvReferencePoint.init(rawValue:)(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CLP_LogEntry_PrivateData_SvReferencePoint(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CLP_LogEntry_PrivateData_SvReferencePoint(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t __swift_store_extra_inhabitant_index_692Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance CLP_LogEntry_PrivateData_WifiScanType@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s10ALProtobuf37CLP_LogEntry_PrivateData_WifiScanTypeO8rawValueACSgSi_tcfC_0(a1);
  *a2 = result;
  return result;
}

unint64_t _s10ALProtobuf37CLP_LogEntry_PrivateData_WifiScanTypeO8rawValueACSgSi_tcfC_0(unint64_t result)
{
  if (result >= 0xF)
  {
    return 15;
  }

  return result;
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance CLP_LogEntry_PrivateData_SvReferencePoint@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CLP_LogEntry_PrivateData_SvReferencePoint.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t CLP_LogEntry_AONLoc_Indication.wifiIndication.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSgMd, &_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiIndication;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSgMd, &_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSgMR);
  v9 = type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of CLP_LogEntry_AONLoc_Request.ResultOptions(v6, a1, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication);
  }

  *a1 = MEMORY[0x277D84F90];
  v11 = a1 + v9[5];
  UnknownStorage.init()();
  v12 = a1 + v9[6];
  *v12 = 0;
  v12[8] = 1;
  *(a1 + v9[7]) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSgMd, &_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSgMR);
  }

  return result;
}

BOOL CLP_LogEntry_AONLoc_Indication.hasGpsdResponse.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  v13 = *(v4 + *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20));
  v14 = *a3;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v13 + v14, v12, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v12, 1, v15) != 1;
  outlined destroy of Any?(v12, a1, a2);
  return v16;
}

BOOL CLP_LogEntry_AONLoc_BtAdvertisement.hasDeviceFlags.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  return (*(v1 + 104) & 1) == 0;
}

BOOL CLP_LogEntry_AONLoc_BtAdvertisement.hasIdsDeviceID.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  return *(v1 + 160) != 0;
}

BOOL CLP_LogEntry_PrivateData_WifiNotification.hasType.getter(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  return *(v3 + v4) != 15;
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.deviceFlags.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  if (*(v1 + 104))
  {
    return 0;
  }

  else
  {
    return *(v1 + 96);
  }
}

BOOL CLP_LogEntry_AONLoc_BtAdvertisement.hasDiscoveryFlags.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  return (*(v1 + 120) & 1) == 0;
}

uint64_t CLP_LogEntry_PrivateData_WifiNotification.type.getter(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  if (*(v3 + v4) == 15)
  {
    return 0;
  }

  else
  {
    return *(v3 + v4);
  }
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.discoveryFlags.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  if (*(v1 + 120))
  {
    return 0;
  }

  else
  {
    return *(v1 + 112);
  }
}

BOOL CLP_LogEntry_AONLoc_BtAdvertisement.hasBtType.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  return *(v1 + 88) != 3;
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.btType.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  if (*(v1 + 88) == 3)
  {
    return 0;
  }

  else
  {
    return *(v1 + 88);
  }
}

uint64_t ALWiFiNotification.NotiType.init(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ALWiFiNotification.NotiType();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_278BC4C88 + a1);

  return v5(a2, v6, v4);
}

BOOL CLP_LogEntry_AONLoc_BtAdvertisement.hasType7Info.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
  return v8;
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.type7Info.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
  v9 = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of CLP_LogEntry_AONLoc_Type7Info(v6, a1, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
  }

  UnknownStorage.init()();
  *(a1 + v9[5]) = 2;
  *(a1 + v9[6]) = 2;
  *(a1 + v9[7]) = 2;
  *(a1 + v9[8]) = 2;
  *(a1 + v9[9]) = 2;
  *(a1 + v9[10]) = 8;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
  }

  return result;
}

uint64_t ALBtAdvInfoType7.init(pb:)(uint64_t a1)
{
  v2 = type metadata accessor for ALBtAdvInfoType7.Placement();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ALDataTypes16ALBtAdvInfoType7V9PlacementOSgMd, &_s11ALDataTypes16ALBtAdvInfoType7V9PlacementOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v13 - v9;
  ALBtAdvInfoType7.init()();
  if (CLP_LogEntry_AONLoc_Type7Info.hasIsSameAccount.getter())
  {
    CLP_LogEntry_AONLoc_Type7Info.isSameAccount.getter();
    ALBtAdvInfoType7._isSameAccount.setter();
  }

  if (CLP_LogEntry_AONLoc_Type7Info.hasIsFamily.getter())
  {
    CLP_LogEntry_AONLoc_Type7Info.isFamily.getter();
    ALBtAdvInfoType7._isFamily.setter();
  }

  if (CLP_LogEntry_AONLoc_Type7Info.hasIsSharedHome.getter())
  {
    CLP_LogEntry_AONLoc_Type7Info.isSharedHome.getter();
    ALBtAdvInfoType7._isSharedHome.setter();
  }

  if (CLP_LogEntry_AONLoc_Type7Info.hasIsLeftBud.getter())
  {
    CLP_LogEntry_AONLoc_Type7Info.isLeftBud.getter();
    ALBtAdvInfoType7._isLeftBud.setter();
  }

  if (CLP_LogEntry_AONLoc_Type7Info.hasIsCase.getter())
  {
    CLP_LogEntry_AONLoc_Type7Info.isCase.getter();
    ALBtAdvInfoType7._isCase.setter();
  }

  if (CLP_LogEntry_AONLoc_Type7Info.hasPlacement.getter())
  {
    v11 = CLP_LogEntry_AONLoc_Type7Info.placement.getter();
    (*(v3 + 104))(v6, **(&unk_278BC48D8 + v11), v2);
    (*(v3 + 32))(v10, v6, v2);
    (*(v3 + 56))(v10, 0, 1, v2);
    ALBtAdvInfoType7._placement.setter();
  }

  return outlined destroy of CLP_LogEntry_AONLoc_BtAdvertisement(a1, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
}

uint64_t outlined destroy of CLP_LogEntry_AONLoc_BtAdvertisement(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.__deallocating_deinit()
{
  outlined consume of Data?(v0[9], v0[10]);
  v1 = v0[18];

  v2 = v0[20];

  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_23CEB9D70()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23CEB9DA8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23CEB9DE0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23CEB9E18()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23CEB9E50()
{
  MEMORY[0x23EEDAFB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23CEB9E90()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23CEB9EC8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23CEB9F08(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 249)
  {
    v12 = *(a1 + a3[8]);
    if (v12 <= 6)
    {
      v13 = 6;
    }

    else
    {
      v13 = *(a1 + a3[8]);
    }

    v14 = v13 - 6;
    if (v12 >= 6)
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVSgMd, &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVSgMR);
    v16 = *(v15 - 8);
    if (*(v16 + 84) == a2)
    {
      v8 = v15;
      v9 = *(v16 + 48);
      v10 = a1 + a3[9];
      goto LABEL_3;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf18Proto_Gpsd_RequestVSgMd, &_s10ALProtobuf18Proto_Gpsd_RequestVSgMR);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[10];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_23CEBA098(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 249)
  {
    *(a1 + a4[8]) = a2 + 6;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVSgMd, &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVSgMR);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[9];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf18Proto_Gpsd_RequestVSgMd, &_s10ALProtobuf18Proto_Gpsd_RequestVSgMR);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[10];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_23CEBA220(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_23CEBA2CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23CEBA370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
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

uint64_t sub_23CEBA42C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
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

uint64_t sub_23CEBA4E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestVSgMd, &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestVSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30CLP_LogEntry_AONLoc_IndicationVSgMd, &_s10ALProtobuf30CLP_LogEntry_AONLoc_IndicationVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_23CEBA63C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestVSgMd, &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestVSgMR);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30CLP_LogEntry_AONLoc_IndicationVSgMd, &_s10ALProtobuf30CLP_LogEntry_AONLoc_IndicationVSgMR);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

unint64_t specialized Proto_Gpsd_LtlInfoType.init(rawValue:)(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t specialized Proto_Gnss_GnssContent.init(rawValue:)(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t specialized Proto_Gnss_TimeQuality.init(rawValue:)(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

uint64_t sub_23CEBA8A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 <= 5)
    {
      v11 = 5;
    }

    else
    {
      v11 = *(a1 + *(a3 + 24));
    }

    v12 = v11 - 5;
    if (v10 >= 5)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23CEBA96C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 5;
  }

  return result;
}

uint64_t sub_23CEBAABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_23CEBAC14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_23CEBAD78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 <= 6)
    {
      v11 = 6;
    }

    else
    {
      v11 = *(a1 + *(a3 + 28));
    }

    v12 = v11 - 6;
    if (v10 >= 6)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23CEBAE3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 6;
  }

  return result;
}

uint64_t sub_23CEBAEFC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMR);
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

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMd, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMR);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[8];

  return v17(v18, a2, v16);
}

uint64_t sub_23CEBB0A8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMR);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMd, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMR);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[8];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_23CEBB260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 <= 3)
    {
      v11 = 3;
    }

    else
    {
      v11 = *(a1 + *(a3 + 36));
    }

    v12 = v11 - 3;
    if (v10 >= 3)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23CEBB324(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2 + 3;
  }

  return result;
}

uint64_t sub_23CEBB404(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_23CEBB4B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23CEBB554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 0xD)
    {
      v11 = 13;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 13;
    if (v10 >= 0xD)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23CEBB618(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 13;
  }

  return result;
}

uint64_t sub_23CEBB6D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 250)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 <= 5)
    {
      v11 = 5;
    }

    else
    {
      v11 = *(a1 + *(a3 + 24));
    }

    v12 = v11 - 5;
    if (v10 >= 5)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMR);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 28);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_23CEBB804(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 250)
  {
    *(a1 + *(a4 + 24)) = a2 + 5;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_23CEBB958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 249)
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 <= 6)
    {
      v11 = 6;
    }

    else
    {
      v11 = *(a1 + *(a3 + 28));
    }

    v12 = v11 - 6;
    if (v10 >= 6)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 32);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_23CEBBA8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 249)
  {
    *(a1 + *(a4 + 28)) = a2 + 6;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_23CEBBBE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23CEBBCDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23CEBBDE4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 251)
  {
    v14 = *(a1 + a3[7]);
    if (v14 <= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = *(a1 + a3[7]);
    }

    v16 = v15 - 4;
    if (v14 >= 4)
    {
      return v16;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMR);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[8];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_23CEBBF74(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 251)
  {
    *(a1 + a4[7]) = a2 + 4;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMR);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[8];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_23CEBC1DC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ExtensionFieldValueSet();
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

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_23CEBC37C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for ExtensionFieldValueSet();
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

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_23CEBC528(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23CEBC594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23CEBC604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
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

uint64_t sub_23CEBC6C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
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

uint64_t _s10ALProtobuf42CLP_LogEntry_PrivateData_SignalEnvironmentV0gH4TypeO8rawValueAESgSi_tcfC_0(uint64_t a1)
{
  if ((a1 + 1) < 8)
  {
    return a1 + 1;
  }

  else
  {
    return 8;
  }
}

uint64_t sub_23CEBCC24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 <= 4)
    {
      v11 = 4;
    }

    else
    {
      v11 = *(a1 + *(a3 + 32));
    }

    v12 = v11 - 4;
    if (v10 >= 4)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23CEBCCE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2 + 4;
  }

  return result;
}

uint64_t sub_23CEBCDA0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_23CEBCE4C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23CEBCF18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 183)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 0x48)
    {
      v11 = 72;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 72;
    if (v10 >= 0x48)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 28);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_23CEBD04C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 183)
  {
    *(a1 + *(a4 + 20)) = a2 + 72;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_23CEBD1A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
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

uint64_t sub_23CEBD26C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
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

uint64_t sub_23CEBD328(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 236)
  {
    v14 = *(a1 + a3[7]);
    if (v14 <= 0x13)
    {
      v15 = 19;
    }

    else
    {
      v15 = *(a1 + a3[7]);
    }

    v16 = v15 - 19;
    if (v14 >= 0x13)
    {
      return v16;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMR);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[9];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_23CEBD4B8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 236)
  {
    *(a1 + a4[7]) = a2 + 19;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMR);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[9];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_23CEBD640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 2)
  {
    v15 = ((v14 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v15 = -2;
  }

  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_23CEBD774(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_23CEBD888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 3)
    {
      v11 = 3;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 3;
    if (v10 >= 3)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23CEBD94C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  return result;
}

uint64_t sub_23CEBDA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 60));
  if (v14 >= 2)
  {
    v15 = ((v14 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v15 = -2;
  }

  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_23CEBDB60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 60)) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_23CEBDCC4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnknownStorage();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_23CEBDDF4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_23CEBDF3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 <= 8)
  {
    v15 = 8;
  }

  else
  {
    v15 = *(a1 + *(a3 + 24));
  }

  v16 = v15 - 8;
  if (v14 >= 8)
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23CEBE05C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 8;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_23CEBE170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 <= 4)
    {
      v11 = 4;
    }

    else
    {
      v11 = *(a1 + *(a3 + 24));
    }

    v12 = v11 - 4;
    if (v10 >= 4)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23CEBE234(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 4;
  }

  return result;
}

uint64_t sub_23CEBE344(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
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

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassVSgMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[9]);
  if (v16 >= 2)
  {
    v17 = ((v16 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v17 = -2;
  }

  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_23CEBE4CC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassVSgMR);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[9]) = a2 + 2;
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

uint64_t sub_23CEBE634(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
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

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf041CLP_LogEntry_PrivateData_MotionTypeDeviceG0VSgMd, &_s10ALProtobuf041CLP_LogEntry_PrivateData_MotionTypeDeviceG0VSgMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  if (a2 == 253)
  {
    v16 = *(a1 + a3[7]);
    if (v16 >= 2)
    {
      v17 = ((v16 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v17 = -2;
    }

    if (v17 < 0)
    {
      v17 = -1;
    }

    return (v17 + 1);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_SensorFusionStatusVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SensorFusionStatusVSgMR);
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[10];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_23CEBE82C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
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

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf041CLP_LogEntry_PrivateData_MotionTypeDeviceG0VSgMd, &_s10ALProtobuf041CLP_LogEntry_PrivateData_MotionTypeDeviceG0VSgMR);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  if (a3 == 253)
  {
    *(a1 + a4[7]) = a2 + 2;
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_SensorFusionStatusVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SensorFusionStatusVSgMR);
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + a4[10];

    return v18(v19, a2, a2, v17);
  }

  return result;
}

uint64_t sub_23CEBEA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 48);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23CEBEB04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 48);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23CEBEC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 <= 4)
  {
    v15 = 4;
  }

  else
  {
    v15 = *(a1 + *(a3 + 24));
  }

  v16 = v15 - 4;
  if (v14 >= 4)
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23CEBED54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 4;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_23CEBEE70(char *a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[8]];

  return v15(v16, a2, v14);
}

char *sub_23CEBEFF4(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMR);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[8]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_23CEBF178(char *a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMd, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMR);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMd, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[10]];

  return v15(v16, a2, v14);
}

char *sub_23CEBF2FC(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMd, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMd, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMR);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[10]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_23CEBF480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 4)
    {
      v11 = 4;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 4;
    if (v10 >= 4)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23CEBF544(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 4;
  }

  return result;
}

uint64_t sub_23CEBF604(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
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

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMR);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[8];

  return v17(v18, a2, v16);
}

uint64_t sub_23CEBF7B0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
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

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMR);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMR);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[8];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_23CEBF968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
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

uint64_t sub_23CEBFA34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

unint64_t _s10ALProtobuf30Proto_Gnss_Emergency_ShapeTypeO8rawValueACSgSi_tcfC_0(unint64_t result)
{
  if (result >= 9)
  {
    return 9;
  }

  return result;
}

uint64_t _s10ALProtobuf28Proto_Gnss_Emergency_AidMaskO8rawValueACSgSi_tcfC_0(uint64_t result)
{
  if (result > 15)
  {
    if (result <= 63)
    {
      if (result == 16)
      {
        return 5;
      }

      if (result == 32)
      {
        return 6;
      }
    }

    else
    {
      switch(result)
      {
        case 64:
          return 7;
        case 128:
          return 8;
        case 256:
          return 9;
      }
    }

    return 10;
  }

  if (result <= 1)
  {
    if (result > 1)
    {
      return 10;
    }
  }

  else if (result != 2)
  {
    if (result == 4)
    {
      return 3;
    }

    if (result == 8)
    {
      return 4;
    }

    return 10;
  }

  return result;
}

uint64_t sub_23CEBFF04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
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

uint64_t sub_23CEBFFD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_23CEC008C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_23CEC0138(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23CEC01E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 <= 4)
  {
    v15 = 4;
  }

  else
  {
    v15 = *(a1 + *(a3 + 24));
  }

  v16 = v15 - 4;
  if (v14 >= 4)
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23CEC0304(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 4;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_23CEC0418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
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
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 36);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_23CEC0558(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_23CEC068C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 36));
  if (v14 <= 5)
  {
    v15 = 5;
  }

  else
  {
    v15 = *(a1 + *(a3 + 36));
  }

  v16 = v15 - 5;
  if (v14 >= 5)
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23CEC07AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36)) = a2 + 5;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_23CEC0908(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMR);
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

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMR);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_23CEC0AB4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMR);
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

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMR);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMR);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_23CEC0C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 251)
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 <= 4)
    {
      v11 = 4;
    }

    else
    {
      v11 = *(a1 + *(a3 + 32));
    }

    v12 = v11 - 4;
    if (v10 >= 4)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 40);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_23CEC0DC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 251)
  {
    *(a1 + *(a4 + 32)) = a2 + 4;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_23CEC0F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23CEC1040(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23CEC1148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 36);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23CEC1244(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 36);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23CEC1374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 <= 4)
    {
      v11 = 4;
    }

    else
    {
      v11 = *(a1 + *(a3 + 36));
    }

    v12 = v11 - 4;
    if (v10 >= 4)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23CEC1438(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2 + 4;
  }

  return result;
}

uint64_t sub_23CEC1518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 246)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 9)
    {
      v11 = 9;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 9;
    if (v10 >= 9)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMd, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMR);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 24);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_23CEC164C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 246)
  {
    *(a1 + *(a4 + 20)) = a2 + 9;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMd, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_23CEC1778(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMR);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMd, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMR);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_23CEC1978(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMR);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMR);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMd, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMR);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[8];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_23CEC1BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 <= 6)
    {
      v11 = 6;
    }

    else
    {
      v11 = *(a1 + *(a3 + 36));
    }

    v12 = v11 - 6;
    if (v10 >= 6)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23CEC1C78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2 + 6;
  }

  return result;
}

uint64_t sub_23CEC1D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 248)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 7)
    {
      v11 = 7;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 7;
    if (v10 >= 7)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMd, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMR);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 24);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_23CEC1E6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 248)
  {
    *(a1 + *(a4 + 20)) = a2 + 7;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMd, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_23CEC1F98(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 249)
  {
    v12 = *(a1 + a3[5]);
    if (v12 <= 6)
    {
      v13 = 6;
    }

    else
    {
      v13 = *(a1 + a3[5]);
    }

    v14 = v13 - 6;
    if (v12 >= 6)
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMd, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMR);
    v16 = *(v15 - 8);
    if (*(v16 + 84) == a2)
    {
      v8 = v15;
      v9 = *(v16 + 48);
      v10 = a1 + a3[10];
      goto LABEL_3;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMd, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMR);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[12];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_23CEC2128(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 249)
  {
    *(a1 + a4[5]) = a2 + 6;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMd, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMR);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[10];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMd, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMR);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[12];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_23CEC22B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 44));
    if (v10 <= 6)
    {
      v11 = 6;
    }

    else
    {
      v11 = *(a1 + *(a3 + 44));
    }

    v12 = v11 - 6;
    if (v10 >= 6)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23CEC2374(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 44)) = a2 + 6;
  }

  return result;
}

uint64_t sub_23CEC24D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 64));
    if (v10 <= 6)
    {
      v11 = 6;
    }

    else
    {
      v11 = *(a1 + *(a3 + 64));
    }

    v12 = v11 - 6;
    if (v10 >= 6)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23CEC2598(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 64)) = a2 + 6;
  }

  return result;
}

uint64_t sub_23CEC2698(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
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
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMR);
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMR);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[8];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_23CEC2834(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 8) = a2;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMR);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMR);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_23CEC29C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 68));
    if (v10 <= 7)
    {
      v11 = 7;
    }

    else
    {
      v11 = *(a1 + *(a3 + 68));
    }

    v12 = v11 - 7;
    if (v10 >= 7)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23CEC2A88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 68)) = a2 + 7;
  }

  return result;
}

uint64_t sub_23CEC2B40(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnknownStorage();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_23CEC2C70(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_23CEC2DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 249)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 <= 6)
    {
      v11 = 6;
    }

    else
    {
      v11 = *(a1 + *(a3 + 24));
    }

    v12 = v11 - 6;
    if (v10 >= 6)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 28);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_23CEC2EDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 249)
  {
    *(a1 + *(a4 + 24)) = a2 + 6;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_23CEC3008(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_15:

    return v9(v10, a2, v8);
  }

  if (a2 == 253)
  {
    v11 = *(a1 + a3[11]);
    if (v11 >= 2)
    {
      v12 = ((v11 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v12 = -2;
    }

    if (v12 < 0)
    {
      v12 = -1;
    }

    return (v12 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMR);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[12];
LABEL_14:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_15;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMR);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[14];
    goto LABEL_14;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMR);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[16];

  return v19(v20, a2, v18);
}

uint64_t sub_23CEC3200(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 253)
  {
    *(a1 + a4[11]) = a2 + 2;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[12];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMR);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[14];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMR);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[16];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_23CEC3594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 56));
    if (v10 <= 6)
    {
      v11 = 6;
    }

    else
    {
      v11 = *(a1 + *(a3 + 56));
    }

    v12 = v11 - 6;
    if (v10 >= 6)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23CEC3658(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 56)) = a2 + 6;
  }

  return result;
}

uint64_t sub_23CEC3718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_23CEC37F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 2;
  }

  return result;
}

uint64_t sub_23CEC38B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 253)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_23CEC39F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 253)
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_23CEC3B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 <= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = *(a1 + *(a3 + 36));
    }

    v12 = v11 - 2;
    if (v10 >= 2)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23CEC3BE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2 + 2;
  }

  return result;
}

uint64_t sub_23CEC3CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
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

uint64_t sub_23CEC3D8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
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

uint64_t sub_23CEC3E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_23CEC3F0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

uint64_t sub_23CEC3FD4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnknownStorage();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_23CEC4104(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_23CEC4478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_23CEC4550(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 2;
  }

  return result;
}

uint64_t sub_23CEC4610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 <= 3)
    {
      v11 = 3;
    }

    else
    {
      v11 = *(a1 + *(a3 + 24));
    }

    v12 = v11 - 3;
    if (v10 >= 3)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23CEC46D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 3;
  }

  return result;
}

uint64_t sub_23CEC479C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf19Proto_Gnss_PositionVSgMd, &_s10ALProtobuf19Proto_Gnss_PositionVSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 2)
  {
    v15 = ((v14 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v15 = -2;
  }

  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_23CEC48D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf19Proto_Gnss_PositionVSgMd, &_s10ALProtobuf19Proto_Gnss_PositionVSgMR);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_23CEC49EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_23CEC4AC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2 + 2;
  }

  return result;
}

uint64_t sub_23CEC4B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 <= 5)
    {
      v11 = 5;
    }

    else
    {
      v11 = *(a1 + *(a3 + 28));
    }

    v12 = v11 - 5;
    if (v10 >= 5)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23CEC4C40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 5;
  }

  return result;
}

uint64_t sub_23CEC4CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 <= 4)
    {
      v11 = 4;
    }

    else
    {
      v11 = *(a1 + *(a3 + 24));
    }

    v12 = v11 - 4;
    if (v10 >= 4)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}