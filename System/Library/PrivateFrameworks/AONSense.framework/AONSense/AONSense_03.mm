void CLP_LogEntry_PrivateData_SyncState.sbasL1.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      CLP_LogEntry_PrivateData_SyncState._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      CLP_LogEntry_PrivateData_SyncState._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_SyncState.hasSbasL1.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_SyncState.clearSbasL1()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    CLP_LogEntry_PrivateData_SyncState._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_SyncState.navicL5.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
  }

  UnknownStorage.init()();
  *(a1 + v9[5]) = 2;
  *(a1 + v9[6]) = 2;
  *(a1 + v9[7]) = 2;
  *(a1 + v9[8]) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_SyncState.navicL5.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    CLP_LogEntry_PrivateData_SyncState._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_SyncState.navicL5.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + v9[5]) = 2;
    *(v14 + v9[6]) = 2;
    *(v14 + v9[7]) = 2;
    *(v14 + v9[8]) = 2;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
  }

  return CLP_LogEntry_PrivateData_SyncState.navicL5.modify;
}

void CLP_LogEntry_PrivateData_SyncState.navicL5.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      CLP_LogEntry_PrivateData_SyncState._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      CLP_LogEntry_PrivateData_SyncState._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_SyncState.hasNavicL5.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_SyncState.clearNavicL5()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    CLP_LogEntry_PrivateData_SyncState._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_SvTime.timeNanoseconds.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_SvTime.timeNanoseconds.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0) + 20);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_SvTime.clearTimeNanoseconds()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_SvTime.timeUncNanoseconds.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_SvTime.timeUncNanoseconds.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0) + 24);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_SvTime.clearTimeUncNanoseconds()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_SvTime.uncertaintyAdjustedByExternalTool.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_SvTime.uncertaintyAdjustedByExternalTool.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Request.type.modify;
}

double CLP_LogEntry_PrivateData_SvTime.timeNanoseconds.getter(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 20);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_FrequencyOffset.frequencyOffsetPpb.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_FrequencyOffset.frequencyOffsetPpb.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0) + 20);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_FrequencyOffset.clearFrequencyOffsetPpb()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double CLP_LogEntry_PrivateData_SvTime.timeUncNanoseconds.getter(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 24);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_FrequencyOffset.frequencyOffsetUncPpb.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_FrequencyOffset.frequencyOffsetUncPpb.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0) + 24);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_FrequencyOffset.clearFrequencyOffsetUncPpb()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_FrequencyOffset.uncertaintyAdjustedByExternalTool.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_FrequencyOffset.uncertaintyAdjustedByExternalTool.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

int *CLP_LogEntry_PrivateData_SvTime.init()@<X0>(uint64_t (*a1)(void)@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  UnknownStorage.init()();
  result = a1(0);
  v7 = a3 + result[5];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a3 + result[6];
  *v8 = 0;
  *(v8 + 8) = 1;
  *(a3 + result[7]) = a2;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking.frequencyOffsetPpb.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking.frequencyOffsetPpb.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0) + 20);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking.clearFrequencyOffsetPpb()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking.frequencyOffsetUncPpb.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking.frequencyOffsetUncPpb.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0) + 24);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking.clearFrequencyOffsetUncPpb()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking.cycleSlipDetected.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking.cycleSlipDetected.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking.uncertaintyAdjustedByExternalTool.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking.uncertaintyAdjustedByExternalTool.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

int *CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 8) = 1;
  *(a1 + result[7]) = 2;
  *(a1 + result[8]) = 2;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_PhaseTracking.phaseStartTimeNanoseconds.setter(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_PhaseTracking.phaseStartTimeNanoseconds.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0) + 20);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_PhaseTracking.clearPhaseStartTimeNanoseconds()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_PhaseTracking.phaseEndTimeNanoseconds.getter()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0) + 24));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_PhaseTracking.phaseEndTimeNanoseconds.setter(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_PhaseTracking.phaseEndTimeNanoseconds.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0) + 24);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_PhaseTracking.clearPhaseEndTimeNanoseconds()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_PhaseTracking.accumulatedPhaseNanoseconds.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_PhaseTracking.accumulatedPhaseNanoseconds.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0) + 28);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_PhaseTracking.clearAccumulatedPhaseNanoseconds()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_PhaseTracking.accumulatedPhaseUncNanoseconds.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_PhaseTracking.accumulatedPhaseUncNanoseconds.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0) + 32);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_PhaseTracking.clearAccumulatedPhaseUncNanoseconds()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_PhaseTracking.cycleSlipsDetected.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_PhaseTracking.cycleSlipsDetected.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

int *CLP_LogEntry_PrivateData_PhaseTracking.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
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
  *(a1 + result[9]) = 2;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_SignalCorrelationPeak.svTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 20), v6, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 8) = 1;
  *(a1 + v8[7]) = 2;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_SignalCorrelationPeak.svTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0) + 20);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_PrivateData_SignalCorrelationPeak.svTime.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
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
    *(v14 + v9[7]) = 2;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  }

  return CLP_LogEntry_PrivateData_SignalCorrelationPeak.svTime.modify;
}

uint64_t CLP_LogEntry_PrivateData_SignalCorrelationPeak.frequencyOffset.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 24), v6, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 8) = 1;
  *(a1 + v8[7]) = 2;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_SignalCorrelationPeak.frequencyOffset.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_PrivateData_SignalCorrelationPeak.frequencyOffset.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
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
    *(v14 + v9[7]) = 2;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  }

  return CLP_LogEntry_PrivateData_SignalCorrelationPeak.frequencyOffset.modify;
}

uint64_t CLP_LogEntry_PrivateData_SignalCorrelationPeak.cn0Dbhz.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_SignalCorrelationPeak.cn0Dbhz.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0) + 28);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_SignalCorrelationPeak.clearCn0Dbhz()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_SignalCorrelationPeak.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0);
  v3 = v2[5];
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  result = (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v8 = a1 + v2[7];
  *v8 = 0;
  *(v8 + 4) = 1;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_FullSvTime.derivedFullSvTimeNanoseconds.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_FullSvTime.derivedFullSvTimeNanoseconds.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0) + 20);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_FullSvTime.clearDerivedFullSvTimeNanoseconds()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_FullSvTime.derivedFullSvTimeUncNanoseconds.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_FullSvTime.derivedFullSvTimeUncNanoseconds.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0) + 24);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_FullSvTime.clearDerivedFullSvTimeUncNanoseconds()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_FullSvTime.fullSvTimeSource.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0) + 28));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_FullSvTime.fullSvTimeSource.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_FullSvTime.fullSvTimeSource.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0) + 28);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Request.type.modify;
}

uint64_t CLP_LogEntry_PrivateData_SvMeasurementUsage.innovation.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_SvMeasurementUsage.innovation.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0) + 20);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_SvMeasurementUsage.clearInnovation()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_SvMeasurementUsage.residual.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_SvMeasurementUsage.residual.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0) + 24);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_SvMeasurementUsage.clearResidual()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

float CLP_LogEntry_PrivateData_SignalCorrelationPeak.cn0Dbhz.getter(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 28);
  result = *v2;
  if (*(v2 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_SvMeasurementUsage.finalUncertainty.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_SvMeasurementUsage.finalUncertainty.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0) + 28);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_SvMeasurementUsage.clearFinalUncertainty()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

int *CLP_LogEntry_PrivateData_SvMeasurementUsage.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  return result;
}

float CLP_LogEntry_PrivateData_MeasurementExtension.jammerCn0DbHz.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20));
  swift_beginAccess();
  result = *(v1 + 16);
  if (*(v1 + 20))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementExtension.jammerCn0DbHz.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass.init(copying:)(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 16) = a1;
  *(v7 + 20) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_MeasurementExtension.jammerCn0DbHz.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (*(v6 + 20))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_MeasurementExtension.jammerCn0DbHz.modify;
}

float CLP_LogEntry_PrivateData_MeasurementExtension.snrAtCorrelatorOutput.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20));
  swift_beginAccess();
  result = *(v1 + 24);
  if (*(v1 + 28))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementExtension.snrAtCorrelatorOutput.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass.init(copying:)(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 24) = a1;
  *(v7 + 28) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_MeasurementExtension.snrAtCorrelatorOutput.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  if (*(v6 + 28))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_MeasurementExtension.snrAtCorrelatorOutput.modify;
}

void CLP_LogEntry_PrivateData_MeasurementExtension.snrAtCorrelatorOutput.modify(uint64_t *a1)
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
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass.init(copying:)(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 24) = v2;
  *(v7 + 28) = 0;

  free(v1);
}

BOOL CLP_LogEntry_PrivateData_MeasurementExtension.hasSnrAtCorrelatorOutput.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20));
  swift_beginAccess();
  return (*(v1 + 28) & 1) == 0;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MeasurementExtension.clearSnrAtCorrelatorOutput()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass.init(copying:)(v5);
    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  *(v5 + 24) = 0;
  *(v5 + 28) = 1;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementExtension.fullSvTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__fullSvTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
  }

  UnknownStorage.init()();
  v11 = a1 + v9[5];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v9[6];
  *v12 = 0;
  *(v12 + 8) = 1;
  *(a1 + v9[7]) = 6;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementExtension.fullSvTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__fullSvTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_MeasurementExtension.fullSvTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__fullSvTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
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
    *(v14 + v9[7]) = 6;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
  }

  return CLP_LogEntry_PrivateData_MeasurementExtension.fullSvTime.modify;
}

void CLP_LogEntry_PrivateData_MeasurementExtension.fullSvTime.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__fullSvTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__fullSvTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_MeasurementExtension.hasFullSvTime.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__fullSvTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MeasurementExtension.clearFullSvTime()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__fullSvTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_MeasurementExtension.svTimeUsageNanoseconds.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeUsageNanoseconds;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_MeasurementExtension.svTimeUsageNanoseconds.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeUsageNanoseconds;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
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
    v21 = v14 + v9[7];
    *v21 = 0;
    *(v21 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  }

  return CLP_LogEntry_PrivateData_MeasurementExtension.svTimeUsageNanoseconds.modify;
}

void CLP_LogEntry_PrivateData_MeasurementExtension.svTimeUsageNanoseconds.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeUsageNanoseconds;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeUsageNanoseconds;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_MeasurementExtension.hasSvTimeUsageNanoseconds.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeUsageNanoseconds;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MeasurementExtension.clearSvTimeUsageNanoseconds()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeUsageNanoseconds;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_MeasurementExtension.frequencyOffsetUsagePpb.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffsetUsagePpb;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_MeasurementExtension.frequencyOffsetUsagePpb.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffsetUsagePpb;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
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
    v21 = v14 + v9[7];
    *v21 = 0;
    *(v21 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  }

  return CLP_LogEntry_PrivateData_MeasurementExtension.frequencyOffsetUsagePpb.modify;
}

void CLP_LogEntry_PrivateData_MeasurementExtension.frequencyOffsetUsagePpb.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffsetUsagePpb;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffsetUsagePpb;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_MeasurementExtension.hasFrequencyOffsetUsagePpb.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffsetUsagePpb;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MeasurementExtension.clearFrequencyOffsetUsagePpb()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffsetUsagePpb;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_MeasurementExtension.svTimeUsageNanoseconds.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = *(v2 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20));
  v10 = *a1;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v9 + v10, v8, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v12 = *(*(v11 - 1) + 48);
  if (v12(v8, 1, v11) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, a2, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  }

  UnknownStorage.init()();
  v13 = a2 + v11[5];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a2 + v11[6];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a2 + v11[7];
  *v15 = 0;
  *(v15 + 4) = 1;
  result = (v12)(v8, 1, v11);
  if (result != 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementExtension.carrierPhaseUsageNanoseconds.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__carrierPhaseUsageNanoseconds;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_MeasurementExtension.carrierPhaseUsageNanoseconds.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__carrierPhaseUsageNanoseconds;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
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
    v21 = v14 + v9[7];
    *v21 = 0;
    *(v21 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  }

  return CLP_LogEntry_PrivateData_MeasurementExtension.carrierPhaseUsageNanoseconds.modify;
}

void CLP_LogEntry_PrivateData_MeasurementExtension.carrierPhaseUsageNanoseconds.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__carrierPhaseUsageNanoseconds;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__carrierPhaseUsageNanoseconds;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_MeasurementExtension.hasCarrierPhaseUsageNanoseconds.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__carrierPhaseUsageNanoseconds;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MeasurementExtension.clearCarrierPhaseUsageNanoseconds()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__carrierPhaseUsageNanoseconds;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_MeasurementExtension.noncoherentIntervalCount.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__noncoherentIntervalCount;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_MeasurementExtension.noncoherentIntervalCount.modify;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementExtension.noncoherentIntervalCount.getter(void *a1)
{
  v2 = (*(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20)) + *a1);
  swift_beginAccess();
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t CLP_LogEntry_PrivateData_MeasurementExtension.noncoherentIntervalCount.setter(int a1, void *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass.init(copying:)(v14);
    *(v4 + v6) = v13;
  }

  v15 = v9 + *a2;
  result = swift_beginAccess();
  *v15 = a1;
  *(v15 + 4) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_MeasurementExtension.coherentIntegrationMs.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__coherentIntegrationMs;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_MeasurementExtension.coherentIntegrationMs.modify;
}

void CLP_LogEntry_PrivateData_MeasurementExtension.noncoherentIntervalCount.modify(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t), void *a5)
{
  v8 = *a1;
  v9 = *(*a1 + 80);
  v10 = *(*a1 + 84);
  v11 = *(*a1 + 72);
  v12 = *(v11 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v11 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = *(v8 + 84);
    v16 = *(v8 + 72);
    v17 = a3(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    v20 = swift_allocObject();
    v21 = v14;
    v14 = v20;
    a4(v21);
    *(v16 + v15) = v20;
  }

  v22 = v14 + *a5;
  swift_beginAccess();
  *v22 = v9;
  *(v22 + 4) = 0;

  free(v8);
}

BOOL CLP_LogEntry_PrivateData_MeasurementExtension.hasNoncoherentIntervalCount.getter(uint64_t (*a1)(void), void *a2)
{
  v3 = *(v2 + *(a1(0) + 20)) + *a2;
  swift_beginAccess();
  return (*(v3 + 4) & 1) == 0;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementExtension.clearNoncoherentIntervalCount()(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t), void *a4)
{
  v8 = v4;
  v9 = *(a1(0) + 20);
  v10 = *(v4 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v4 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = a2(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    v16 = swift_allocObject();
    v17 = v12;
    v12 = v16;
    a3(v17);
    *(v8 + v9) = v16;
  }

  v18 = v12 + *a4;
  result = swift_beginAccess();
  *v18 = 0;
  *(v18 + 4) = 1;
  return result;
}

void (*CLP_LogEntry_PrivateData_MeasurementExtension.svTimeDetectionMethod.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeDetectionMethod;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 7)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return CLP_LogEntry_PrivateData_MeasurementExtension.svTimeDetectionMethod.modify;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementExtension.svTimeDetectionMethod.getter(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = *(v2 + *(a1(0) + 20));
  v5 = *a2;
  swift_beginAccess();
  if (*(v4 + v5) == 7)
  {
    return 0;
  }

  else
  {
    return *(v4 + v5);
  }
}

uint64_t CLP_LogEntry_PrivateData_MeasurementExtension.svTimeDetectionMethod.setter(char a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t), uint64_t *a5)
{
  v9 = v5;
  v11 = *(a2(0) + 20);
  v12 = *(v5 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v5 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = a3(0);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    v18 = swift_allocObject();
    v19 = v14;
    v14 = v18;
    a4(v19);
    *(v9 + v11) = v18;
  }

  v20 = *a5;
  result = swift_beginAccess();
  *(v14 + v20) = a1;
  return result;
}

void (*CLP_LogEntry_PrivateData_MeasurementExtension.frequencyDetectionMethod.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyDetectionMethod;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 7)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return CLP_LogEntry_PrivateData_MeasurementExtension.frequencyDetectionMethod.modify;
}

void CLP_LogEntry_PrivateData_MeasurementExtension.svTimeDetectionMethod.modify(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t), uint64_t *a5)
{
  v8 = *a1;
  v9 = *(*a1 + 84);
  v10 = *(*a1 + 80);
  v11 = *(*a1 + 72);
  v12 = *(v11 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v11 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = *(v8 + 80);
    v16 = *(v8 + 72);
    v17 = a3(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    v20 = swift_allocObject();
    v21 = v14;
    v14 = v20;
    a4(v21);
    *(v16 + v15) = v20;
  }

  v22 = *a5;
  swift_beginAccess();
  *(v14 + v22) = v9;

  free(v8);
}

BOOL CLP_LogEntry_PrivateData_MeasurementExtension.hasSvTimeDetectionMethod.getter(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = *(v2 + *(a1(0) + 20));
  v5 = *a2;
  swift_beginAccess();
  return *(v4 + v5) != 7;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementExtension.clearSvTimeDetectionMethod()(uint64_t *a1)
{
  v3 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass.init(copying:)(v12);
    *(v3 + v4) = v11;
  }

  v13 = *a1;
  result = swift_beginAccess();
  *(v7 + v13) = 7;
  return result;
}

void (*CLP_LogEntry_PrivateData_MeasurementExtension.channelID.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__channelID;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_MeasurementExtension.channelID.modify;
}

void (*CLP_LogEntry_PrivateData_MeasurementExtension.codeLockDurationSeconds.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__codeLockDurationSeconds;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_MeasurementExtension.codeLockDurationSeconds.modify;
}

float CLP_LogEntry_PrivateData_MeasurementExtension.codeLockDurationSeconds.getter(uint64_t (*a1)(void), void *a2)
{
  v3 = *(v2 + *(a1(0) + 20)) + *a2;
  swift_beginAccess();
  result = *v3;
  if (*(v3 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementExtension.codeLockDurationSeconds.setter(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t), void *a4, float a5)
{
  v9 = v5;
  v11 = *(a1(0) + 20);
  v12 = *(v5 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v5 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = a2(0);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    v18 = swift_allocObject();
    v19 = v14;
    v14 = v18;
    a3(v19);
    *(v9 + v11) = v18;
  }

  v20 = v14 + *a4;
  result = swift_beginAccess();
  *v20 = a5;
  *(v20 + 4) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_MeasurementExtension.frequencyLockDurationSeconds.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyLockDurationSeconds;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_MeasurementExtension.frequencyLockDurationSeconds.modify;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementExtension.metadata.getter()
{
  v1 = (*(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20)) + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = *v1;
  }

  outlined copy of Data?(v2, v3);
  return v4;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementExtension.metadata.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass.init(copying:)(v14);
    *(v3 + v6) = v13;
  }

  v15 = (v9 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata);
  swift_beginAccess();
  v16 = *v15;
  v17 = v15[1];
  *v15 = a1;
  v15[1] = a2;
  return outlined consume of Data?(v16, v17);
}

void (*CLP_LogEntry_PrivateData_MeasurementExtension.metadata.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  if (v8 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v6;
  }

  v10 = 0xC000000000000000;
  if (v8 >> 60 != 15)
  {
    v10 = v6[1];
  }

  *(v4 + 72) = v9;
  *(v4 + 80) = v10;
  outlined copy of Data?(v7, v8);
  return CLP_LogEntry_PrivateData_MeasurementExtension.metadata.modify;
}

void CLP_LogEntry_PrivateData_MeasurementExtension.metadata.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    outlined copy of Data._Representation(*(*a1 + 72), v5);
    v7 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = *(v2 + 96);
      v11 = *(v2 + 88);
      v12 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
      v13 = *(v12 + 48);
      v14 = *(v12 + 52);
      v15 = swift_allocObject();
      v16 = v9;
      v9 = v15;
      CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass.init(copying:)(v16);
      *(v11 + v10) = v15;
    }

    v17 = (v9 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata);
    swift_beginAccess();
    v18 = *v17;
    v19 = v17[1];
    *v17 = v3;
    v17[1] = v5;
    outlined consume of Data?(v18, v19);
    outlined consume of Data._Representation(*(v2 + 72), *(v2 + 80));
  }

  else
  {
    v20 = *(v6 + v4);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v6 + v4);
    if ((v21 & 1) == 0)
    {
      v23 = *(v2 + 96);
      v24 = *(v2 + 88);
      v25 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      v28 = swift_allocObject();
      v29 = v22;
      v22 = v28;
      CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass.init(copying:)(v29);
      *(v24 + v23) = v28;
    }

    v30 = (v22 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata);
    swift_beginAccess();
    v31 = *v30;
    v32 = v30[1];
    *v30 = v3;
    v30[1] = v5;
    outlined consume of Data?(v31, v32);
  }

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_MeasurementExtension.hasMetadata.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20)) + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata;
  swift_beginAccess();
  return *(v1 + 8) >> 60 != 15;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MeasurementExtension.clearMetadata()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    v10 = v5;
    v5 = v9;
    CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass.init(copying:)(v10);
    *(v1 + v2) = v9;
  }

  v11 = (v5 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata);
  swift_beginAccess();
  v12 = *v11;
  v13 = v11[1];
  *v11 = xmmword_23D1B1460;
  outlined consume of Data?(v12, v13);
}

void (*CLP_LogEntry_PrivateData_MeasurementExtension.metadataFormat.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadataFormat;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_MeasurementExtension.metadataFormat.modify;
}

void (*CLP_LogEntry_PrivateData_MeasurementExtension.topCorrelationPeaks.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__topCorrelationPeaks;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return CLP_LogEntry_PrivateData_MeasurementExtension.topCorrelationPeaks.modify;
}

uint64_t CLP_LogEntry_PrivateData_SyncState.init()@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  UnknownStorage.init()();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t CLP_LogEntry_PrivateData_Measurement.id.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    CLP_LogEntry_PrivateData_Measurement._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_Measurement.id.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + *(v9 + 20);
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = *(v9 + 24);
    v21 = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
    (*(*(v21 - 8) + 56))(v14 + v20, 1, 1, v21);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  }

  return CLP_LogEntry_PrivateData_Measurement.id.modify;
}

void CLP_LogEntry_PrivateData_Measurement.id.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_SvId);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      CLP_LogEntry_PrivateData_Measurement._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      CLP_LogEntry_PrivateData_Measurement._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_Measurement.hasID.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_Measurement.clearID()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    CLP_LogEntry_PrivateData_Measurement._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_Measurement.syncState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
  }

  UnknownStorage.init()();
  v11 = *(v9 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v11) = static CLP_LogEntry_PrivateData_SyncState._StorageClass.defaultInstance;
  v12 = v10(v6, 1, v9);

  if (v12 != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_Measurement.syncState.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    CLP_LogEntry_PrivateData_Measurement._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_Measurement.syncState.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = *(v9 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v14 + v19) = static CLP_LogEntry_PrivateData_SyncState._StorageClass.defaultInstance;
    v20 = v18(v8, 1, v9);

    if (v20 != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
  }

  return CLP_LogEntry_PrivateData_Measurement.syncState.modify;
}

void CLP_LogEntry_PrivateData_Measurement.syncState.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      CLP_LogEntry_PrivateData_Measurement._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      CLP_LogEntry_PrivateData_Measurement._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_Measurement.hasSyncState.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_Measurement.clearSyncState()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    CLP_LogEntry_PrivateData_Measurement._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
  swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_Measurement.startTimeNanoseconds.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__startTimeNanoseconds;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return CLP_LogEntry_PrivateData_Measurement.startTimeNanoseconds.modify;
}

uint64_t CLP_LogEntry_PrivateData_Measurement.startTimeNanoseconds.getter(void *a1)
{
  v2 = (*(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20)) + *a1);
  swift_beginAccess();
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t CLP_LogEntry_PrivateData_Measurement.startTimeNanoseconds.setter(uint64_t a1, void *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    CLP_LogEntry_PrivateData_Measurement._StorageClass.init(copying:)(v14);
    *(v4 + v6) = v13;
  }

  v15 = v9 + *a2;
  result = swift_beginAccess();
  *v15 = a1;
  *(v15 + 8) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_Measurement.endTimeNanoseconds.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__endTimeNanoseconds;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return CLP_LogEntry_PrivateData_Measurement.endTimeNanoseconds.modify;
}

void CLP_LogEntry_PrivateData_Measurement.startTimeNanoseconds.modify(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t), void *a5)
{
  v8 = *a1;
  v9 = *(*a1 + 72);
  v10 = *(*a1 + 88);
  v11 = *(*a1 + 80);
  v12 = *(v11 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v11 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = *(v8 + 88);
    v16 = *(v8 + 80);
    v17 = a3(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    v20 = swift_allocObject();
    v21 = v14;
    v14 = v20;
    a4(v21);
    *(v16 + v15) = v20;
  }

  v22 = v14 + *a5;
  swift_beginAccess();
  *v22 = v9;
  *(v22 + 8) = 0;

  free(v8);
}

BOOL CLP_LogEntry_PrivateData_Measurement.hasStartTimeNanoseconds.getter(uint64_t (*a1)(void), void *a2)
{
  v3 = *(v2 + *(a1(0) + 20)) + *a2;
  swift_beginAccess();
  return (*(v3 + 8) & 1) == 0;
}

uint64_t CLP_LogEntry_PrivateData_Measurement.clearStartTimeNanoseconds()(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t), void *a4)
{
  v8 = v4;
  v9 = *(a1(0) + 20);
  v10 = *(v4 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v4 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = a2(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    v16 = swift_allocObject();
    v17 = v12;
    v12 = v16;
    a3(v17);
    *(v8 + v9) = v16;
  }

  v18 = v12 + *a4;
  result = swift_beginAccess();
  *v18 = 0;
  *(v18 + 8) = 1;
  return result;
}

void (*CLP_LogEntry_PrivateData_Measurement.applicabilityTimeNanoseconds.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__applicabilityTimeNanoseconds;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return CLP_LogEntry_PrivateData_Measurement.applicabilityTimeNanoseconds.modify;
}

uint64_t CLP_LogEntry_PrivateData_Measurement.svTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  }

  UnknownStorage.init()();
  v11 = a1 + v9[5];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v9[6];
  *v12 = 0;
  *(v12 + 8) = 1;
  *(a1 + v9[7]) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_Measurement.svTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    CLP_LogEntry_PrivateData_Measurement._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_Measurement.svTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
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
    *(v14 + v9[7]) = 2;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  }

  return CLP_LogEntry_PrivateData_Measurement.svTime.modify;
}

void CLP_LogEntry_PrivateData_Measurement.svTime.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      CLP_LogEntry_PrivateData_Measurement._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      CLP_LogEntry_PrivateData_Measurement._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_Measurement.hasSvTime.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_Measurement.clearSvTime()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    CLP_LogEntry_PrivateData_Measurement._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_Measurement.frequencyOffset.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  }

  UnknownStorage.init()();
  v11 = a1 + v9[5];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v9[6];
  *v12 = 0;
  *(v12 + 8) = 1;
  *(a1 + v9[7]) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_Measurement.frequencyOffset.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    CLP_LogEntry_PrivateData_Measurement._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_Measurement.frequencyOffset.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
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
    *(v14 + v9[7]) = 2;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  }

  return CLP_LogEntry_PrivateData_Measurement.frequencyOffset.modify;
}

void CLP_LogEntry_PrivateData_Measurement.frequencyOffset.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      CLP_LogEntry_PrivateData_Measurement._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      CLP_LogEntry_PrivateData_Measurement._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_Measurement.hasFrequencyOffset.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_Measurement.clearFrequencyOffset()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    CLP_LogEntry_PrivateData_Measurement._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_Measurement.phaseTracking.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
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
  v14 = a1 + v9[8];
  *v14 = 0;
  *(v14 + 8) = 1;
  *(a1 + v9[9]) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_Measurement.phaseTracking.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    CLP_LogEntry_PrivateData_Measurement._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_Measurement.phaseTracking.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
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
    v22 = v14 + v9[8];
    *v22 = 0;
    *(v22 + 8) = 1;
    *(v14 + v9[9]) = 2;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
  }

  return CLP_LogEntry_PrivateData_Measurement.phaseTracking.modify;
}

void CLP_LogEntry_PrivateData_Measurement.phaseTracking.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      CLP_LogEntry_PrivateData_Measurement._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      CLP_LogEntry_PrivateData_Measurement._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_Measurement.hasPhaseTracking.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_Measurement.clearPhaseTracking()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    CLP_LogEntry_PrivateData_Measurement._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_Measurement.extension.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
  }

  UnknownStorage.init()();
  v11 = *(v9 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v11) = static CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass.defaultInstance;
  v12 = v10(v6, 1, v9);

  if (v12 != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_Measurement.extension.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    CLP_LogEntry_PrivateData_Measurement._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_Measurement.extension.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = *(v9 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v14 + v19) = static CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass.defaultInstance;
    v20 = v18(v8, 1, v9);

    if (v20 != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
  }

  return CLP_LogEntry_PrivateData_Measurement.extension.modify;
}

void CLP_LogEntry_PrivateData_Measurement.extension.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      CLP_LogEntry_PrivateData_Measurement._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      CLP_LogEntry_PrivateData_Measurement._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_Measurement.hasExtension.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_Measurement.clearExtension()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    CLP_LogEntry_PrivateData_Measurement._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
  swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_Measurement.cn0DbHz.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__cn0DbHz;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_Measurement.cn0DbHz.modify;
}

void (*CLP_LogEntry_PrivateData_Measurement.multipathIndicator.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__multipathIndicator;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 5)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return CLP_LogEntry_PrivateData_Measurement.multipathIndicator.modify;
}

uint64_t CLP_LogEntry_PrivateData_Measurement.averagedFrequencyOffset.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffset;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  }

  UnknownStorage.init()();
  v11 = a1 + v9[5];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v9[6];
  *v12 = 0;
  *(v12 + 8) = 1;
  *(a1 + v9[7]) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_Measurement.averagedFrequencyOffset.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    CLP_LogEntry_PrivateData_Measurement._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffset;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_Measurement.averagedFrequencyOffset.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffset;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
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
    *(v14 + v9[7]) = 2;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  }

  return CLP_LogEntry_PrivateData_Measurement.averagedFrequencyOffset.modify;
}

void CLP_LogEntry_PrivateData_Measurement.averagedFrequencyOffset.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      CLP_LogEntry_PrivateData_Measurement._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffset;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      CLP_LogEntry_PrivateData_Measurement._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffset;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_Measurement.hasAveragedFrequencyOffset.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffset;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_Measurement.clearAveragedFrequencyOffset()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    CLP_LogEntry_PrivateData_Measurement._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffset;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_Measurement.isUsable.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20));
  v2 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__isUsable;
  swift_beginAccess();
  return *(v1 + v2) & 1;
}

uint64_t CLP_LogEntry_PrivateData_Measurement.isUsable.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    CLP_LogEntry_PrivateData_Measurement._StorageClass.init(copying:)(v12);
    *(v2 + v4) = v11;
  }

  v13 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__isUsable;
  result = swift_beginAccess();
  *(v7 + v13) = a1 & 1;
  return result;
}

void (*CLP_LogEntry_PrivateData_Measurement.isUsable.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__isUsable;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return CLP_LogEntry_PrivateData_Measurement.isUsable.modify;
}

void CLP_LogEntry_PrivateData_Measurement.isUsable.modify(uint64_t *a1)
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
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    CLP_LogEntry_PrivateData_Measurement._StorageClass.init(copying:)(v14);
    *(v9 + v8) = v13;
  }

  v15 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__isUsable;
  swift_beginAccess();
  *(v7 + v15) = v4;

  free(v1);
}

BOOL CLP_LogEntry_PrivateData_Measurement.hasIsUsable.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20));
  v2 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__isUsable;
  swift_beginAccess();
  return *(v1 + v2) != 2;
}

uint64_t CLP_LogEntry_PrivateData_Measurement.clearMultipathIndicator()(uint64_t *a1, char a2)
{
  v5 = v2;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    CLP_LogEntry_PrivateData_Measurement._StorageClass.init(copying:)(v14);
    *(v5 + v6) = v13;
  }

  v15 = *a1;
  result = swift_beginAccess();
  *(v9 + v15) = a2;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_Measurement.averagedFrequencyOffsetFromPhaseTracking.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffsetFromPhaseTracking;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
  }

  UnknownStorage.init()();
  v11 = a1 + v9[5];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v9[6];
  *v12 = 0;
  *(v12 + 8) = 1;
  *(a1 + v9[7]) = 2;
  *(a1 + v9[8]) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_Measurement.averagedFrequencyOffsetFromPhaseTracking.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    CLP_LogEntry_PrivateData_Measurement._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffsetFromPhaseTracking;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_Measurement.averagedFrequencyOffsetFromPhaseTracking.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffsetFromPhaseTracking;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
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
    *(v14 + v9[7]) = 2;
    *(v14 + v9[8]) = 2;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
  }

  return CLP_LogEntry_PrivateData_Measurement.averagedFrequencyOffsetFromPhaseTracking.modify;
}

void CLP_LogEntry_PrivateData_Measurement.averagedFrequencyOffsetFromPhaseTracking.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      CLP_LogEntry_PrivateData_Measurement._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffsetFromPhaseTracking;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      CLP_LogEntry_PrivateData_Measurement._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffsetFromPhaseTracking;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_Measurement.hasAveragedFrequencyOffsetFromPhaseTracking.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffsetFromPhaseTracking;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_Measurement.clearAveragedFrequencyOffsetFromPhaseTracking()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    CLP_LogEntry_PrivateData_Measurement._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffsetFromPhaseTracking;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
  swift_endAccess();
}

float CLP_LogEntry_PrivateData_SvMeasurementUsage.innovation.getter(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 20);
  result = *v2;
  if (*(v2 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_ReceiverClockModel.frequencyNoisePpbPerSecondPerRtHz.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ReceiverClockModel.frequencyNoisePpbPerSecondPerRtHz.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0) + 20);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_ReceiverClockModel.clearFrequencyNoisePpbPerSecondPerRtHz()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

float CLP_LogEntry_PrivateData_SvMeasurementUsage.residual.getter(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 24);
  result = *v2;
  if (*(v2 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_ReceiverClockModel.phaseNoisePpbPerRtHz.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ReceiverClockModel.phaseNoisePpbPerRtHz.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0) + 24);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_ReceiverClockModel.clearPhaseNoisePpbPerRtHz()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_ReceiverClockModel.frequencyVariancePpb2.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ReceiverClockModel.frequencyVariancePpb2.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0) + 28);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_ReceiverClockModel.clearFrequencyVariancePpb2()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_ReceiverClockModel.phaseVarianceNanoseconds2.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ReceiverClockModel.phaseVarianceNanoseconds2.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0) + 32);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_ReceiverClockModel.clearPhaseVarianceNanoseconds2()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_ReceiverClockModel.clockJumpDetected.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ReceiverClockModel.clockJumpDetected.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

int *CLP_LogEntry_PrivateData_ReceiverClockModel.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1 + result[8];
  *v6 = 0;
  *(v6 + 4) = 1;
  *(a1 + result[9]) = 2;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_ReceiverClockCorrections.frequencyCorrectionPpb.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ReceiverClockCorrections.frequencyCorrectionPpb.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0) + 20);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_ReceiverClockCorrections.clearFrequencyCorrectionPpb()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_ReceiverClockCorrections.cummulativePhaseCorrectionNanoseconds.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ReceiverClockCorrections.cummulativePhaseCorrectionNanoseconds.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0) + 24);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_ReceiverClockCorrections.clearCummulativePhaseCorrectionNanoseconds()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double CLP_LogEntry_PrivateData_PhaseTracking.accumulatedPhaseNanoseconds.getter(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 28);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_ReceiverClockCorrections.currentTemperatureDegreesCelsius.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ReceiverClockCorrections.currentTemperatureDegreesCelsius.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0) + 28);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_ReceiverClockCorrections.clearCurrentTemperatureDegreesCelsius()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double CLP_LogEntry_PrivateData_PhaseTracking.accumulatedPhaseUncNanoseconds.getter(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 32);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_ReceiverClockCorrections.currentTemperatureRateDegreesPerSecond.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ReceiverClockCorrections.currentTemperatureRateDegreesPerSecond.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0) + 32);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_ReceiverClockCorrections.clearCurrentTemperatureRateDegreesPerSecond()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_ReceiverClockCorrections.avgTemperatureOverLastEpochDegreesCelsius.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ReceiverClockCorrections.avgTemperatureOverLastEpochDegreesCelsius.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0) + 36);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_ReceiverClockCorrections.clearAvgTemperatureOverLastEpochDegreesCelsius()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0) + 36);
  *v1 = 0;
  *(v1 + 8) = 1;
}

int *CLP_LogEntry_PrivateData_ReceiverClockCorrections.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
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
  v7 = a1 + result[9];
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_PhaseTracking.phaseStartTimeNanoseconds.getter(uint64_t (*a1)(void))
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

uint64_t CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion.offsetNanoseconds.setter(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion.offsetNanoseconds.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0) + 20);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion.clearOffsetNanoseconds()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion.subNanosecondOffsetNanoseconds.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion.subNanosecondOffsetNanoseconds.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0) + 24);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion.clearSubNanosecondOffsetNanoseconds()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion.offsetUncertaintyNanoseconds.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion.offsetUncertaintyNanoseconds.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0) + 28);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion.clearOffsetUncertaintyNanoseconds()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion.driftPpb.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion.driftPpb.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0) + 32);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion.clearDriftPpb()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion.driftUncertaintyPpb.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion.driftUncertaintyPpb.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0) + 36);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion.clearDriftUncertaintyPpb()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

int *CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
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
  *(v6 + 8) = 1;
  v7 = a1 + result[9];
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_Clock.clockNanoseconds.setter(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_Clock.clockNanoseconds.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Clock(0) + 20);
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
  return CLP_LogEntry_AONLoc_Request.ResultOptions.endCfaTimeSec.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_Clock.clearClockNanoseconds()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Clock(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_Clock.model.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 24), v6, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v8[8];
  *v13 = 0;
  *(v13 + 4) = 1;
  *(a1 + v8[9]) = 2;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_Clock.model.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Clock(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_PrivateData_Clock.model.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_Clock(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v14 + v9[8];
    *v20 = 0;
    *(v20 + 4) = 1;
    *(v14 + v9[9]) = 2;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);
  }

  return CLP_LogEntry_PrivateData_Clock.model.modify;
}

uint64_t CLP_LogEntry_PrivateData_Clock.corrections.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 28), v6, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);
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
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_Clock.corrections.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Clock(0) + 28);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_PrivateData_Clock.corrections.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_Clock(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMR);
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
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);
  }

  return CLP_LogEntry_PrivateData_Clock.corrections.modify;
}

uint64_t CLP_LogEntry_PrivateData_Clock.receiverToGpsTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMd, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 32), v6, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMd, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v8[8];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a1 + v8[9];
  *v14 = 0;
  *(v14 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMd, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_Clock.receiverToGpsTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Clock(0) + 32);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMd, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_PrivateData_Clock.receiverToGpsTime.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMd, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_Clock(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMd, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v14 + v9[8];
    *v20 = 0;
    *(v20 + 8) = 1;
    v21 = v14 + v9[9];
    *v21 = 0;
    *(v21 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMd, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);
  }

  return CLP_LogEntry_PrivateData_Clock.receiverToGpsTime.modify;
}

uint64_t CLP_LogEntry_PrivateData_Clock.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v2[6];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v2[7];
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  v8 = v2[8];
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a1 + v8, 1, 1, v9);
}

uint64_t CLP_LogEntry_PrivateData_MeasurementReport.clock.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v19 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clock;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_Clock);
  }

  UnknownStorage.init()();
  v11 = a1 + v9[5];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v9[6];
  v13 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  v14 = v9[7];
  v15 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
  v16 = v9[8];
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
  (*(*(v17 - 8) + 56))(a1 + v16, 1, 1, v17);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementReport.clock.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    CLP_LogEntry_PrivateData_MeasurementReport._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_Clock);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clock;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_MeasurementReport.clock.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clock;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v9[6];
    v21 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
    (*(*(v21 - 8) + 56))(v14 + v20, 1, 1, v21);
    v22 = v9[7];
    v23 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
    (*(*(v23 - 8) + 56))(v14 + v22, 1, 1, v23);
    v24 = v9[8];
    v25 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
    (*(*(v25 - 8) + 56))(v14 + v24, 1, 1, v25);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_Clock);
  }

  return CLP_LogEntry_PrivateData_MeasurementReport.clock.modify;
}

void CLP_LogEntry_PrivateData_MeasurementReport.clock.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_Clock);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      CLP_LogEntry_PrivateData_MeasurementReport._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_Clock);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clock;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_Clock);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      CLP_LogEntry_PrivateData_MeasurementReport._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_Clock);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clock;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_MeasurementReport.hasClock.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clock;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MeasurementReport.clearClock()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    CLP_LogEntry_PrivateData_MeasurementReport._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clock;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_MeasurementExtension.topCorrelationPeaks.getter(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = *(v2 + *(a1(0) + 20));
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
}

uint64_t CLP_LogEntry_PrivateData_MeasurementExtension.topCorrelationPeaks.setter(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t), uint64_t *a5)
{
  v9 = v5;
  v11 = *(a2(0) + 20);
  v12 = *(v5 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v5 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = a3(0);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    v18 = swift_allocObject();
    v19 = v14;
    v14 = v18;
    a4(v19);
    *(v9 + v11) = v18;
  }

  v20 = *a5;
  swift_beginAccess();
  v21 = *(v14 + v20);
  *(v14 + v20) = a1;
}

void (*CLP_LogEntry_PrivateData_MeasurementReport.measurements.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measurements;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return CLP_LogEntry_PrivateData_MeasurementReport.measurements.modify;
}

void CLP_LogEntry_PrivateData_MeasurementExtension.topCorrelationPeaks.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t), uint64_t *a5)
{
  v8 = *a1;
  v10 = (*a1 + 72);
  v9 = *v10;
  v11 = *(*a1 + 88);
  v12 = *(*a1 + 80);
  if (a2)
  {
    v13 = *(*a1 + 72);

    v14 = *(v12 + v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v12 + v11);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = *(v8 + 88);
      v18 = *(v8 + 80);
      v19 = a3(0);
      v20 = *(v19 + 48);
      v21 = *(v19 + 52);
      v22 = swift_allocObject();
      a4(v16);
      *(v18 + v17) = v22;
      v16 = v22;
    }

    v23 = *a5;
    swift_beginAccess();
    v24 = *(v16 + v23);
    *(v16 + v23) = v9;

    v25 = *v10;
  }

  else
  {
    v26 = *(v12 + v11);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v28 = *(v12 + v11);
    if ((v27 & 1) == 0)
    {
      v29 = *(v8 + 88);
      v30 = *(v8 + 80);
      v31 = a3(0);
      v32 = *(v31 + 48);
      v33 = *(v31 + 52);
      v34 = swift_allocObject();
      a4(v28);
      *(v30 + v29) = v34;
      v28 = v34;
    }

    v35 = *a5;
    swift_beginAccess();
    v36 = *(v28 + v35);
    *(v28 + v35) = v9;
  }

  free(v8);
}

uint64_t CLP_LogEntry_PrivateData_Wgs84Ecef.x.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_Wgs84Ecef.x.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0) + 20);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_Wgs84Ecef.clearX()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_Wgs84Ecef.y.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_Wgs84Ecef.y.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0) + 24);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_Wgs84Ecef.clearY()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_Wgs84Ecef.z.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_Wgs84Ecef.z.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0) + 28);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_Wgs84Ecef.clearZ()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_SvBandCorrections.band.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0) + 20));
  if (v1 == 13)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_SvBandCorrections.band.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_SvBandCorrections.band.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 13)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_SvBandCorrections.troposphericNanoseconds.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_SvBandCorrections.troposphericNanoseconds.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0) + 24);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_SvBandCorrections.clearTroposphericNanoseconds()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_SvBandCorrections.ionosphericNanoseconds.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_SvBandCorrections.ionosphericNanoseconds.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0) + 28);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_SvBandCorrections.clearIonosphericNanoseconds()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_SvBandCorrections.txGroupDelayNanoseconds.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_SvBandCorrections.txGroupDelayNanoseconds.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0) + 32);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_SvBandCorrections.clearTxGroupDelayNanoseconds()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_SvBandCorrections.ionosphericModel.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0) + 36));
  if (v1 == 3)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_SvBandCorrections.ionosphericModel.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_SvBandCorrections.ionosphericModel.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0) + 36);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 3)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

int *CLP_LogEntry_PrivateData_SvBandCorrections.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
  *(a1 + result[5]) = 13;
  v3 = a1 + result[6];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + result[7];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = a1 + result[8];
  *v5 = 0;
  *(v5 + 8) = 1;
  *(a1 + result[9]) = 3;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_SvPositionAtTime.applicableTimeNanoseconds.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_SvPositionAtTime.applicableTimeNanoseconds.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0) + 20);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_SvPositionAtTime.clearApplicableTimeNanoseconds()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_SvPositionAtTime.position.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 24), v6, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
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
    return outlined destroy of Any?(v6, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_SvPositionAtTime.position.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_PrivateData_SvPositionAtTime.position.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMR);
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
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
  }

  return CLP_LogEntry_PrivateData_SvPositionAtTime.position.modify;
}

uint64_t CLP_LogEntry_PrivateData_SvPositionAtTime.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0);
  v3 = a1 + *(v2 + 20);
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = *(v2 + 24);
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t CLP_LogEntry_PrivateData_PolynomialOrbit.fitValidityStartTimeNs.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_PolynomialOrbit.fitValidityStartTimeNs.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0) + 32);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_PolynomialOrbit.clearFitValidityStartTimeNs()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double CLP_LogEntry_PrivateData_ReceiverClockCorrections.avgTemperatureOverLastEpochDegreesCelsius.getter(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 36);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_PolynomialOrbit.fitValidityEndTimeNs.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_PolynomialOrbit.fitValidityEndTimeNs.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0) + 36);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_PolynomialOrbit.clearFitValidityEndTimeNs()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0) + 36);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_PolynomialOrbit.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0) + 28);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CLP_LogEntry_PrivateData_PolynomialOrbit.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0) + 28);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CLP_LogEntry_PrivateData_PolynomialOrbit.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  a1[2] = v2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
  v4 = a1 + v3[7];
  result = UnknownStorage.init()();
  v6 = a1 + v3[8];
  *v6 = 0;
  v6[8] = 1;
  v7 = a1 + v3[9];
  *v7 = 0;
  v7[8] = 1;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_Measurement.id.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = *(v3 + *(a1(0) + 20));
  v12 = *a2;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v11 + v12, v10, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v13 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v14 = *(*(v13 - 8) + 48);
  if (v14(v10, 1, v13) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, a3, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  }

  UnknownStorage.init()();
  v15 = a3 + *(v13 + 20);
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = *(v13 + 24);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  (*(*(v17 - 8) + 56))(a3 + v16, 1, 1, v17);
  result = (v14)(v10, 1, v13);
  if (result != 1)
  {
    return outlined destroy of Any?(v10, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_SvInfo.id.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_SvInfo._StorageClass.init(copying:)(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v17, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_SvInfo.id.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + *(v9 + 20);
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = *(v9 + 24);
    v21 = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
    (*(*(v21 - 8) + 56))(v14 + v20, 1, 1, v21);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  }

  return CLP_LogEntry_PrivateData_SvInfo.id.modify;
}

void CLP_LogEntry_PrivateData_SvInfo.id.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_SvId);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_SvInfo._StorageClass.init(copying:)(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_SvInfo._StorageClass.init(copying:)(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_SvInfo.hasID.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  return v8;
}

void (*CLP_LogEntry_PrivateData_SvInfo.referenceTimeNanoseconds.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__referenceTimeNanoseconds;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return CLP_LogEntry_PrivateData_SvInfo.referenceTimeNanoseconds.modify;
}

void (*CLP_LogEntry_PrivateData_SvInfo.positionSource.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__positionSource;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 7)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return CLP_LogEntry_PrivateData_SvInfo.positionSource.modify;
}

void (*CLP_LogEntry_PrivateData_SvInfo.anchorPositions.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__anchorPositions;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return CLP_LogEntry_PrivateData_SvInfo.anchorPositions.modify;
}

double CLP_LogEntry_PrivateData_SvInfo.referenceTimeNanoseconds.getter(uint64_t (*a1)(void), void *a2)
{
  v3 = *(v2 + *(a1(0) + 20)) + *a2;
  swift_beginAccess();
  result = *v3;
  if (*(v3 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_SvInfo.referenceTimeNanoseconds.setter(void *a1, double a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_SvInfo._StorageClass.init(copying:)(v9);

    *(v4 + v6) = v13;
    v9 = v13;
  }

  v14 = v9 + *a1;
  result = swift_beginAccess();
  *v14 = a2;
  *(v14 + 8) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_SvInfo.clockBiasCorrectionNanoseconds.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockBiasCorrectionNanoseconds;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return CLP_LogEntry_PrivateData_SvInfo.clockBiasCorrectionNanoseconds.modify;
}

void CLP_LogEntry_PrivateData_SvInfo.referenceTimeNanoseconds.modify(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 80);
  v8 = *(v7 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v4 + 88);
    v12 = *(v4 + 80);
    v13 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    v16 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_SvInfo._StorageClass.init(copying:)(v10);

    *(v12 + v11) = v16;
    v10 = v16;
  }

  v17 = v10 + *a3;
  swift_beginAccess();
  *v17 = v5;
  *(v17 + 8) = 0;

  free(v4);
}

uint64_t CLP_LogEntry_PrivateData_SvInfo.clearReferenceTimeNanoseconds()(void *a1)
{
  v3 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_SvInfo._StorageClass.init(copying:)(v7);

    *(v3 + v4) = v11;
    v7 = v11;
  }

  v12 = v7 + *a1;
  result = swift_beginAccess();
  *v12 = 0;
  *(v12 + 8) = 1;
  return result;
}

void (*CLP_LogEntry_PrivateData_SvInfo.clockFrequencyCorrectionPpb.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyCorrectionPpb;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return CLP_LogEntry_PrivateData_SvInfo.clockFrequencyCorrectionPpb.modify;
}

void (*CLP_LogEntry_PrivateData_SvInfo.clockFrequencyChangeCorrectionPpbPerSec.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyChangeCorrectionPpbPerSec;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return CLP_LogEntry_PrivateData_SvInfo.clockFrequencyChangeCorrectionPpbPerSec.modify;
}

void (*CLP_LogEntry_PrivateData_SvInfo.rangeAccuracyPositionM.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyPositionM;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_SvInfo.rangeAccuracyPositionM.modify;
}

uint64_t CLP_LogEntry_PrivateData_SvInfo.rangeAccuracyPositionM.setter(void *a1, float a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_SvInfo._StorageClass.init(copying:)(v9);

    *(v4 + v6) = v13;
    v9 = v13;
  }

  v14 = v9 + *a1;
  result = swift_beginAccess();
  *v14 = a2;
  *(v14 + 4) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_SvInfo.rangeAccuracyClockNanoseconds.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyClockNanoseconds;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_SvInfo.rangeAccuracyClockNanoseconds.modify;
}

void CLP_LogEntry_PrivateData_SvInfo.rangeAccuracyPositionM.modify(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 84);
  v7 = *(*a1 + 72);
  v8 = *(v7 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v4 + 84);
    v12 = *(v4 + 72);
    v13 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    v16 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_SvInfo._StorageClass.init(copying:)(v10);

    *(v12 + v11) = v16;
    v10 = v16;
  }

  v17 = v10 + *a3;
  swift_beginAccess();
  *v17 = v5;
  *(v17 + 4) = 0;

  free(v4);
}

uint64_t CLP_LogEntry_PrivateData_SvInfo.clearRangeAccuracyPositionM()(void *a1)
{
  v3 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_SvInfo._StorageClass.init(copying:)(v7);

    *(v3 + v4) = v11;
    v7 = v11;
  }

  v12 = v7 + *a1;
  result = swift_beginAccess();
  *v12 = 0;
  *(v12 + 4) = 1;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_Measurement.multipathIndicator.getter(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = *(v2 + *(a1(0) + 20));
  v5 = *a2;
  swift_beginAccess();
  if (*(v4 + v5) == 5)
  {
    return 0;
  }

  else
  {
    return *(v4 + v5);
  }
}

uint64_t CLP_LogEntry_PrivateData_SvInfo.positionSource.setter(char a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_SvInfo._StorageClass.init(copying:)(v9);

    *(v4 + v6) = v13;
    v9 = v13;
  }

  v14 = *a2;
  result = swift_beginAccess();
  *(v9 + v14) = a1;
  return result;
}

void (*CLP_LogEntry_PrivateData_SvInfo.overTheAirFromSvHealthL1.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL1;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 5)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return CLP_LogEntry_PrivateData_SvInfo.overTheAirFromSvHealthL1.modify;
}

void CLP_LogEntry_PrivateData_SvInfo.positionSource.modify(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 84);
  v6 = *(*a1 + 80);
  v7 = *(*a1 + 72);
  v8 = *(v7 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v4 + 80);
    v12 = *(v4 + 72);
    v13 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    v16 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_SvInfo._StorageClass.init(copying:)(v10);

    *(v12 + v11) = v16;
    v10 = v16;
  }

  v17 = *a3;
  swift_beginAccess();
  *(v10 + v17) = v5;

  free(v4);
}

BOOL CLP_LogEntry_PrivateData_Measurement.hasMultipathIndicator.getter(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = *(v2 + *(a1(0) + 20));
  v5 = *a2;
  swift_beginAccess();
  return *(v4 + v5) != 5;
}

uint64_t CLP_LogEntry_PrivateData_SvInfo.clearPositionSource()(uint64_t *a1, char a2)
{
  v5 = v2;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_SvInfo._StorageClass.init(copying:)(v9);

    *(v5 + v6) = v13;
    v9 = v13;
  }

  v14 = *a1;
  result = swift_beginAccess();
  *(v9 + v14) = a2;
  return result;
}

void (*CLP_LogEntry_PrivateData_SvInfo.overTheAirFromOtherSvHealthL1.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL1;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 5)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return CLP_LogEntry_PrivateData_SvInfo.overTheAirFromOtherSvHealthL1.modify;
}

void (*CLP_LogEntry_PrivateData_SvInfo.assistanceFileHealthL1.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL1;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 5)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return CLP_LogEntry_PrivateData_SvInfo.assistanceFileHealthL1.modify;
}

void (*CLP_LogEntry_PrivateData_SvInfo.msBasedHealthL1.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL1;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 5)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return CLP_LogEntry_PrivateData_SvInfo.msBasedHealthL1.modify;
}

void (*CLP_LogEntry_PrivateData_SvInfo.integrityHealthL1.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL1;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 5)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return CLP_LogEntry_PrivateData_SvInfo.integrityHealthL1.modify;
}

uint64_t CLP_LogEntry_PrivateData_SvInfo.anchorPositions.setter(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_SvInfo._StorageClass.init(copying:)(v9);

    *(v4 + v6) = v13;
    v9 = v13;
  }

  v14 = *a2;
  swift_beginAccess();
  v15 = *(v9 + v14);
  *(v9 + v14) = a1;
}

void (*CLP_LogEntry_PrivateData_SvInfo.svBandCorrections.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svBandCorrections;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return CLP_LogEntry_PrivateData_SvInfo.svBandCorrections.modify;
}

void CLP_LogEntry_PrivateData_SvInfo.anchorPositions.modify(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v6 = (*a1 + 72);
  v5 = *v6;
  v7 = *(*a1 + 88);
  v8 = *(*a1 + 80);
  if (a2)
  {
    v9 = *(*a1 + 72);

    v10 = *(v8 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v8 + v7);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v4 + 88);
      v14 = *(v4 + 80);
      v15 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      v18 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_SvInfo._StorageClass.init(copying:)(v12);

      *(v14 + v13) = v18;
      v12 = v18;
    }

    v19 = *a3;
    swift_beginAccess();
    v20 = *(v12 + v19);
    *(v12 + v19) = v5;

    v21 = *v6;
  }

  else
  {
    v22 = *(v8 + v7);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v8 + v7);
    if ((v23 & 1) == 0)
    {
      v25 = *(v4 + 88);
      v26 = *(v4 + 80);
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_SvInfo._StorageClass.init(copying:)(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v31 = *a3;
    swift_beginAccess();
    v32 = *(v24 + v31);
    *(v24 + v31) = v5;
  }

  free(v4);
}

uint64_t CLP_LogEntry_PrivateData_SvInfo.polynomialOrbit.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
  }

  v11 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v11;
  a1[2] = v11;
  v12 = a1 + v9[7];
  UnknownStorage.init()();
  v13 = a1 + v9[8];
  *v13 = 0;
  v13[8] = 1;
  v14 = a1 + v9[9];
  *v14 = 0;
  v14[8] = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_SvInfo.polynomialOrbit.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_SvInfo._StorageClass.init(copying:)(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v17, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_SvInfo.polynomialOrbit.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    v19 = MEMORY[0x277D84F90];
    *v14 = MEMORY[0x277D84F90];
    v14[1] = v19;
    v14[2] = v19;
    v20 = v14 + v9[7];
    UnknownStorage.init()();
    v21 = v14 + v9[8];
    *v21 = 0;
    v21[8] = 1;
    v22 = v14 + v9[9];
    *v22 = 0;
    v22[8] = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
  }

  return CLP_LogEntry_PrivateData_SvInfo.polynomialOrbit.modify;
}

void CLP_LogEntry_PrivateData_SvInfo.polynomialOrbit.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_SvInfo._StorageClass.init(copying:)(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_SvInfo._StorageClass.init(copying:)(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_SvInfo.hasPolynomialOrbit.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
  return v8;
}

uint64_t CLP_LogEntry_PrivateData_SvInfo.clearID()(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v25 - v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  v15 = *(v4 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    v21 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_SvInfo._StorageClass.init(copying:)(v17);

    *(v9 + v14) = v21;
    v17 = v21;
  }

  v22 = a3(0);
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  v23 = *a4;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v13, v17 + v23, a1, a2);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_SvInfo.overTheAirFromSvHealthL5.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 5)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return CLP_LogEntry_PrivateData_SvInfo.overTheAirFromSvHealthL5.modify;
}

void (*CLP_LogEntry_PrivateData_SvInfo.overTheAirFromOtherSvHealthL5.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 5)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return CLP_LogEntry_PrivateData_SvInfo.overTheAirFromOtherSvHealthL5.modify;
}

void (*CLP_LogEntry_PrivateData_SvInfo.assistanceFileHealthL5.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 5)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return CLP_LogEntry_PrivateData_SvInfo.assistanceFileHealthL5.modify;
}

void (*CLP_LogEntry_PrivateData_SvInfo.msBasedHealthL5.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 5)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return CLP_LogEntry_PrivateData_SvInfo.msBasedHealthL5.modify;
}

void (*CLP_LogEntry_PrivateData_SvInfo.integrityHealthL5.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 5)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return CLP_LogEntry_PrivateData_SvInfo.integrityHealthL5.modify;
}

void (*CLP_LogEntry_PrivateData_SvInfo.clockFrequencyAccelCorrectionPpbPerSecPerSec.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyAccelCorrectionPpbPerSecPerSec;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return CLP_LogEntry_PrivateData_SvInfo.clockFrequencyAccelCorrectionPpbPerSecPerSec.modify;
}

uint64_t CLP_LogEntry_PrivateData_SvInfo.svReferencePoint.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20));
  v2 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svReferencePoint;
  swift_beginAccess();
  if (*(v1 + v2) == 4)
  {
    return 0;
  }

  else
  {
    return *(v1 + v2);
  }
}

void (*CLP_LogEntry_PrivateData_SvInfo.svReferencePoint.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svReferencePoint;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 4)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return CLP_LogEntry_PrivateData_SvInfo.svReferencePoint.modify;
}

BOOL CLP_LogEntry_PrivateData_SvInfo.hasSvReferencePoint.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20));
  v2 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svReferencePoint;
  swift_beginAccess();
  return *(v1 + v2) != 4;
}

uint64_t CLP_LogEntry_PrivateData_ReceiverBandCorrections.band.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0) + 20));
  if (v1 == 13)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_ReceiverBandCorrections.band.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ReceiverBandCorrections.band.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 13)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_ReceiverBandCorrections.rfTimeBiasNanoseconds.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ReceiverBandCorrections.rfTimeBiasNanoseconds.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0) + 24);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_ReceiverBandCorrections.clearRfTimeBiasNanoseconds()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_ReceiverBandCorrections.rfTimeBiasUncertaintyNanoseconds.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ReceiverBandCorrections.rfTimeBiasUncertaintyNanoseconds.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0) + 28);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_ReceiverBandCorrections.clearRfTimeBiasUncertaintyNanoseconds()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

float CLP_LogEntry_PrivateData_ReceiverClockModel.phaseVarianceNanoseconds2.getter(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 32);
  result = *v2;
  if (*(v2 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_ReceiverBandCorrections.automaticGainControlDb.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ReceiverBandCorrections.automaticGainControlDb.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0) + 32);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_ReceiverBandCorrections.clearAutomaticGainControlDb()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

int *CLP_LogEntry_PrivateData_ReceiverBandCorrections.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0);
  *(a1 + result[5]) = 13;
  v3 = a1 + result[6];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + result[7];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + result[8];
  *v5 = 0;
  *(v5 + 4) = 1;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_LeapSecondChange.timeOfChange.setter(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_LeapSecondChange.timeOfChange.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0) + 20);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_LeapSecondChange.clearTimeOfChange()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_LeapSecondChange.newLeapSecond.setter(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_LeapSecondChange.newLeapSecond.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0) + 24);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_LeapSecondChange.clearNewLeapSecond()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_LeapSecondChange.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
  v3 = a1 + *(result + 20);
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + *(result + 24);
  *v4 = 0;
  *(v4 + 4) = 1;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_LeapSecondInfo.currentLeapSecond.setter(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_LeapSecondInfo.currentLeapSecond.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0) + 20);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_LeapSecondInfo.clearCurrentLeapSecond()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_LeapSecondInfo.changeKnowledge.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0) + 24));
  if (v1 == 5)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_LeapSecondInfo.changeKnowledge.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_LeapSecondInfo.changeKnowledge.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_LeapSecondInfo.newLeapSecond.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 28), v6, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + *(v8 + 24);
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_LeapSecondInfo.newLeapSecond.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0) + 28);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_PrivateData_LeapSecondInfo.newLeapSecond.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + *(v9 + 20);
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v14 + *(v9 + 24);
    *v18 = 0;
    *(v18 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);
  }

  return CLP_LogEntry_PrivateData_LeapSecondInfo.newLeapSecond.modify;
}

BOOL CLP_LogEntry_PrivateData_Clock.hasCorrections.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + *(v13 + 28), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  outlined destroy of Any?(v12, a1, a2);
  return v15;
}

uint64_t CLP_LogEntry_PrivateData_Clock.clearCorrections()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  outlined destroy of Any?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t CLP_LogEntry_PrivateData_LeapSecondInfo.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  *(a1 + v2[6]) = 5;
  v4 = v2[7];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t CLP_LogEntry_PrivateData_GpsToUtcConversion.applicableTimeNanoseconds.setter(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GpsToUtcConversion.applicableTimeNanoseconds.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0) + 20);
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