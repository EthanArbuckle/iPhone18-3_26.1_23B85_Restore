uint64_t Proto_Gpsd_Request.injectSvidBlocklist.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMd, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectSvidBlocklist;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMd, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMR);
  v9 = type metadata accessor for Proto_Gpsd_InjectSvidBlocklist(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gpsd_InjectSvidBlocklist);
  }

  *a1 = MEMORY[0x277D84F90];
  v11 = a1 + *(v9 + 20);
  UnknownStorage.init()();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMd, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.injectSvidBlocklist.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMd, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gpsd_InjectSvidBlocklist);
  v17 = type metadata accessor for Proto_Gpsd_InjectSvidBlocklist(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectSvidBlocklist;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMd, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.injectSvidBlocklist.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMd, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_InjectSvidBlocklist(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectSvidBlocklist;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMd, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    v19 = v14 + *(v9 + 20);
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMd, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_InjectSvidBlocklist);
  }

  return Proto_Gpsd_Request.injectSvidBlocklist.modify;
}

void Proto_Gpsd_Request.injectSvidBlocklist.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_InjectSvidBlocklist);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gpsd_InjectSvidBlocklist);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectSvidBlocklist;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMd, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gpsd_InjectSvidBlocklist);
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
      v27 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gpsd_InjectSvidBlocklist);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectSvidBlocklist;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMd, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasInjectSvidBlocklist.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMd, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectSvidBlocklist;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMd, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMR);
  v7 = type metadata accessor for Proto_Gpsd_InjectSvidBlocklist(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMd, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearInjectSvidBlocklist()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMd, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gpsd_InjectSvidBlocklist(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectSvidBlocklist;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMd, &_s10ALProtobuf30Proto_Gpsd_InjectSvidBlocklistVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.deleteGnssData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMd, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__deleteGnssData;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMd, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMR);
  v9 = type metadata accessor for Proto_Gpsd_DeleteGnssData(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gpsd_DeleteGnssData);
  }

  UnknownStorage.init()();
  v11 = a1 + *(v9 + 20);
  *v11 = 0;
  *(v11 + 8) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMd, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.deleteGnssData.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMd, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gpsd_DeleteGnssData);
  v17 = type metadata accessor for Proto_Gpsd_DeleteGnssData(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__deleteGnssData;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMd, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.deleteGnssData.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMd, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_DeleteGnssData(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__deleteGnssData;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMd, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + *(v9 + 20);
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMd, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_DeleteGnssData);
  }

  return Proto_Gpsd_Request.deleteGnssData.modify;
}

void Proto_Gpsd_Request.deleteGnssData.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_DeleteGnssData);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gpsd_DeleteGnssData);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__deleteGnssData;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMd, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gpsd_DeleteGnssData);
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
      v27 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gpsd_DeleteGnssData);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__deleteGnssData;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMd, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasDeleteGnssData.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMd, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__deleteGnssData;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMd, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMR);
  v7 = type metadata accessor for Proto_Gpsd_DeleteGnssData(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMd, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearDeleteGnssData()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMd, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gpsd_DeleteGnssData(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__deleteGnssData;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMd, &_s10ALProtobuf25Proto_Gpsd_DeleteGnssDataVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.setPvtmReport.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMd, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setPvtmReport;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMd, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMR);
  v9 = type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gpsd_SetPvtmReport);
  }

  UnknownStorage.init()();
  *(a1 + v9[5]) = 2;
  *(a1 + v9[6]) = 2;
  *(a1 + v9[7]) = 2;
  *(a1 + v9[8]) = 2;
  *(a1 + v9[9]) = 2;
  *(a1 + v9[10]) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMd, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMR);
  }

  return result;
}

int *Proto_Gpsd_SetPvtmReport.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
  *(a1 + result[5]) = 2;
  *(a1 + result[6]) = 2;
  *(a1 + result[7]) = 2;
  *(a1 + result[8]) = 2;
  *(a1 + result[9]) = 2;
  *(a1 + result[10]) = 2;
  return result;
}

uint64_t Proto_Gpsd_Request.setPvtmReport.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMd, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gpsd_SetPvtmReport);
  v17 = type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setPvtmReport;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMd, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.setPvtmReport.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMd, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setPvtmReport;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMd, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + v9[5]) = 2;
    *(v14 + v9[6]) = 2;
    *(v14 + v9[7]) = 2;
    *(v14 + v9[8]) = 2;
    *(v14 + v9[9]) = 2;
    *(v14 + v9[10]) = 2;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMd, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_SetPvtmReport);
  }

  return Proto_Gpsd_Request.setPvtmReport.modify;
}

void Proto_Gpsd_Request.setPvtmReport.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetPvtmReport);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gpsd_SetPvtmReport);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setPvtmReport;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMd, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gpsd_SetPvtmReport);
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
      v27 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gpsd_SetPvtmReport);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setPvtmReport;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMd, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasSetPvtmReport.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMd, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setPvtmReport;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMd, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMR);
  v7 = type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMd, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearSetPvtmReport()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMd, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setPvtmReport;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMd, &_s10ALProtobuf24Proto_Gpsd_SetPvtmReportVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.setNmeaHandler.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMd, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setNmeaHandler;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMd, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMR);
  v9 = type metadata accessor for Proto_Gpsd_SetNmeaHandler(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gpsd_SetNmeaHandler);
  }

  UnknownStorage.init()();
  v11 = a1 + *(v9 + 20);
  *v11 = 0;
  *(v11 + 8) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMd, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_DeleteGnssData.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = a1(0);
  v5 = a2 + *(result + 20);
  *v5 = 0;
  *(v5 + 8) = 1;
  return result;
}

uint64_t Proto_Gpsd_Request.setNmeaHandler.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMd, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gpsd_SetNmeaHandler);
  v17 = type metadata accessor for Proto_Gpsd_SetNmeaHandler(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setNmeaHandler;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMd, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.setNmeaHandler.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMd, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_SetNmeaHandler(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setNmeaHandler;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMd, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + *(v9 + 20);
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMd, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_SetNmeaHandler);
  }

  return Proto_Gpsd_Request.setNmeaHandler.modify;
}

void Proto_Gpsd_Request.setNmeaHandler.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetNmeaHandler);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gpsd_SetNmeaHandler);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setNmeaHandler;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMd, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gpsd_SetNmeaHandler);
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
      v27 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gpsd_SetNmeaHandler);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setNmeaHandler;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMd, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasSetNmeaHandler.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMd, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setNmeaHandler;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMd, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMR);
  v7 = type metadata accessor for Proto_Gpsd_SetNmeaHandler(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMd, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearSetNmeaHandler()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMd, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gpsd_SetNmeaHandler(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setNmeaHandler;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMd, &_s10ALProtobuf25Proto_Gpsd_SetNmeaHandlerVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.setConfigSimulatorMode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigSimulatorMode;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMR);
  v9 = type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode);
  }

  UnknownStorage.init()();
  *(a1 + *(v9 + 20)) = 2;
  v11 = a1 + *(v9 + 24);
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_SetConfigSimulatorMode.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode(0);
  *(a1 + *(result + 20)) = 2;
  v3 = a1 + *(result + 24);
  *v3 = 0;
  *(v3 + 4) = 1;
  return result;
}

uint64_t Proto_Gpsd_Request.setConfigSimulatorMode.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode);
  v17 = type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigSimulatorMode;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.setConfigSimulatorMode.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigSimulatorMode;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + *(v9 + 20)) = 2;
    v19 = v14 + *(v9 + 24);
    *v19 = 0;
    *(v19 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode);
  }

  return Proto_Gpsd_Request.setConfigSimulatorMode.modify;
}

void Proto_Gpsd_Request.setConfigSimulatorMode.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigSimulatorMode;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode);
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
      v27 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigSimulatorMode;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasSetConfigSimulatorMode.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigSimulatorMode;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMR);
  v7 = type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearSetConfigSimulatorMode()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigSimulatorMode;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetConfigSimulatorModeVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.setConfigEnableGnssConstellations.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMd, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigEnableGnssConstellations;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMd, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMR);
  v9 = type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations);
  }

  UnknownStorage.init()();
  v11 = a1 + *(v9 + 20);
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + *(v9 + 24);
  *v12 = 0;
  *(v12 + 4) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMd, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.setConfigEnableGnssConstellations.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMd, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations);
  v17 = type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigEnableGnssConstellations;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMd, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.setConfigEnableGnssConstellations.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMd, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigEnableGnssConstellations;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMd, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + *(v9 + 20);
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v14 + *(v9 + 24);
    *v20 = 0;
    *(v20 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMd, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations);
  }

  return Proto_Gpsd_Request.setConfigEnableGnssConstellations.modify;
}

void Proto_Gpsd_Request.setConfigEnableGnssConstellations.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigEnableGnssConstellations;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMd, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations);
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
      v27 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigEnableGnssConstellations;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMd, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasSetConfigEnableGnssConstellations.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMd, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigEnableGnssConstellations;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMd, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMR);
  v7 = type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMd, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearSetConfigEnableGnssConstellations()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMd, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigEnableGnssConstellations;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMd, &_s10ALProtobuf44Proto_Gpsd_SetConfigEnableGnssConstellationsVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.setConfigDutyCycling.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMd, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigDutyCycling;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMd, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMR);
  v9 = type metadata accessor for Proto_Gpsd_SetConfigDutyCycling(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gpsd_SetConfigDutyCycling);
  }

  UnknownStorage.init()();
  *(a1 + *(v9 + 20)) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMd, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_SetAssistanceSignalEnvironment.init()@<X0>(uint64_t (*a1)(void)@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  UnknownStorage.init()();
  result = a1(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t Proto_Gpsd_Request.setConfigDutyCycling.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMd, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gpsd_SetConfigDutyCycling);
  v17 = type metadata accessor for Proto_Gpsd_SetConfigDutyCycling(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigDutyCycling;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMd, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.setConfigDutyCycling.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMd, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_SetConfigDutyCycling(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigDutyCycling;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMd, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + *(v9 + 20)) = 2;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMd, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_SetConfigDutyCycling);
  }

  return Proto_Gpsd_Request.setConfigDutyCycling.modify;
}

void Proto_Gpsd_Request.setConfigDutyCycling.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetConfigDutyCycling);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gpsd_SetConfigDutyCycling);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigDutyCycling;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMd, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gpsd_SetConfigDutyCycling);
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
      v27 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gpsd_SetConfigDutyCycling);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigDutyCycling;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMd, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasSetConfigDutyCycling.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMd, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigDutyCycling;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMd, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMR);
  v7 = type metadata accessor for Proto_Gpsd_SetConfigDutyCycling(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMd, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearSetConfigDutyCycling()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMd, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gpsd_SetConfigDutyCycling(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigDutyCycling;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMd, &_s10ALProtobuf31Proto_Gpsd_SetConfigDutyCyclingVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.terminationImminent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMd, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__terminationImminent;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMd, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMR);
  v9 = type metadata accessor for Proto_Gpsd_TerminationImminent(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gpsd_TerminationImminent);
  }

  UnknownStorage.init()();
  v11 = (a1 + *(v9 + 20));
  *v11 = 0;
  v11[1] = 0;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMd, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.terminationImminent.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMd, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gpsd_TerminationImminent);
  v17 = type metadata accessor for Proto_Gpsd_TerminationImminent(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__terminationImminent;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMd, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.terminationImminent.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMd, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_TerminationImminent(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__terminationImminent;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMd, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = (v14 + *(v9 + 20));
    *v19 = 0;
    v19[1] = 0;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMd, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_TerminationImminent);
  }

  return Proto_Gpsd_Request.terminationImminent.modify;
}

void Proto_Gpsd_Request.terminationImminent.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_TerminationImminent);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gpsd_TerminationImminent);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__terminationImminent;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMd, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gpsd_TerminationImminent);
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
      v27 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gpsd_TerminationImminent);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__terminationImminent;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMd, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasTerminationImminent.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMd, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__terminationImminent;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMd, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMR);
  v7 = type metadata accessor for Proto_Gpsd_TerminationImminent(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMd, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearTerminationImminent()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMd, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gpsd_TerminationImminent(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__terminationImminent;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMd, &_s10ALProtobuf30Proto_Gpsd_TerminationImminentVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.exitMessage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMd, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exitMessage;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMd, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMR);
  v9 = type metadata accessor for Proto_Gpsd_ExitMessage(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gpsd_ExitMessage);
  }

  UnknownStorage.init()();
  v11 = (a1 + *(v9 + 20));
  *v11 = 0;
  v11[1] = 0;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMd, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_TerminationImminent.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = a1(0);
  v5 = (a2 + *(result + 20));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t Proto_Gpsd_Request.exitMessage.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMd, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gpsd_ExitMessage);
  v17 = type metadata accessor for Proto_Gpsd_ExitMessage(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exitMessage;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMd, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.exitMessage.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMd, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_ExitMessage(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exitMessage;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMd, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = (v14 + *(v9 + 20));
    *v19 = 0;
    v19[1] = 0;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMd, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_ExitMessage);
  }

  return Proto_Gpsd_Request.exitMessage.modify;
}

void Proto_Gpsd_Request.exitMessage.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_ExitMessage);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gpsd_ExitMessage);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exitMessage;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMd, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gpsd_ExitMessage);
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
      v27 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gpsd_ExitMessage);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exitMessage;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMd, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasExitMessage.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMd, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exitMessage;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMd, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMR);
  v7 = type metadata accessor for Proto_Gpsd_ExitMessage(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMd, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearExitMessage()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMd, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gpsd_ExitMessage(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exitMessage;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMd, &_s10ALProtobuf22Proto_Gpsd_ExitMessageVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.injectLtlInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMd, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectLtlInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMd, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMR);
  v9 = type metadata accessor for Proto_Gpsd_LtlInfo(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gpsd_LtlInfo);
  }

  UnknownStorage.init()();
  v11 = *(v9 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v11) = static Proto_Gpsd_LtlInfo._StorageClass.defaultInstance;
  v12 = v10(v6, 1, v9);

  if (v12 != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMd, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.injectLtlInfo.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMd, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gpsd_LtlInfo);
  v17 = type metadata accessor for Proto_Gpsd_LtlInfo(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectLtlInfo;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMd, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.injectLtlInfo.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMd, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_LtlInfo(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectLtlInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMd, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = *(v9 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v14 + v19) = static Proto_Gpsd_LtlInfo._StorageClass.defaultInstance;
    v20 = v18(v8, 1, v9);

    if (v20 != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMd, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_LtlInfo);
  }

  return Proto_Gpsd_Request.injectLtlInfo.modify;
}

void Proto_Gpsd_Request.injectLtlInfo.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_LtlInfo);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gpsd_LtlInfo);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectLtlInfo;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMd, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gpsd_LtlInfo);
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
      v27 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gpsd_LtlInfo);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectLtlInfo;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMd, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasInjectLtlInfo.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMd, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectLtlInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMd, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMR);
  v7 = type metadata accessor for Proto_Gpsd_LtlInfo(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMd, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearInjectLtlInfo()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMd, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gpsd_LtlInfo(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectLtlInfo;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMd, &_s10ALProtobuf18Proto_Gpsd_LtlInfoVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.startContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf23Proto_Gpsd_StartContextVSgMd, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startContext;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMd, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMR);
  started = type metadata accessor for Proto_Gpsd_StartContext(0);
  v10 = *(*(started - 1) + 48);
  if (v10(v6, 1, started) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gpsd_StartContext);
  }

  UnknownStorage.init()();
  *(a1 + started[5]) = 2;
  *(a1 + started[6]) = 2;
  *(a1 + started[7]) = 2;
  v11 = a1 + started[8];
  *v11 = 0;
  *(v11 + 8) = 1;
  *(a1 + started[9]) = 2;
  result = (v10)(v6, 1, started);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMd, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMR);
  }

  return result;
}

int *Proto_Gpsd_StartContext.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gpsd_StartContext(0);
  *(a1 + result[5]) = 2;
  *(a1 + result[6]) = 2;
  *(a1 + result[7]) = 2;
  v3 = a1 + result[8];
  *v3 = 0;
  *(v3 + 8) = 1;
  *(a1 + result[9]) = 2;
  return result;
}

uint64_t Proto_Gpsd_Request.startContext.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf23Proto_Gpsd_StartContextVSgMd, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gpsd_StartContext);
  started = type metadata accessor for Proto_Gpsd_StartContext(0);
  (*(*(started - 8) + 56))(v7, 0, 1, started);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startContext;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMd, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.startContext.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf23Proto_Gpsd_StartContextVSgMd, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMR) - 8) + 64);
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
  started = type metadata accessor for Proto_Gpsd_StartContext(0);
  *(v5 + 96) = started;
  v10 = *(started - 1);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startContext;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMd, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, started) == 1)
  {
    UnknownStorage.init()();
    *(v14 + started[5]) = 2;
    *(v14 + started[6]) = 2;
    *(v14 + started[7]) = 2;
    v19 = v14 + started[8];
    *v19 = 0;
    *(v19 + 8) = 1;
    *(v14 + started[9]) = 2;
    if (v18(v8, 1, started) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMd, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_StartContext);
  }

  return Proto_Gpsd_Request.startContext.modify;
}

void Proto_Gpsd_Request.startContext.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_StartContext);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gpsd_StartContext);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startContext;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMd, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gpsd_StartContext);
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
      v27 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gpsd_StartContext);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startContext;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMd, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasStartContext.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf23Proto_Gpsd_StartContextVSgMd, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startContext;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMd, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMR);
  started = type metadata accessor for Proto_Gpsd_StartContext(0);
  v8 = (*(*(started - 8) + 48))(v4, 1, started) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMd, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearStartContext()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf23Proto_Gpsd_StartContextVSgMd, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  started = type metadata accessor for Proto_Gpsd_StartContext(0);
  (*(*(started - 8) + 56))(v5, 1, 1, started);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startContext;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMd, &_s10ALProtobuf23Proto_Gpsd_StartContextVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.setThermalRiskState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMd, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setThermalRiskState;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMd, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMR);
  v9 = type metadata accessor for Proto_Gpsd_SetThermalRiskState(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gpsd_SetThermalRiskState);
  }

  UnknownStorage.init()();
  v11 = a1 + *(v9 + 20);
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + *(v9 + 24);
  *v12 = 0;
  *(v12 + 4) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMd, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_SetThermalRiskState.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gpsd_SetThermalRiskState(0);
  v3 = a1 + *(result + 20);
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + *(result + 24);
  *v4 = 0;
  *(v4 + 4) = 1;
  return result;
}

uint64_t Proto_Gpsd_Request.setThermalRiskState.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMd, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gpsd_SetThermalRiskState);
  v17 = type metadata accessor for Proto_Gpsd_SetThermalRiskState(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setThermalRiskState;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMd, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.setThermalRiskState.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMd, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_SetThermalRiskState(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setThermalRiskState;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMd, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + *(v9 + 20);
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v14 + *(v9 + 24);
    *v20 = 0;
    *(v20 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMd, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_SetThermalRiskState);
  }

  return Proto_Gpsd_Request.setThermalRiskState.modify;
}

void Proto_Gpsd_Request.setThermalRiskState.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetThermalRiskState);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gpsd_SetThermalRiskState);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setThermalRiskState;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMd, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gpsd_SetThermalRiskState);
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
      v27 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gpsd_SetThermalRiskState);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setThermalRiskState;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMd, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasSetThermalRiskState.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMd, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setThermalRiskState;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMd, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMR);
  v7 = type metadata accessor for Proto_Gpsd_SetThermalRiskState(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMd, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearSetThermalRiskState()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMd, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gpsd_SetThermalRiskState(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setThermalRiskState;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMd, &_s10ALProtobuf30Proto_Gpsd_SetThermalRiskStateVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.setConfigRfBandEnable.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigRfBandEnable;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMR);
  v9 = type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable);
  }

  UnknownStorage.init()();
  *(a1 + *(v9 + 20)) = 2;
  *(a1 + *(v9 + 24)) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_SetConfigRfBandEnable.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable(0);
  *(a1 + *(result + 20)) = 2;
  *(a1 + *(result + 24)) = 2;
  return result;
}

uint64_t Proto_Gpsd_Request.setConfigRfBandEnable.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable);
  v17 = type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigRfBandEnable;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.setConfigRfBandEnable.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigRfBandEnable;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + *(v9 + 20)) = 2;
    *(v14 + *(v9 + 24)) = 2;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable);
  }

  return Proto_Gpsd_Request.setConfigRfBandEnable.modify;
}

void Proto_Gpsd_Request.setConfigRfBandEnable.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigRfBandEnable;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable);
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
      v27 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigRfBandEnable;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasSetConfigRfBandEnable.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigRfBandEnable;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMR);
  v7 = type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearSetConfigRfBandEnable()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigRfBandEnable;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetConfigRfBandEnableVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.injectRavenOrbitFile.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRavenOrbitFile;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMR);
  v9 = type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile);
  }

  UnknownStorage.init()();
  *(a1 + *(v9 + 20)) = xmmword_23D1B1460;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMR);
  }

  return result;
}

double Proto_Gpsd_InjectRtiFile.init()@<D0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1(0);
  result = 0.0;
  *(a2 + *(v4 + 20)) = xmmword_23D1B1460;
  return result;
}

uint64_t Proto_Gpsd_Request.injectRavenOrbitFile.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile);
  v17 = type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRavenOrbitFile;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.injectRavenOrbitFile.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRavenOrbitFile;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + *(v9 + 20)) = xmmword_23D1B1460;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile);
  }

  return Proto_Gpsd_Request.injectRavenOrbitFile.modify;
}

void Proto_Gpsd_Request.injectRavenOrbitFile.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRavenOrbitFile;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile);
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
      v27 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRavenOrbitFile;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasInjectRavenOrbitFile.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRavenOrbitFile;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMR);
  v7 = type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearInjectRavenOrbitFile()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRavenOrbitFile;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectRavenOrbitFileVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.emergConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__emergConfig;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMR);
  v9 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gnss_Emergency_EmergConfig);
  }

  Proto_Gnss_Emergency_EmergConfig.init()(a1);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.emergConfig.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gnss_Emergency_EmergConfig);
  v17 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__emergConfig;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.emergConfig.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__emergConfig;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    Proto_Gnss_Emergency_EmergConfig.init()(v14);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gnss_Emergency_EmergConfig);
  }

  return Proto_Gpsd_Request.emergConfig.modify;
}

void Proto_Gpsd_Request.emergConfig.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_EmergConfig);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gnss_Emergency_EmergConfig);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__emergConfig;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gnss_Emergency_EmergConfig);
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
      v27 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gnss_Emergency_EmergConfig);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__emergConfig;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasEmergConfig.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__emergConfig;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearEmergConfig()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__emergConfig;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_EmergConfigVSgMR);
  swift_endAccess();
}

void (*Proto_Gpsd_Request.gemProtocolRequest.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gemProtocolRequest);
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
  return Proto_Gpsd_Request.gemProtocolRequest.modify;
}

uint64_t Proto_Gpsd_Request.positionRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionRequest;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMR);
  v9 = type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gnss_Emergency_PositionRequest);
  }

  Proto_Gnss_Emergency_PositionRequest.init()(a1);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.positionRequest.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gnss_Emergency_PositionRequest);
  v17 = type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionRequest;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.positionRequest.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionRequest;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    Proto_Gnss_Emergency_PositionRequest.init()(v14);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gnss_Emergency_PositionRequest);
  }

  return Proto_Gpsd_Request.positionRequest.modify;
}

void Proto_Gpsd_Request.positionRequest.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_PositionRequest);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gnss_Emergency_PositionRequest);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionRequest;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gnss_Emergency_PositionRequest);
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
      v27 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gnss_Emergency_PositionRequest);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionRequest;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasPositionRequest.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionRequest;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearPositionRequest()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionRequest;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_PositionRequestVSgMR);
  swift_endAccess();
}

void (*Proto_Gpsd_Request.sessionID.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__sessionID;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gpsd_Request.sessionID.modify;
}

uint64_t Proto_Gpsd_Request.gpsReferenceTime.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsReferenceTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMR);
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);
  }

  Proto_Gnss_Emergency_GpsReferenceTime.init()(a1);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.gpsReferenceTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);
  v17 = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsReferenceTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.gpsReferenceTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsReferenceTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    Proto_Gnss_Emergency_GpsReferenceTime.init()(v14);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);
  }

  return Proto_Gpsd_Request.gpsReferenceTime.modify;
}

void Proto_Gpsd_Request.gpsReferenceTime.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsReferenceTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);
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
      v27 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsReferenceTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasGpsReferenceTime.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsReferenceTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearGpsReferenceTime()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsReferenceTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsReferenceTimeVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.referenceLocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__referenceLocation;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMR);
  v9 = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
  }

  Proto_Gnss_Emergency_ReferenceLocation.init()(a1);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.referenceLocation.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
  v17 = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__referenceLocation;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.referenceLocation.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__referenceLocation;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    Proto_Gnss_Emergency_ReferenceLocation.init()(v14);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
  }

  return Proto_Gpsd_Request.referenceLocation.modify;
}

void Proto_Gpsd_Request.referenceLocation.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__referenceLocation;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
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
      v27 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__referenceLocation;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasReferenceLocation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__referenceLocation;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearReferenceLocation()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__referenceLocation;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_ReferenceLocationVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.gpsNavigationModel.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsNavigationModel;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMR);
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel);
  }

  Proto_Gnss_Emergency_GpsNavigationModel.init()(a1);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.gpsNavigationModel.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel);
  v17 = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsNavigationModel;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.gpsNavigationModel.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsNavigationModel;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    Proto_Gnss_Emergency_GpsNavigationModel.init()(v14);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel);
  }

  return Proto_Gpsd_Request.gpsNavigationModel.modify;
}

void Proto_Gpsd_Request.gpsNavigationModel.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsNavigationModel;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel);
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
      v27 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsNavigationModel;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasGpsNavigationModel.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsNavigationModel;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearGpsNavigationModel()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsNavigationModel;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsNavigationModelVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.gpsAcqAssistance.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsAcqAssistance;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMR);
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);
  }

  Proto_Gnss_Emergency_GpsAcqAssistance.init()(a1);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.gpsAcqAssistance.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);
  v17 = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsAcqAssistance;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.gpsAcqAssistance.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsAcqAssistance;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    Proto_Gnss_Emergency_GpsAcqAssistance.init()(v14);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);
  }

  return Proto_Gpsd_Request.gpsAcqAssistance.modify;
}

void Proto_Gpsd_Request.gpsAcqAssistance.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsAcqAssistance;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);
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
      v27 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsAcqAssistance;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasGpsAcqAssistance.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsAcqAssistance;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearGpsAcqAssistance()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsAcqAssistance;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_GpsAcqAssistanceVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.cellFtAssistance.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistance;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMR);
  v9 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance);
  }

  Proto_Gnss_Emergency_CellFTAssistance.init()(a1);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.cellFtAssistance.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance);
  v17 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistance;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.cellFtAssistance.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistance;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    Proto_Gnss_Emergency_CellFTAssistance.init()(v14);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance);
  }

  return Proto_Gpsd_Request.cellFtAssistance.modify;
}

void Proto_Gpsd_Request.cellFtAssistance.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistance;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance);
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
      v27 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistance;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasCellFtAssistance.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistance;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearCellFtAssistance()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistance;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_CellFTAssistanceVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.cplaneContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneContext;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMR);
  v9 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gnss_Emergency_CplaneContext);
  }

  Proto_Gnss_Emergency_CplaneContext.init()(a1);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.cplaneContext.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gnss_Emergency_CplaneContext);
  v17 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneContext;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.cplaneContext.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneContext;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    Proto_Gnss_Emergency_CplaneContext.init()(v14);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gnss_Emergency_CplaneContext);
  }

  return Proto_Gpsd_Request.cplaneContext.modify;
}

void Proto_Gpsd_Request.cplaneContext.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_CplaneContext);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gnss_Emergency_CplaneContext);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneContext;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gnss_Emergency_CplaneContext);
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
      v27 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gnss_Emergency_CplaneContext);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneContext;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasCplaneContext.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneContext;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearCplaneContext()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneContext;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_CplaneContextVSgMR);
  swift_endAccess();
}

void (*Proto_Gpsd_Request.suplInitVec.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitVec;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return Proto_Gpsd_Request.suplInitVec.modify;
}

uint64_t Proto_Gpsd_Request.locationID.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__locationID;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMR);
  v9 = type metadata accessor for Proto_Gnss_Emergency_LocationId(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gnss_Emergency_LocationId);
  }

  Proto_Gnss_Emergency_LocationId.init()(a1);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.locationID.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gnss_Emergency_LocationId);
  v17 = type metadata accessor for Proto_Gnss_Emergency_LocationId(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__locationID;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.locationID.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_LocationId(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__locationID;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    Proto_Gnss_Emergency_LocationId.init()(v14);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gnss_Emergency_LocationId);
  }

  return Proto_Gpsd_Request.locationID.modify;
}

void Proto_Gpsd_Request.locationID.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_LocationId);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gnss_Emergency_LocationId);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__locationID;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gnss_Emergency_LocationId);
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
      v27 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gnss_Emergency_LocationId);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__locationID;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasLocationID.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__locationID;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_LocationId(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearLocationID()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Emergency_LocationId(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__locationID;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_LocationIdVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.sessionID.getter(uint64_t (*a1)(void), void *a2)
{
  v3 = (*(v2 + *(a1(0) + 20)) + *a2);
  swift_beginAccess();
  if (v3[4])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

uint64_t Proto_Gpsd_Request.sessionID.setter(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t), void *a5)
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

  v20 = v14 + *a5;
  result = swift_beginAccess();
  *v20 = a1;
  *(v20 + 4) = 0;
  return result;
}

void (*Proto_Gpsd_Request.suplInitIndex.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitIndex;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gpsd_Request.suplInitIndex.modify;
}

void Proto_Gpsd_Request.sessionID.modify(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t), void *a5)
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

BOOL Proto_Gpsd_Request.hasSessionID.getter(uint64_t (*a1)(void), void *a2)
{
  v3 = *(v2 + *(a1(0) + 20)) + *a2;
  swift_beginAccess();
  return (*(v3 + 4) & 1) == 0;
}

uint64_t Proto_Gpsd_Request.clearSessionID()(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t), void *a4)
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

uint64_t Proto_Gpsd_Request.suplInitVec.getter(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  v5 = *(v3 + v4);
}

uint64_t Proto_Gpsd_Request.suplInitVec.setter(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v14);
    *(v4 + v6) = v13;
  }

  v15 = *a2;
  swift_beginAccess();
  v16 = *(v9 + v15);
  *(v9 + v15) = a1;
}

void (*Proto_Gpsd_Request.suplCert.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplCert;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return Proto_Gpsd_Request.suplCert.modify;
}

void Proto_Gpsd_Request.suplInitVec.modify(uint64_t *a1, char a2, uint64_t *a3)
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
      v15 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      v18 = swift_allocObject();
      v19 = v12;
      v12 = v18;
      Proto_Gpsd_Request._StorageClass.init(copying:)(v19);
      *(v14 + v13) = v18;
    }

    v20 = *a3;
    swift_beginAccess();
    v21 = *(v12 + v20);
    *(v12 + v20) = v5;

    v22 = *v6;
  }

  else
  {
    v23 = *(v8 + v7);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(v8 + v7);
    if ((v24 & 1) == 0)
    {
      v26 = *(v4 + 88);
      v27 = *(v4 + 80);
      v28 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v29 = *(v28 + 48);
      v30 = *(v28 + 52);
      v31 = swift_allocObject();
      v32 = v25;
      v25 = v31;
      Proto_Gpsd_Request._StorageClass.init(copying:)(v32);
      *(v27 + v26) = v31;
    }

    v33 = *a3;
    swift_beginAccess();
    v34 = *(v25 + v33);
    *(v25 + v33) = v5;
  }

  free(v4);
}

uint64_t Proto_Gpsd_Request.servingCellLte.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v2 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__servingCellLte;
  swift_beginAccess();
  return *(v1 + v2) & 1;
}

uint64_t Proto_Gpsd_Request.servingCellLte.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v12);
    *(v2 + v4) = v11;
  }

  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__servingCellLte;
  result = swift_beginAccess();
  *(v7 + v13) = a1 & 1;
  return result;
}

void (*Proto_Gpsd_Request.servingCellLte.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__servingCellLte;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return Proto_Gpsd_Request.servingCellLte.modify;
}

void Proto_Gpsd_Request.servingCellLte.modify(uint64_t *a1)
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
    v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v14);
    *(v9 + v8) = v13;
  }

  v15 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__servingCellLte;
  swift_beginAccess();
  *(v7 + v15) = v4;

  free(v1);
}

BOOL Proto_Gpsd_Request.hasServingCellLte.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v2 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__servingCellLte;
  swift_beginAccess();
  return *(v1 + v2) != 2;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearServingCellLte()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    Proto_Gpsd_Request._StorageClass.init(copying:)(v5);
    *(v1 + v2) = v9;
    v5 = v9;
  }

  v10 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__servingCellLte;
  swift_beginAccess();
  *(v5 + v10) = 2;
}

void (*Proto_Gpsd_Request.simInstance.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__simInstance;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gpsd_Request.simInstance.modify;
}

uint64_t Proto_Gpsd_Request.suplContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplContext;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMR);
  v9 = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gnss_Emergency_SuplContext);
  }

  Proto_Gnss_Emergency_SuplContext.init()(a1);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.suplContext.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gnss_Emergency_SuplContext);
  v17 = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplContext;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.suplContext.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplContext;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    Proto_Gnss_Emergency_SuplContext.init()(v14);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gnss_Emergency_SuplContext);
  }

  return Proto_Gpsd_Request.suplContext.modify;
}

void Proto_Gpsd_Request.suplContext.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_SuplContext);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gnss_Emergency_SuplContext);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplContext;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gnss_Emergency_SuplContext);
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
      v27 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gnss_Emergency_SuplContext);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplContext;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasSuplContext.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplContext;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearSuplContext()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplContext;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SuplContextVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.wlanMeasurementList.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMd, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementList;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMd, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMR);
  v9 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList);
  }

  Proto_Gnss_Emergency_WlanMeasurementList.init()(a1);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMd, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.wlanMeasurementList.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMd, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList);
  v17 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementList;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMd, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.wlanMeasurementList.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMd, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementList;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMd, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    Proto_Gnss_Emergency_WlanMeasurementList.init()(v14);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMd, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList);
  }

  return Proto_Gpsd_Request.wlanMeasurementList.modify;
}

void Proto_Gpsd_Request.wlanMeasurementList.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementList;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMd, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList);
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
      v27 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementList;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMd, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasWlanMeasurementList.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMd, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementList;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMd, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMd, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearWlanMeasurementList()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMd, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementList;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMd, &_s10ALProtobuf40Proto_Gnss_Emergency_WlanMeasurementListVSgMR);
  swift_endAccess();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gpsd_Request.TypeEnum(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gpsd_Request.TypeEnum and conformance Proto_Gpsd_Request.TypeEnum();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Enum.init(rawValue:) in conformance Proto_Gpsd_Request.TypeEnum@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Proto_Gpsd_Request.TypeEnum.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Proto_Gpsd_Request.TypeEnum@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Proto_Gpsd_Request.TypeEnum.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t Proto_Gpsd_LtlInfo.init()@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  UnknownStorage.init()();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t Proto_Gpsd_Response.requestType.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Response(0) + 20));
  if (v1 == 62)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gpsd_Response.requestType.setter(char a1)
{
  result = type metadata accessor for Proto_Gpsd_Response(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*Proto_Gpsd_Response.requestType.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_Response(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 62)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gpsd_Response.machContinuousTimeNs.setter(uint64_t a1)
{
  result = type metadata accessor for Proto_Gpsd_Response(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gpsd_Response.machContinuousTimeNs.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_Response(0) + 24);
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

Swift::Void __swiftcall Proto_Gpsd_Response.clearMachContinuousTimeNs()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gpsd_Response(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Proto_Gpsd_Response.resultCode.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Response(0) + 28));
  if (v1 == 10)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gpsd_Response.resultCode.setter(char a1)
{
  result = type metadata accessor for Proto_Gpsd_Response(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*Proto_Gpsd_Response.resultCode.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_Response(0) + 28);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 10)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Request.type.modify;
}

int *Proto_Gpsd_Response.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gpsd_Response(0);
  *(a1 + result[5]) = 62;
  v3 = a1 + result[6];
  *v3 = 0;
  *(v3 + 8) = 1;
  *(a1 + result[7]) = 10;
  return result;
}

uint64_t Proto_Gpsd_Indication.type.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  swift_beginAccess();
  if (*(v1 + 16) == 24)
  {
    return 0;
  }

  else
  {
    return *(v1 + 16);
  }
}

uint64_t Proto_Gpsd_Indication.type.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    Proto_Gpsd_Indication._StorageClass.init(copying:)(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 16) = a1;
  return result;
}

void (*Proto_Gpsd_Indication.type.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (v7 == 24)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return Proto_Gpsd_Indication.type.modify;
}

void Proto_Gpsd_Indication.type.modify(uint64_t *a1)
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
    v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    Proto_Gpsd_Indication._StorageClass.init(copying:)(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 16) = v2;

  free(v1);
}

BOOL Proto_Gpsd_Indication.hasType.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  swift_beginAccess();
  return *(v1 + 16) != 24;
}

uint64_t Proto_Gpsd_Indication.requestType.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  swift_beginAccess();
  if (*(v1 + 17) == 62)
  {
    return 0;
  }

  else
  {
    return *(v1 + 17);
  }
}

uint64_t Proto_Gpsd_Indication.requestType.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    Proto_Gpsd_Indication._StorageClass.init(copying:)(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 17) = a1;
  return result;
}

void (*Proto_Gpsd_Indication.requestType.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 17);
  if (v7 == 62)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return Proto_Gpsd_Indication.requestType.modify;
}

void Proto_Gpsd_Indication.requestType.modify(uint64_t *a1)
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
    v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    Proto_Gpsd_Indication._StorageClass.init(copying:)(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 17) = v2;

  free(v1);
}

BOOL Proto_Gpsd_Indication.hasRequestType.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  swift_beginAccess();
  return *(v1 + 17) != 62;
}

Swift::Void __swiftcall Proto_Gpsd_Indication.clearRequestType()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    v10 = v5;
    v5 = v9;
    Proto_Gpsd_Indication._StorageClass.init(copying:)(v10);
    *(v1 + v2) = v9;
  }

  swift_beginAccess();
  *(v5 + 17) = 62;
}

uint64_t Proto_Gpsd_Indication.machContinuousTimeNs.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  swift_beginAccess();
  if (*(v1 + 32))
  {
    return 0;
  }

  else
  {
    return *(v1 + 24);
  }
}

uint64_t Proto_Gpsd_Indication.machContinuousTimeNs.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    Proto_Gpsd_Indication._StorageClass.init(copying:)(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 24) = a1;
  *(v7 + 32) = 0;
  return result;
}

void (*Proto_Gpsd_Indication.machContinuousTimeNs.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  if (*(v6 + 32))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return Proto_Gpsd_Indication.machContinuousTimeNs.modify;
}

void Proto_Gpsd_Indication.machContinuousTimeNs.modify(uint64_t *a1)
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
    v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    Proto_Gpsd_Indication._StorageClass.init(copying:)(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 24) = v2;
  *(v7 + 32) = 0;

  free(v1);
}

BOOL Proto_Gpsd_Indication.hasMachContinuousTimeNs.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  swift_beginAccess();
  return (*(v1 + 32) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gpsd_Indication.clearMachContinuousTimeNs()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    v10 = v5;
    v5 = v9;
    Proto_Gpsd_Indication._StorageClass.init(copying:)(v10);
    *(v1 + v2) = v9;
  }

  swift_beginAccess();
  *(v5 + 24) = 0;
  *(v5 + 32) = 1;
}

uint64_t Proto_Gpsd_Indication.fix.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf14Proto_Gnss_FixVSgMd, &_s10ALProtobuf14Proto_Gnss_FixVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__fix;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf14Proto_Gnss_FixVSgMd, &_s10ALProtobuf14Proto_Gnss_FixVSgMR);
  v9 = type metadata accessor for Proto_Gnss_Fix(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gnss_Fix);
  }

  Proto_Gnss_Fix.init()(a1);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf14Proto_Gnss_FixVSgMd, &_s10ALProtobuf14Proto_Gnss_FixVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Indication.fix.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf14Proto_Gnss_FixVSgMd, &_s10ALProtobuf14Proto_Gnss_FixVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gpsd_Indication._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gnss_Fix);
  v17 = type metadata accessor for Proto_Gnss_Fix(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__fix;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf14Proto_Gnss_FixVSgMd, &_s10ALProtobuf14Proto_Gnss_FixVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Indication.fix.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf14Proto_Gnss_FixVSgMd, &_s10ALProtobuf14Proto_Gnss_FixVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Fix(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__fix;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf14Proto_Gnss_FixVSgMd, &_s10ALProtobuf14Proto_Gnss_FixVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    Proto_Gnss_Fix.init()(v14);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf14Proto_Gnss_FixVSgMd, &_s10ALProtobuf14Proto_Gnss_FixVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gnss_Fix);
  }

  return Proto_Gpsd_Indication.fix.modify;
}

void Proto_Gpsd_Indication.fix.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Fix);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gpsd_Indication._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gnss_Fix);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__fix;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf14Proto_Gnss_FixVSgMd, &_s10ALProtobuf14Proto_Gnss_FixVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gnss_Fix);
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
      v27 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gpsd_Indication._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gnss_Fix);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__fix;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf14Proto_Gnss_FixVSgMd, &_s10ALProtobuf14Proto_Gnss_FixVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Indication.hasFix.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf14Proto_Gnss_FixVSgMd, &_s10ALProtobuf14Proto_Gnss_FixVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__fix;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf14Proto_Gnss_FixVSgMd, &_s10ALProtobuf14Proto_Gnss_FixVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Fix(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf14Proto_Gnss_FixVSgMd, &_s10ALProtobuf14Proto_Gnss_FixVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Indication.clearFix()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf14Proto_Gnss_FixVSgMd, &_s10ALProtobuf14Proto_Gnss_FixVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gpsd_Indication._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Fix(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__fix;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf14Proto_Gnss_FixVSgMd, &_s10ALProtobuf14Proto_Gnss_FixVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Indication.meas.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMd, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__meas;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMd, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMR);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents);
  }

  CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.init()(a1);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMd, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Indication.meas.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMd, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gpsd_Indication._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__meas;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMd, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Indication.meas.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMd, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__meas;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMd, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.init()(v14);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMd, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents);
  }

  return Proto_Gpsd_Indication.meas.modify;
}

void Proto_Gpsd_Indication.meas.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gpsd_Indication._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__meas;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMd, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents);
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
      v27 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gpsd_Indication._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__meas;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMd, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Indication.hasMeas.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMd, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__meas;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMd, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMd, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Indication.clearMeas()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMd, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gpsd_Indication._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__meas;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMd, &_s10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Indication.powerMeasurement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gnss_PwrMeasurementVSgMd, &_s10ALProtobuf25Proto_Gnss_PwrMeasurementVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__powerMeasurement;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf25Proto_Gnss_PwrMeasurementVSgMd, &_s10ALProtobuf25Proto_Gnss_PwrMeasurementVSgMR);
  v9 = type metadata accessor for Proto_Gnss_PwrMeasurement(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gnss_PwrMeasurement);
  }

  Proto_Gnss_PwrMeasurement.init()(a1);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf25Proto_Gnss_PwrMeasurementVSgMd, &_s10ALProtobuf25Proto_Gnss_PwrMeasurementVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Indication.powerMeasurement.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gnss_PwrMeasurementVSgMd, &_s10ALProtobuf25Proto_Gnss_PwrMeasurementVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gpsd_Indication._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gnss_PwrMeasurement);
  v17 = type metadata accessor for Proto_Gnss_PwrMeasurement(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__powerMeasurement;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf25Proto_Gnss_PwrMeasurementVSgMd, &_s10ALProtobuf25Proto_Gnss_PwrMeasurementVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Indication.powerMeasurement.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gnss_PwrMeasurementVSgMd, &_s10ALProtobuf25Proto_Gnss_PwrMeasurementVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_PwrMeasurement(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__powerMeasurement;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf25Proto_Gnss_PwrMeasurementVSgMd, &_s10ALProtobuf25Proto_Gnss_PwrMeasurementVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    Proto_Gnss_PwrMeasurement.init()(v14);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf25Proto_Gnss_PwrMeasurementVSgMd, &_s10ALProtobuf25Proto_Gnss_PwrMeasurementVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gnss_PwrMeasurement);
  }

  return Proto_Gpsd_Indication.powerMeasurement.modify;
}

void Proto_Gpsd_Indication.powerMeasurement.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_PwrMeasurement);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gpsd_Indication._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gnss_PwrMeasurement);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__powerMeasurement;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf25Proto_Gnss_PwrMeasurementVSgMd, &_s10ALProtobuf25Proto_Gnss_PwrMeasurementVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gnss_PwrMeasurement);
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
      v27 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gpsd_Indication._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gnss_PwrMeasurement);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__powerMeasurement;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf25Proto_Gnss_PwrMeasurementVSgMd, &_s10ALProtobuf25Proto_Gnss_PwrMeasurementVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Indication.hasPowerMeasurement.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gnss_PwrMeasurementVSgMd, &_s10ALProtobuf25Proto_Gnss_PwrMeasurementVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__powerMeasurement;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf25Proto_Gnss_PwrMeasurementVSgMd, &_s10ALProtobuf25Proto_Gnss_PwrMeasurementVSgMR);
  v7 = type metadata accessor for Proto_Gnss_PwrMeasurement(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf25Proto_Gnss_PwrMeasurementVSgMd, &_s10ALProtobuf25Proto_Gnss_PwrMeasurementVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Indication.clearPowerMeasurement()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gnss_PwrMeasurementVSgMd, &_s10ALProtobuf25Proto_Gnss_PwrMeasurementVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gpsd_Indication._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_PwrMeasurement(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__powerMeasurement;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf25Proto_Gnss_PwrMeasurementVSgMd, &_s10ALProtobuf25Proto_Gnss_PwrMeasurementVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Indication.status.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf17Proto_Gpsd_StatusVSgMd, &_s10ALProtobuf17Proto_Gpsd_StatusVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__status;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf17Proto_Gpsd_StatusVSgMd, &_s10ALProtobuf17Proto_Gpsd_StatusVSgMR);
  v9 = type metadata accessor for Proto_Gpsd_Status(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gpsd_Status);
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
  *(a1 + v9[9]) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf17Proto_Gpsd_StatusVSgMd, &_s10ALProtobuf17Proto_Gpsd_StatusVSgMR);
  }

  return result;
}

int *Proto_Gpsd_Status.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gpsd_Status(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 8) = 1;
  *(a1 + result[7]) = 2;
  *(a1 + result[8]) = 2;
  *(a1 + result[9]) = 2;
  return result;
}

uint64_t Proto_Gpsd_Indication.status.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf17Proto_Gpsd_StatusVSgMd, &_s10ALProtobuf17Proto_Gpsd_StatusVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gpsd_Indication._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gpsd_Status);
  v17 = type metadata accessor for Proto_Gpsd_Status(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__status;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf17Proto_Gpsd_StatusVSgMd, &_s10ALProtobuf17Proto_Gpsd_StatusVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Indication.status.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf17Proto_Gpsd_StatusVSgMd, &_s10ALProtobuf17Proto_Gpsd_StatusVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_Status(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__status;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf17Proto_Gpsd_StatusVSgMd, &_s10ALProtobuf17Proto_Gpsd_StatusVSgMR);
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
    *(v14 + v9[9]) = 2;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf17Proto_Gpsd_StatusVSgMd, &_s10ALProtobuf17Proto_Gpsd_StatusVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_Status);
  }

  return Proto_Gpsd_Indication.status.modify;
}

void Proto_Gpsd_Indication.status.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_Status);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gpsd_Indication._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gpsd_Status);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__status;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf17Proto_Gpsd_StatusVSgMd, &_s10ALProtobuf17Proto_Gpsd_StatusVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gpsd_Status);
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
      v27 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gpsd_Indication._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gpsd_Status);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__status;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf17Proto_Gpsd_StatusVSgMd, &_s10ALProtobuf17Proto_Gpsd_StatusVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Indication.hasStatus.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf17Proto_Gpsd_StatusVSgMd, &_s10ALProtobuf17Proto_Gpsd_StatusVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__status;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf17Proto_Gpsd_StatusVSgMd, &_s10ALProtobuf17Proto_Gpsd_StatusVSgMR);
  v7 = type metadata accessor for Proto_Gpsd_Status(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf17Proto_Gpsd_StatusVSgMd, &_s10ALProtobuf17Proto_Gpsd_StatusVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Indication.clearStatus()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf17Proto_Gpsd_StatusVSgMd, &_s10ALProtobuf17Proto_Gpsd_StatusVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gpsd_Indication._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gpsd_Status(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__status;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf17Proto_Gpsd_StatusVSgMd, &_s10ALProtobuf17Proto_Gpsd_StatusVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Indication.timeTransferDataExtend.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_TimeTransferDataExtendVSgMd, &_s10ALProtobuf33Proto_Gnss_TimeTransferDataExtendVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__timeTransferDataExtend;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf33Proto_Gnss_TimeTransferDataExtendVSgMd, &_s10ALProtobuf33Proto_Gnss_TimeTransferDataExtendVSgMR);
  v9 = type metadata accessor for Proto_Gnss_TimeTransferDataExtend(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gnss_TimeTransferDataExtend);
  }

  Proto_Gnss_TimeTransferDataExtend.init()(a1);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf33Proto_Gnss_TimeTransferDataExtendVSgMd, &_s10ALProtobuf33Proto_Gnss_TimeTransferDataExtendVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Indication.timeTransferDataExtend.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_TimeTransferDataExtendVSgMd, &_s10ALProtobuf33Proto_Gnss_TimeTransferDataExtendVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gpsd_Indication._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gnss_TimeTransferDataExtend);
  v17 = type metadata accessor for Proto_Gnss_TimeTransferDataExtend(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__timeTransferDataExtend;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf33Proto_Gnss_TimeTransferDataExtendVSgMd, &_s10ALProtobuf33Proto_Gnss_TimeTransferDataExtendVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Indication.timeTransferDataExtend.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_TimeTransferDataExtendVSgMd, &_s10ALProtobuf33Proto_Gnss_TimeTransferDataExtendVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_TimeTransferDataExtend(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__timeTransferDataExtend;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf33Proto_Gnss_TimeTransferDataExtendVSgMd, &_s10ALProtobuf33Proto_Gnss_TimeTransferDataExtendVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    Proto_Gnss_TimeTransferDataExtend.init()(v14);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf33Proto_Gnss_TimeTransferDataExtendVSgMd, &_s10ALProtobuf33Proto_Gnss_TimeTransferDataExtendVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gnss_TimeTransferDataExtend);
  }

  return Proto_Gpsd_Indication.timeTransferDataExtend.modify;
}

void Proto_Gpsd_Indication.timeTransferDataExtend.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_TimeTransferDataExtend);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gpsd_Indication._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gnss_TimeTransferDataExtend);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__timeTransferDataExtend;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf33Proto_Gnss_TimeTransferDataExtendVSgMd, &_s10ALProtobuf33Proto_Gnss_TimeTransferDataExtendVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gnss_TimeTransferDataExtend);
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
      v27 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gpsd_Indication._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gnss_TimeTransferDataExtend);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__timeTransferDataExtend;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf33Proto_Gnss_TimeTransferDataExtendVSgMd, &_s10ALProtobuf33Proto_Gnss_TimeTransferDataExtendVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Indication.hasTimeTransferDataExtend.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_TimeTransferDataExtendVSgMd, &_s10ALProtobuf33Proto_Gnss_TimeTransferDataExtendVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__timeTransferDataExtend;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf33Proto_Gnss_TimeTransferDataExtendVSgMd, &_s10ALProtobuf33Proto_Gnss_TimeTransferDataExtendVSgMR);
  v7 = type metadata accessor for Proto_Gnss_TimeTransferDataExtend(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf33Proto_Gnss_TimeTransferDataExtendVSgMd, &_s10ALProtobuf33Proto_Gnss_TimeTransferDataExtendVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Indication.clearTimeTransferDataExtend()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_TimeTransferDataExtendVSgMd, &_s10ALProtobuf33Proto_Gnss_TimeTransferDataExtendVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gpsd_Indication._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_TimeTransferDataExtend(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__timeTransferDataExtend;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf33Proto_Gnss_TimeTransferDataExtendVSgMd, &_s10ALProtobuf33Proto_Gnss_TimeTransferDataExtendVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Indication.recoveryStatistics.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29Proto_Gpsd_RecoveryStatisticsVSgMd, &_s10ALProtobuf29Proto_Gpsd_RecoveryStatisticsVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__recoveryStatistics;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf29Proto_Gpsd_RecoveryStatisticsVSgMd, &_s10ALProtobuf29Proto_Gpsd_RecoveryStatisticsVSgMR);
  v9 = type metadata accessor for Proto_Gpsd_RecoveryStatistics(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gpsd_RecoveryStatistics);
  }

  *a1 = MEMORY[0x277D84F90];
  v11 = &a1[*(v9 + 20)];
  UnknownStorage.init()();
  v12 = *(v9 + 24);
  v13 = type metadata accessor for Proto_Gpsd_RecoveryStatistics.RecoveryStatus(0);
  (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf29Proto_Gpsd_RecoveryStatisticsVSgMd, &_s10ALProtobuf29Proto_Gpsd_RecoveryStatisticsVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_RecoveryStatistics.init()@<X0>(char *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for Proto_Gpsd_RecoveryStatistics(0);
  v3 = &a1[*(v2 + 20)];
  UnknownStorage.init()();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for Proto_Gpsd_RecoveryStatistics.RecoveryStatus(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t Proto_Gpsd_Indication.recoveryStatistics.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29Proto_Gpsd_RecoveryStatisticsVSgMd, &_s10ALProtobuf29Proto_Gpsd_RecoveryStatisticsVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gpsd_Indication._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gpsd_RecoveryStatistics);
  v17 = type metadata accessor for Proto_Gpsd_RecoveryStatistics(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__recoveryStatistics;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf29Proto_Gpsd_RecoveryStatisticsVSgMd, &_s10ALProtobuf29Proto_Gpsd_RecoveryStatisticsVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Indication.recoveryStatistics.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29Proto_Gpsd_RecoveryStatisticsVSgMd, &_s10ALProtobuf29Proto_Gpsd_RecoveryStatisticsVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_RecoveryStatistics(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__recoveryStatistics;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf29Proto_Gpsd_RecoveryStatisticsVSgMd, &_s10ALProtobuf29Proto_Gpsd_RecoveryStatisticsVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    v19 = &v14[*(v9 + 20)];
    UnknownStorage.init()();
    v20 = *(v9 + 24);
    v21 = type metadata accessor for Proto_Gpsd_RecoveryStatistics.RecoveryStatus(0);
    (*(*(v21 - 8) + 56))(&v14[v20], 1, 1, v21);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf29Proto_Gpsd_RecoveryStatisticsVSgMd, &_s10ALProtobuf29Proto_Gpsd_RecoveryStatisticsVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_RecoveryStatistics);
  }

  return Proto_Gpsd_Indication.recoveryStatistics.modify;
}

void Proto_Gpsd_Indication.recoveryStatistics.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_RecoveryStatistics);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gpsd_Indication._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gpsd_RecoveryStatistics);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__recoveryStatistics;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf29Proto_Gpsd_RecoveryStatisticsVSgMd, &_s10ALProtobuf29Proto_Gpsd_RecoveryStatisticsVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gpsd_RecoveryStatistics);
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
      v27 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gpsd_Indication._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gpsd_RecoveryStatistics);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__recoveryStatistics;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf29Proto_Gpsd_RecoveryStatisticsVSgMd, &_s10ALProtobuf29Proto_Gpsd_RecoveryStatisticsVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Indication.hasRecoveryStatistics.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29Proto_Gpsd_RecoveryStatisticsVSgMd, &_s10ALProtobuf29Proto_Gpsd_RecoveryStatisticsVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__recoveryStatistics;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf29Proto_Gpsd_RecoveryStatisticsVSgMd, &_s10ALProtobuf29Proto_Gpsd_RecoveryStatisticsVSgMR);
  v7 = type metadata accessor for Proto_Gpsd_RecoveryStatistics(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf29Proto_Gpsd_RecoveryStatisticsVSgMd, &_s10ALProtobuf29Proto_Gpsd_RecoveryStatisticsVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Indication.clearRecoveryStatistics()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29Proto_Gpsd_RecoveryStatisticsVSgMd, &_s10ALProtobuf29Proto_Gpsd_RecoveryStatisticsVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gpsd_Indication._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gpsd_RecoveryStatistics(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__recoveryStatistics;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf29Proto_Gpsd_RecoveryStatisticsVSgMd, &_s10ALProtobuf29Proto_Gpsd_RecoveryStatisticsVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Indication.ltlInfoRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gpsd_LtlInfoRequestVSgMd, &_s10ALProtobuf25Proto_Gpsd_LtlInfoRequestVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__ltlInfoRequest;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf25Proto_Gpsd_LtlInfoRequestVSgMd, &_s10ALProtobuf25Proto_Gpsd_LtlInfoRequestVSgMR);
  v9 = type metadata accessor for Proto_Gpsd_LtlInfoRequest(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gpsd_LtlInfoRequest);
  }

  UnknownStorage.init()();
  *(a1 + *(v9 + 20)) = 5;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf25Proto_Gpsd_LtlInfoRequestVSgMd, &_s10ALProtobuf25Proto_Gpsd_LtlInfoRequestVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Indication.ltlInfoRequest.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gpsd_LtlInfoRequestVSgMd, &_s10ALProtobuf25Proto_Gpsd_LtlInfoRequestVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gpsd_Indication._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gpsd_LtlInfoRequest);
  v17 = type metadata accessor for Proto_Gpsd_LtlInfoRequest(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__ltlInfoRequest;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf25Proto_Gpsd_LtlInfoRequestVSgMd, &_s10ALProtobuf25Proto_Gpsd_LtlInfoRequestVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Indication.ltlInfoRequest.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gpsd_LtlInfoRequestVSgMd, &_s10ALProtobuf25Proto_Gpsd_LtlInfoRequestVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_LtlInfoRequest(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__ltlInfoRequest;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf25Proto_Gpsd_LtlInfoRequestVSgMd, &_s10ALProtobuf25Proto_Gpsd_LtlInfoRequestVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + *(v9 + 20)) = 5;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf25Proto_Gpsd_LtlInfoRequestVSgMd, &_s10ALProtobuf25Proto_Gpsd_LtlInfoRequestVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_LtlInfoRequest);
  }

  return Proto_Gpsd_Indication.ltlInfoRequest.modify;
}

void Proto_Gpsd_Indication.ltlInfoRequest.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_LtlInfoRequest);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gpsd_Indication._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gpsd_LtlInfoRequest);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__ltlInfoRequest;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf25Proto_Gpsd_LtlInfoRequestVSgMd, &_s10ALProtobuf25Proto_Gpsd_LtlInfoRequestVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gpsd_LtlInfoRequest);
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
      v27 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gpsd_Indication._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gpsd_LtlInfoRequest);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__ltlInfoRequest;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf25Proto_Gpsd_LtlInfoRequestVSgMd, &_s10ALProtobuf25Proto_Gpsd_LtlInfoRequestVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Indication.hasLtlInfoRequest.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gpsd_LtlInfoRequestVSgMd, &_s10ALProtobuf25Proto_Gpsd_LtlInfoRequestVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__ltlInfoRequest;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf25Proto_Gpsd_LtlInfoRequestVSgMd, &_s10ALProtobuf25Proto_Gpsd_LtlInfoRequestVSgMR);
  v7 = type metadata accessor for Proto_Gpsd_LtlInfoRequest(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf25Proto_Gpsd_LtlInfoRequestVSgMd, &_s10ALProtobuf25Proto_Gpsd_LtlInfoRequestVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Indication.clearLtlInfoRequest()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gpsd_LtlInfoRequestVSgMd, &_s10ALProtobuf25Proto_Gpsd_LtlInfoRequestVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gpsd_Indication._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gpsd_LtlInfoRequest(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__ltlInfoRequest;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf25Proto_Gpsd_LtlInfoRequestVSgMd, &_s10ALProtobuf25Proto_Gpsd_LtlInfoRequestVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Indication.decodedExtendedEphemeris.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_DecodedExtendedEphemerisVSgMd, &_s10ALProtobuf35Proto_Gnss_DecodedExtendedEphemerisVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedExtendedEphemeris;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf35Proto_Gnss_DecodedExtendedEphemerisVSgMd, &_s10ALProtobuf35Proto_Gnss_DecodedExtendedEphemerisVSgMR);
  v9 = type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris);
  }

  Proto_Gnss_DecodedExtendedEphemeris.init()(a1);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf35Proto_Gnss_DecodedExtendedEphemerisVSgMd, &_s10ALProtobuf35Proto_Gnss_DecodedExtendedEphemerisVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Indication.decodedExtendedEphemeris.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_DecodedExtendedEphemerisVSgMd, &_s10ALProtobuf35Proto_Gnss_DecodedExtendedEphemerisVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gpsd_Indication._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris);
  v17 = type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedExtendedEphemeris;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf35Proto_Gnss_DecodedExtendedEphemerisVSgMd, &_s10ALProtobuf35Proto_Gnss_DecodedExtendedEphemerisVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Indication.decodedExtendedEphemeris.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_DecodedExtendedEphemerisVSgMd, &_s10ALProtobuf35Proto_Gnss_DecodedExtendedEphemerisVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedExtendedEphemeris;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf35Proto_Gnss_DecodedExtendedEphemerisVSgMd, &_s10ALProtobuf35Proto_Gnss_DecodedExtendedEphemerisVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    Proto_Gnss_DecodedExtendedEphemeris.init()(v14);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf35Proto_Gnss_DecodedExtendedEphemerisVSgMd, &_s10ALProtobuf35Proto_Gnss_DecodedExtendedEphemerisVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris);
  }

  return Proto_Gpsd_Indication.decodedExtendedEphemeris.modify;
}

void Proto_Gpsd_Indication.decodedExtendedEphemeris.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gpsd_Indication._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedExtendedEphemeris;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf35Proto_Gnss_DecodedExtendedEphemerisVSgMd, &_s10ALProtobuf35Proto_Gnss_DecodedExtendedEphemerisVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris);
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
      v27 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gpsd_Indication._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedExtendedEphemeris;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf35Proto_Gnss_DecodedExtendedEphemerisVSgMd, &_s10ALProtobuf35Proto_Gnss_DecodedExtendedEphemerisVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Indication.hasDecodedExtendedEphemeris.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_DecodedExtendedEphemerisVSgMd, &_s10ALProtobuf35Proto_Gnss_DecodedExtendedEphemerisVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedExtendedEphemeris;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf35Proto_Gnss_DecodedExtendedEphemerisVSgMd, &_s10ALProtobuf35Proto_Gnss_DecodedExtendedEphemerisVSgMR);
  v7 = type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf35Proto_Gnss_DecodedExtendedEphemerisVSgMd, &_s10ALProtobuf35Proto_Gnss_DecodedExtendedEphemerisVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Indication.clearDecodedExtendedEphemeris()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_DecodedExtendedEphemerisVSgMd, &_s10ALProtobuf35Proto_Gnss_DecodedExtendedEphemerisVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gpsd_Indication._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedExtendedEphemeris;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf35Proto_Gnss_DecodedExtendedEphemerisVSgMd, &_s10ALProtobuf35Proto_Gnss_DecodedExtendedEphemerisVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Indication.decodedRti.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf21Proto_Gnss_DecodedRtiVSgMd, &_s10ALProtobuf21Proto_Gnss_DecodedRtiVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedRti;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf21Proto_Gnss_DecodedRtiVSgMd, &_s10ALProtobuf21Proto_Gnss_DecodedRtiVSgMR);
  v9 = type metadata accessor for Proto_Gnss_DecodedRti(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gnss_DecodedRti);
  }

  Proto_Gnss_DecodedRti.init()(a1);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf21Proto_Gnss_DecodedRtiVSgMd, &_s10ALProtobuf21Proto_Gnss_DecodedRtiVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Indication.decodedRti.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf21Proto_Gnss_DecodedRtiVSgMd, &_s10ALProtobuf21Proto_Gnss_DecodedRtiVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gpsd_Indication._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gnss_DecodedRti);
  v17 = type metadata accessor for Proto_Gnss_DecodedRti(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedRti;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf21Proto_Gnss_DecodedRtiVSgMd, &_s10ALProtobuf21Proto_Gnss_DecodedRtiVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Indication.decodedRti.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf21Proto_Gnss_DecodedRtiVSgMd, &_s10ALProtobuf21Proto_Gnss_DecodedRtiVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_DecodedRti(0);
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
  v15 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedRti;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf21Proto_Gnss_DecodedRtiVSgMd, &_s10ALProtobuf21Proto_Gnss_DecodedRtiVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    Proto_Gnss_DecodedRti.init()(v14);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf21Proto_Gnss_DecodedRtiVSgMd, &_s10ALProtobuf21Proto_Gnss_DecodedRtiVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gnss_DecodedRti);
  }

  return Proto_Gpsd_Indication.decodedRti.modify;
}