void Proto_Gnss_Emergency_GpsMeasurements.gpsTimeUncertainty.modify(uint64_t *a1)
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
    v10 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 32) = v2;
  *(v7 + 36) = 0;

  free(v1);
}

BOOL Proto_Gnss_Emergency_PositionRequest.hasHorizontalAccuracy.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 36) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsMeasurements.clearGpsTimeUncertainty()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v5);
    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  *(v5 + 32) = 0;
  *(v5 + 36) = 1;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.velocityRequested.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  if (*(v2 + 44))
  {
    return 0;
  }

  else
  {
    return *(v2 + 40);
  }
}

uint64_t Proto_Gnss_Emergency_GpsMeasurements.nrOfSats.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 40) = a1;
  *(v7 + 44) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsMeasurements.nrOfSats.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 40);
  if (*(v6 + 44))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsMeasurements.nrOfSats.modify;
}

void Proto_Gnss_Emergency_GpsMeasurements.nrOfSats.modify(uint64_t *a1)
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
    v10 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 40) = v2;
  *(v7 + 44) = 0;

  free(v1);
}

BOOL Proto_Gnss_Emergency_PositionRequest.hasVelocityRequested.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 44) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsMeasurements.clearNrOfSats()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v5);
    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  *(v5 + 40) = 0;
  *(v5 + 44) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsMeasurements.measurements.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20));
  swift_beginAccess();
  v2 = *(v1 + 48);
}

uint64_t Proto_Gnss_Emergency_GpsMeasurements.measurements.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v12);
    *(v2 + v4) = v11;
  }

  swift_beginAccess();
  v13 = *(v7 + 48);
  *(v7 + 48) = a1;
}

void (*Proto_Gnss_Emergency_GpsMeasurements.measurements.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 48);

  return Proto_Gnss_Emergency_GpsMeasurements.measurements.modify;
}

void Proto_Gnss_Emergency_GpsMeasurements.measurements.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 72);
  v3 = *v4;
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 80);
  if (a2)
  {
    v7 = *(*a1 + 72);

    v8 = *(v6 + v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 88);
      v12 = *(v2 + 80);
      v13 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      v16 = swift_allocObject();
      v17 = v10;
      v10 = v16;
      Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v17);
      *(v12 + v11) = v16;
    }

    swift_beginAccess();
    v18 = *(v10 + 48);
    *(v10 + 48) = v3;

    v19 = *v4;
  }

  else
  {
    v20 = *(v6 + v5);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v6 + v5);
    if ((v21 & 1) == 0)
    {
      v23 = *(v2 + 88);
      v24 = *(v2 + 80);
      v25 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      v28 = swift_allocObject();
      v29 = v22;
      v22 = v28;
      Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v29);
      *(v24 + v23) = v28;
    }

    swift_beginAccess();
    v30 = *(v22 + 48);
    *(v22 + 48) = v3;
  }

  free(v2);
}

uint64_t Proto_Gnss_Emergency_GpsMeasurements.measuredTimeParams.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
  }

  UnknownStorage.init()();
  *(a1 + *(v9 + 20)) = 6;
  v11 = *(v9 + 24);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GpsMeasurements.measuredTimeParams.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v7, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
  v17 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_GpsMeasurements.measuredTimeParams.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + *(v9 + 20)) = 6;
    v19 = *(v9 + 24);
    v20 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
  }

  return Proto_Gnss_Emergency_GpsMeasurements.measuredTimeParams.modify;
}

void Proto_Gnss_Emergency_GpsMeasurements.measuredTimeParams.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v15, v19, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v14, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v14, v19, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gnss_Emergency_GpsMeasurements.hasMeasuredTimeParams.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsMeasurements.clearMeasuredTimeParams()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  swift_endAccess();
}

void (*Proto_Gnss_Emergency_GpsMeasurements.codePhaseAmbiguity.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__codePhaseAmbiguity;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsMeasurements.codePhaseAmbiguity.modify;
}

uint64_t Proto_Gnss_Emergency_GpsMeasurements.codePhaseAmbiguity.setter(int a1, void *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v14);
    *(v4 + v6) = v13;
  }

  v15 = v9 + *a2;
  result = swift_beginAccess();
  *v15 = a1;
  *(v15 + 4) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsMeasurements.gpsTodpresent.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTodpresent;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsMeasurements.gpsTodpresent.modify;
}

void Proto_Gnss_Emergency_GpsMeasurements.codePhaseAmbiguity.modify(uint64_t *a1, uint64_t a2, void *a3)
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
    v13 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    v16 = swift_allocObject();
    v17 = v10;
    v10 = v16;
    Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v17);
    *(v12 + v11) = v16;
  }

  v18 = v10 + *a3;
  swift_beginAccess();
  *v18 = v5;
  *(v18 + 4) = 0;

  free(v4);
}

uint64_t Proto_Gnss_Emergency_GpsMeasurements.clearCodePhaseAmbiguity()(void *a1)
{
  v3 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v12);
    *(v3 + v4) = v11;
  }

  v13 = v7 + *a1;
  result = swift_beginAccess();
  *v13 = 0;
  *(v13 + 4) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_GpsMeasurements.gpsTod.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  }

  UnknownStorage.init()();
  v11 = a1 + v9[5];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v9[6];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v9[7];
  *v13 = 0;
  *(v13 + 4) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GpsMeasurements.gpsTod.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v7, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  v17 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_GpsMeasurements.gpsTod.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
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
      outlined destroy of Any?(v8, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  }

  return Proto_Gnss_Emergency_GpsMeasurements.gpsTod.modify;
}

void Proto_Gnss_Emergency_GpsMeasurements.gpsTod.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v15, v19, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v14, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v14, v19, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gnss_Emergency_GpsMeasurements.hasGpsTod.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsMeasurements.clearGpsTod()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_PositionReport.result.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  if (*(v2 + 16) == 9)
  {
    return 0;
  }

  else
  {
    return *(v2 + 16);
  }
}

uint64_t Proto_Gnss_Emergency_PositionReport.result.setter(char a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v7 = v4;
  v9 = *(a2(0) + 20);
  v10 = *(v4 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v4 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = a3(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    v16 = swift_allocObject();
    a4(v12);

    *(v7 + v9) = v16;
    v12 = v16;
  }

  result = swift_beginAccess();
  *(v12 + 16) = a1;
  return result;
}

void (*Proto_Gnss_Emergency_MeasurementReport.result.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (v7 == 9)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return Proto_Gnss_Emergency_MeasurementReport.result.modify;
}

void Proto_Gnss_Emergency_PositionReport.result.modify(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v6 = *a1;
  v7 = *(*a1 + 84);
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 72);
  v10 = *(v9 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v9 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = *(v6 + 80);
    v14 = *(v6 + 72);
    v15 = a3(0);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    v18 = swift_allocObject();
    a4(v12);

    *(v14 + v13) = v18;
    v12 = v18;
  }

  swift_beginAccess();
  *(v12 + 16) = v7;

  free(v6);
}

BOOL Proto_Gnss_Emergency_PositionReport.hasResult.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return *(v2 + 16) != 9;
}

uint64_t Proto_Gnss_Emergency_PositionReport.clearResult()(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t))
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
    a3(v10);

    *(v6 + v7) = v14;
    v10 = v14;
  }

  result = swift_beginAccess();
  *(v10 + 16) = 9;
  return result;
}

uint64_t Proto_Gnss_Emergency_PositionReport.responseType.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  if (*(v2 + 24))
  {
    return 0;
  }

  else
  {
    return *(v2 + 20);
  }
}

uint64_t Proto_Gnss_Emergency_PositionReport.responseType.setter(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v7 = v4;
  v9 = *(a2(0) + 20);
  v10 = *(v4 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v4 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = a3(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    v16 = swift_allocObject();
    a4(v12);

    *(v7 + v9) = v16;
    v12 = v16;
  }

  result = swift_beginAccess();
  *(v12 + 20) = a1;
  *(v12 + 24) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_MeasurementReport.responseType.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 20);
  if (*(v6 + 24))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_MeasurementReport.responseType.modify;
}

void Proto_Gnss_Emergency_PositionReport.responseType.modify(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t))
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
    a4(v12);

    *(v14 + v13) = v18;
    v12 = v18;
  }

  swift_beginAccess();
  *(v12 + 20) = v7;
  *(v12 + 24) = 0;

  free(v6);
}

BOOL Proto_Gnss_Emergency_PositionReport.hasResponseType.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 24) & 1) == 0;
}

uint64_t Proto_Gnss_Emergency_PositionReport.clearResponseType()(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t))
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
    a3(v10);

    *(v6 + v7) = v14;
    v10 = v14;
  }

  result = swift_beginAccess();
  *(v10 + 20) = 0;
  *(v10 + 24) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_MeasurementReport.sessionInfo.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    specialized Proto_Gnss_Emergency_MeasurementReport._StorageClass.init(copying:)(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v7, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  v16 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v17, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_MeasurementReport.sessionInfo.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + v9[5]) = 6;
    *(v14 + v9[6]) = 7;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  }

  return Proto_Gnss_Emergency_MeasurementReport.sessionInfo.modify;
}

void Proto_Gnss_Emergency_MeasurementReport.sessionInfo.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      specialized Proto_Gnss_Emergency_MeasurementReport._StorageClass.init(copying:)(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v15, v19, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v14, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      specialized Proto_Gnss_Emergency_MeasurementReport._StorageClass.init(copying:)(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v14, v19, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gnss_Emergency_MeasurementReport.hasSessionInfo.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_MeasurementReport.clearSessionInfo()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    specialized Proto_Gnss_Emergency_MeasurementReport._StorageClass.init(copying:)(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v15, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_MeasurementReport.gpsMeasurements.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    specialized Proto_Gnss_Emergency_MeasurementReport._StorageClass.init(copying:)(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v7, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
  v16 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v17, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_MeasurementReport.gpsMeasurements.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = *(v9 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v14 + v19) = static Proto_Gnss_Emergency_GpsMeasurements._StorageClass.defaultInstance;
    v20 = v18(v8, 1, v9);

    if (v20 != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
  }

  return Proto_Gnss_Emergency_MeasurementReport.gpsMeasurements.modify;
}

void Proto_Gnss_Emergency_MeasurementReport.gpsMeasurements.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      specialized Proto_Gnss_Emergency_MeasurementReport._StorageClass.init(copying:)(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v15, v19, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v14, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      specialized Proto_Gnss_Emergency_MeasurementReport._StorageClass.init(copying:)(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v14, v19, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gnss_Emergency_MeasurementReport.hasGpsMeasurements.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_MeasurementReport.clearGpsMeasurements()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    specialized Proto_Gnss_Emergency_MeasurementReport._StorageClass.init(copying:)(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v15, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_MeasurementReport.ganssMeasurements.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
  }

  UnknownStorage.init()();
  *(a1 + v9[5]) = 6;
  v11 = a1 + v9[6];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v9[7];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v9[8];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1 + v9[9];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = v9[10];
  v16 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
  (*(*(v16 - 8) + 56))(a1 + v15, 1, 1, v16);
  v17 = a1 + v9[11];
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = v9[12];
  v19 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  (*(*(v19 - 8) + 56))(a1 + v18, 1, 1, v19);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_MeasurementReport.ganssMeasurements.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    specialized Proto_Gnss_Emergency_MeasurementReport._StorageClass.init(copying:)(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v7, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
  v16 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v17, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_MeasurementReport.ganssMeasurements.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + v9[5]) = 6;
    v19 = v14 + v9[6];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v14 + v9[7];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v14 + v9[8];
    *v21 = 0;
    *(v21 + 4) = 1;
    v22 = v14 + v9[9];
    *v22 = 0;
    *(v22 + 4) = 1;
    v23 = v9[10];
    v24 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
    (*(*(v24 - 8) + 56))(v14 + v23, 1, 1, v24);
    v25 = v14 + v9[11];
    *v25 = 0;
    *(v25 + 4) = 1;
    v26 = v9[12];
    v27 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
    (*(*(v27 - 8) + 56))(v14 + v26, 1, 1, v27);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
  }

  return Proto_Gnss_Emergency_MeasurementReport.ganssMeasurements.modify;
}

void Proto_Gnss_Emergency_MeasurementReport.ganssMeasurements.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      specialized Proto_Gnss_Emergency_MeasurementReport._StorageClass.init(copying:)(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v15, v19, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v14, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      specialized Proto_Gnss_Emergency_MeasurementReport._StorageClass.init(copying:)(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v14, v19, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gnss_Emergency_MeasurementReport.hasGanssMeasurements.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_MeasurementReport.clearGanssMeasurements()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    specialized Proto_Gnss_Emergency_MeasurementReport._StorageClass.init(copying:)(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v15, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
  swift_endAccess();
}

void (*Proto_Gnss_Emergency_MeasurementReport.moreGanssMeasurements.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__moreGanssMeasurements;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_MeasurementReport.moreGanssMeasurements.modify;
}

void (*Proto_Gnss_Emergency_MeasurementReport.isMeasInCdmaTime.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return Proto_Gnss_Emergency_MeasurementReport.isMeasInCdmaTime.modify;
}

uint64_t Proto_Gnss_Emergency_GpsAssistanceRequest.aidMask.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAssistanceRequest.aidMask.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAssistanceRequest.clearAidMask()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAssistanceRequest.gWeek.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAssistanceRequest.gWeek.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0) + 32);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAssistanceRequest.clearGWeek()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAssistanceRequest.gToe.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAssistanceRequest.gToe.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0) + 36);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAssistanceRequest.clearGToe()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAssistanceRequest.numOfSats.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAssistanceRequest.numOfSats.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0) + 40);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAssistanceRequest.clearNumOfSats()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAssistanceRequest.toeLimit.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAssistanceRequest.toeLimit.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0) + 44);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAssistanceRequest.clearToeLimit()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0) + 44);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssTimeModelElem.ganssToIds.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssTimeModelElem.ganssToIds.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssTimeModelElem.clearGanssToIds()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssTimeModelElem.deltaT.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssTimeModelElem.deltaT.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssTimeModelElem.clearDeltaT()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssDataBitAssist.ganssTod.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssDataBitAssist.ganssTod.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssDataBitAssist.clearGanssTod()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssDataBitAssist.ganssTodFrac.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssDataBitAssist.ganssTodFrac.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssDataBitAssist.clearGanssTodFrac()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssDataBitAssist.ganssSignalID.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssDataBitAssist.ganssSignalID.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0) + 32);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssDataBitAssist.clearGanssSignalID()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssDataBitAssist.ganssDataBitIntervalK.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssDataBitAssist.ganssDataBitIntervalK.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0) + 36);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssDataBitAssist.clearGanssDataBitIntervalK()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssDataBitAssist.ganssDataBitNoOfSats.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssDataBitAssist.ganssDataBitNoOfSats.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0) + 40);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssDataBitAssist.clearGanssDataBitNoOfSats()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssDataBitAssist.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  v3 = a1 + v2[5];
  result = UnknownStorage.init()();
  v5 = a1 + v2[6];
  *v5 = 0;
  v5[4] = 1;
  v6 = a1 + v2[7];
  *v6 = 0;
  v6[4] = 1;
  v7 = a1 + v2[8];
  *v7 = 0;
  v7[4] = 1;
  v8 = a1 + v2[9];
  *v8 = 0;
  v8[4] = 1;
  v9 = a1 + v2[10];
  *v9 = 0;
  v9[4] = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_GanssStoredSatDataElem.ganssSatID.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssStoredSatDataElem.ganssSatID.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssStoredSatDataElem.clearGanssSatID()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssStoredSatDataElem.ganssSatIod.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssStoredSatDataElem.ganssSatIod.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssStoredSatDataElem.clearGanssSatIod()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssNavModelAddData.ganssWeekDay.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssNavModelAddData.ganssWeekDay.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssNavModelAddData.clearGanssWeekDay()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssNavModelAddData.ganssToe.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssNavModelAddData.ganssToe.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssNavModelAddData.clearGanssToe()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssNavModelAddData.ganssTtoeLimit.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssNavModelAddData.ganssTtoeLimit.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0) + 32);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssNavModelAddData.clearGanssTtoeLimit()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssNavModelAddData.ganssSatRelatedDataInfoArrayCount.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssNavModelAddData.ganssSatRelatedDataInfoArrayCount.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0) + 36);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssNavModelAddData.clearGanssSatRelatedDataInfoArrayCount()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssNavModelAddData.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  v3 = a1 + v2[5];
  result = UnknownStorage.init()();
  v5 = a1 + v2[6];
  *v5 = 0;
  v5[4] = 1;
  v6 = a1 + v2[7];
  *v6 = 0;
  v6[4] = 1;
  v7 = a1 + v2[8];
  *v7 = 0;
  v7[4] = 1;
  v8 = a1 + v2[9];
  *v8 = 0;
  v8[4] = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_GanssAddAssistDataChoices.ganssOrbitModelID.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssAddAssistDataChoices.ganssOrbitModelID.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssAddAssistDataChoices.clearGanssOrbitModelID()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssAddAssistDataChoices.ganssClockModelID.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssAddAssistDataChoices.ganssClockModelID.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssAddAssistDataChoices.clearGanssClockModelID()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssAddAssistDataChoices.ganssUtcModelID.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssAddAssistDataChoices.ganssUtcModelID.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssAddAssistDataChoices.clearGanssUtcModelID()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssAddAssistDataChoices.ganssAlmanacModelID.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssAddAssistDataChoices.ganssAlmanacModelID.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0) + 32);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssAddAssistDataChoices.clearGanssAlmanacModelID()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

int *Proto_Gnss_Emergency_HorizWithVertVelocity.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = a1(0);
  v5 = a2 + result[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a2 + result[6];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + result[7];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a2 + result[8];
  *v8 = 0;
  *(v8 + 4) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssID.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20));
  swift_beginAccess();
  if (*(v1 + 16) == 7)
  {
    return 0;
  }

  else
  {
    return *(v1 + 16);
  }
}

uint64_t Proto_Gnss_Emergency_Init.posMethod.setter(char a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v7 = v4;
  v9 = *(a2(0) + 20);
  v10 = *(v4 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v4 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = a3(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    v16 = swift_allocObject();
    v17 = v12;
    v12 = v16;
    a4(v17);
    *(v7 + v9) = v16;
  }

  result = swift_beginAccess();
  *(v12 + 16) = a1;
  return result;
}

void (*Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssID.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (v7 == 7)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssID.modify;
}

void Proto_Gnss_Emergency_Init.posMethod.modify(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v6 = *a1;
  v7 = *(*a1 + 84);
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 72);
  v10 = *(v9 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v9 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = *(v6 + 80);
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

  free(v6);
}

BOOL Proto_Gnss_Emergency_GanssAidRequestPerGanss.hasGanssID.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20));
  swift_beginAccess();
  return *(v1 + 16) != 7;
}

uint64_t Proto_Gnss_Emergency_Init.clearPosMethod()(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t), char a4)
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

  result = swift_beginAccess();
  *(v12 + 16) = a4;
  return result;
}

void (*Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssGenericAidMask.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 20);
  if (*(v6 + 24))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssGenericAidMask.modify;
}

uint64_t Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssTimeModelInfoArrayCount.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20));
  swift_beginAccess();
  if (*(v1 + 32))
  {
    return 0;
  }

  else
  {
    return *(v1 + 28);
  }
}

uint64_t Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssTimeModelInfoArrayCount.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.init(copying:)(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 28) = a1;
  *(v7 + 32) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssTimeModelInfoArrayCount.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 28);
  if (*(v6 + 32))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssTimeModelInfoArrayCount.modify;
}

void Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssTimeModelInfoArrayCount.modify(uint64_t *a1)
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
    v10 = type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.init(copying:)(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 28) = v2;
  *(v7 + 32) = 0;

  free(v1);
}

BOOL Proto_Gnss_Emergency_GanssAidRequestPerGanss.hasGanssTimeModelInfoArrayCount.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20));
  swift_beginAccess();
  return (*(v1 + 32) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssAidRequestPerGanss.clearGanssTimeModelInfoArrayCount()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.init(copying:)(v5);
    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  *(v5 + 28) = 0;
  *(v5 + 32) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssTimeModelInfoArray.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20));
  swift_beginAccess();
  v2 = *(v1 + 40);
}

uint64_t Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssTimeModelInfoArray.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.init(copying:)(v12);
    *(v2 + v4) = v11;
  }

  swift_beginAccess();
  v13 = *(v7 + 40);
  *(v7 + 40) = a1;
}

void (*Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssTimeModelInfoArray.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 40);

  return Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssTimeModelInfoArray.modify;
}

void Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssTimeModelInfoArray.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 72);
  v3 = *v4;
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 80);
  if (a2)
  {
    v7 = *(*a1 + 72);

    v8 = *(v6 + v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 88);
      v12 = *(v2 + 80);
      v13 = type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      v16 = swift_allocObject();
      v17 = v10;
      v10 = v16;
      Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.init(copying:)(v17);
      *(v12 + v11) = v16;
    }

    swift_beginAccess();
    v18 = *(v10 + 40);
    *(v10 + 40) = v3;

    v19 = *v4;
  }

  else
  {
    v20 = *(v6 + v5);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v6 + v5);
    if ((v21 & 1) == 0)
    {
      v23 = *(v2 + 88);
      v24 = *(v2 + 80);
      v25 = type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      v28 = swift_allocObject();
      v29 = v22;
      v22 = v28;
      Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.init(copying:)(v29);
      *(v24 + v23) = v28;
    }

    swift_beginAccess();
    v30 = *(v22 + 40);
    *(v22 + 40) = v3;
  }

  free(v2);
}

uint64_t Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssDataBitAssist.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
  }

  *a1 = MEMORY[0x277D84F90];
  v11 = a1 + v9[5];
  UnknownStorage.init()();
  v12 = a1 + v9[6];
  *v12 = 0;
  v12[4] = 1;
  v13 = a1 + v9[7];
  *v13 = 0;
  v13[4] = 1;
  v14 = a1 + v9[8];
  *v14 = 0;
  v14[4] = 1;
  v15 = a1 + v9[9];
  *v15 = 0;
  v15[4] = 1;
  v16 = a1 + v9[10];
  *v16 = 0;
  v16[4] = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssDataBitAssist.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v7, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
  v17 = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssDataBitAssist.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    v19 = v14 + v9[5];
    UnknownStorage.init()();
    v20 = v14 + v9[6];
    *v20 = 0;
    v20[4] = 1;
    v21 = v14 + v9[7];
    *v21 = 0;
    v21[4] = 1;
    v22 = v14 + v9[8];
    *v22 = 0;
    v22[4] = 1;
    v23 = v14 + v9[9];
    *v23 = 0;
    v23[4] = 1;
    v24 = v14 + v9[10];
    *v24 = 0;
    v24[4] = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
  }

  return Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssDataBitAssist.modify;
}

void Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssDataBitAssist.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v15, v19, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v14, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v14, v19, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gnss_Emergency_GanssAidRequestPerGanss.hasGanssDataBitAssist.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssAidRequestPerGanss.clearGanssDataBitAssist()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssNavModelAddData.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
  }

  *a1 = MEMORY[0x277D84F90];
  v11 = a1 + v9[5];
  UnknownStorage.init()();
  v12 = a1 + v9[6];
  *v12 = 0;
  v12[4] = 1;
  v13 = a1 + v9[7];
  *v13 = 0;
  v13[4] = 1;
  v14 = a1 + v9[8];
  *v14 = 0;
  v14[4] = 1;
  v15 = a1 + v9[9];
  *v15 = 0;
  v15[4] = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssNavModelAddData.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v7, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
  v17 = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssNavModelAddData.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    v19 = v14 + v9[5];
    UnknownStorage.init()();
    v20 = v14 + v9[6];
    *v20 = 0;
    v20[4] = 1;
    v21 = v14 + v9[7];
    *v21 = 0;
    v21[4] = 1;
    v22 = v14 + v9[8];
    *v22 = 0;
    v22[4] = 1;
    v23 = v14 + v9[9];
    *v23 = 0;
    v23[4] = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
  }

  return Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssNavModelAddData.modify;
}

void Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssNavModelAddData.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v15, v19, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v14, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v14, v19, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gnss_Emergency_GanssAidRequestPerGanss.hasGanssNavModelAddData.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssAidRequestPerGanss.clearGanssNavModelAddData()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssAddAssistDataChoices.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
  }

  UnknownStorage.init()();
  v11 = a1 + v9[5];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v9[6];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v9[7];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1 + v9[8];
  *v14 = 0;
  *(v14 + 4) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssAddAssistDataChoices.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v7, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
  v17 = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssAddAssistDataChoices.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
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
    v22 = v14 + v9[8];
    *v22 = 0;
    *(v22 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
  }

  return Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssAddAssistDataChoices.modify;
}

void Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssAddAssistDataChoices.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v15, v19, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v14, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v14, v19, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gnss_Emergency_GanssAidRequestPerGanss.hasGanssAddAssistDataChoices.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssAidRequestPerGanss.clearGanssAddAssistDataChoices()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_GanssAssistanceRequest.ganssCommonAidMask.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssAssistanceRequest.ganssCommonAidMask.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssAssistanceRequest.clearGanssCommonAidMask()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssAssistanceRequest.ganssTimeReqPrefInfoArrayCount.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssAssistanceRequest.ganssTimeReqPrefInfoArrayCount.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0) + 32);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssAssistanceRequest.clearGanssTimeReqPrefInfoArrayCount()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssAssistanceRequest.glonassNotOfLeapSecRequested.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssAssistanceRequest.glonassNotOfLeapSecRequested.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0) + 36);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssAssistanceRequest.clearGlonassNotOfLeapSecRequested()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssAssistanceRequest.ganssAddIonosModel.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssAssistanceRequest.ganssAddIonosModel.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0) + 40);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssAssistanceRequest.clearGanssAddIonosModel()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssAssistanceRequest.ganssAidDataReqArrayCount.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssAssistanceRequest.ganssAidDataReqArrayCount.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0) + 44);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssAssistanceRequest.clearGanssAidDataReqArrayCount()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0) + 44);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAssistanceRequest.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Proto_Gnss_Emergency_GpsAssistanceRequest.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Proto_Gnss_Emergency_GpsAssistanceRequest.init()@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v3 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v3;
  v4 = a1(0);
  v5 = a2 + v4[6];
  result = UnknownStorage.init()();
  v7 = a2 + v4[7];
  *v7 = 0;
  v7[4] = 1;
  v8 = a2 + v4[8];
  *v8 = 0;
  v8[4] = 1;
  v9 = a2 + v4[9];
  *v9 = 0;
  v9[4] = 1;
  v10 = a2 + v4[10];
  *v10 = 0;
  v10[4] = 1;
  v11 = a2 + v4[11];
  *v11 = 0;
  v11[4] = 1;
  return result;
}

void (*Proto_Gnss_Emergency_AssistanceNeededReport.result.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (v7 == 9)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return Proto_Gnss_Emergency_AssistanceNeededReport.result.modify;
}

uint64_t Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssGenericAidMask.setter(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v7 = v4;
  v9 = *(a2(0) + 20);
  v10 = *(v4 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v4 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = a3(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    v16 = swift_allocObject();
    v17 = v12;
    v12 = v16;
    a4(v17);
    *(v7 + v9) = v16;
  }

  result = swift_beginAccess();
  *(v12 + 20) = a1;
  *(v12 + 24) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_AssistanceNeededReport.responseType.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 20);
  if (*(v6 + 24))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_AssistanceNeededReport.responseType.modify;
}

void Proto_Gnss_Emergency_GanssAidRequestPerGanss.ganssGenericAidMask.modify(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t))
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
  *(v12 + 20) = v7;
  *(v12 + 24) = 0;

  free(v6);
}

uint64_t Proto_Gnss_Emergency_GanssAidRequestPerGanss.clearGanssGenericAidMask()(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t))
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
  *(v10 + 20) = 0;
  *(v10 + 24) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_AssistanceNeededReport.sessionInfo.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v7, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  v17 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_AssistanceNeededReport.sessionInfo.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + v9[5]) = 6;
    *(v14 + v9[6]) = 7;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  }

  return Proto_Gnss_Emergency_AssistanceNeededReport.sessionInfo.modify;
}

void Proto_Gnss_Emergency_AssistanceNeededReport.sessionInfo.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v15, v19, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v14, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v14, v19, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gnss_Emergency_AssistanceNeededReport.hasSessionInfo.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_AssistanceNeededReport.clearSessionInfo()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_AssistanceNeededReport.assistanceRequest.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v19 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
  }

  v11 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v11;
  v12 = a1 + v9[6];
  UnknownStorage.init()();
  v13 = a1 + v9[7];
  *v13 = 0;
  v13[4] = 1;
  v14 = a1 + v9[8];
  *v14 = 0;
  v14[4] = 1;
  v15 = a1 + v9[9];
  *v15 = 0;
  v15[4] = 1;
  v16 = a1 + v9[10];
  *v16 = 0;
  v16[4] = 1;
  v17 = a1 + v9[11];
  *v17 = 0;
  v17[4] = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_AssistanceNeededReport.assistanceRequest.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v7, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
  v17 = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_AssistanceNeededReport.assistanceRequest.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    v19 = MEMORY[0x277D84F90];
    *v14 = MEMORY[0x277D84F90];
    v14[1] = v19;
    v20 = v14 + v9[6];
    UnknownStorage.init()();
    v21 = v14 + v9[7];
    *v21 = 0;
    v21[4] = 1;
    v22 = v14 + v9[8];
    *v22 = 0;
    v22[4] = 1;
    v23 = v14 + v9[9];
    *v23 = 0;
    v23[4] = 1;
    v24 = v14 + v9[10];
    *v24 = 0;
    v24[4] = 1;
    v25 = v14 + v9[11];
    *v25 = 0;
    v25[4] = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
  }

  return Proto_Gnss_Emergency_AssistanceNeededReport.assistanceRequest.modify;
}

void Proto_Gnss_Emergency_AssistanceNeededReport.assistanceRequest.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v15, v19, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v14, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v14, v19, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gnss_Emergency_AssistanceNeededReport.hasAssistanceRequest.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_AssistanceNeededReport.clearAssistanceRequest()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_AssistanceNeededReport.ganssAssistanceRequest.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v19 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
  }

  v11 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v11;
  v12 = a1 + v9[6];
  UnknownStorage.init()();
  v13 = a1 + v9[7];
  *v13 = 0;
  v13[4] = 1;
  v14 = a1 + v9[8];
  *v14 = 0;
  v14[4] = 1;
  v15 = a1 + v9[9];
  *v15 = 0;
  v15[4] = 1;
  v16 = a1 + v9[10];
  *v16 = 0;
  v16[4] = 1;
  v17 = a1 + v9[11];
  *v17 = 0;
  v17[4] = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_AssistanceNeededReport.ganssAssistanceRequest.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v7, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
  v17 = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_AssistanceNeededReport.ganssAssistanceRequest.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    v19 = MEMORY[0x277D84F90];
    *v14 = MEMORY[0x277D84F90];
    v14[1] = v19;
    v20 = v14 + v9[6];
    UnknownStorage.init()();
    v21 = v14 + v9[7];
    *v21 = 0;
    v21[4] = 1;
    v22 = v14 + v9[8];
    *v22 = 0;
    v22[4] = 1;
    v23 = v14 + v9[9];
    *v23 = 0;
    v23[4] = 1;
    v24 = v14 + v9[10];
    *v24 = 0;
    v24[4] = 1;
    v25 = v14 + v9[11];
    *v25 = 0;
    v25[4] = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
  }

  return Proto_Gnss_Emergency_AssistanceNeededReport.ganssAssistanceRequest.modify;
}

void Proto_Gnss_Emergency_AssistanceNeededReport.ganssAssistanceRequest.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v15, v19, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v14, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v14, v19, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gnss_Emergency_AssistanceNeededReport.hasGanssAssistanceRequest.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_AssistanceNeededReport.clearGanssAssistanceRequest()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_EutranCellTime.noOfCells.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_EutranCellTime(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_EutranCellTime.noOfCells.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EutranCellTime(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_EutranCellTime.clearNoOfCells()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_EutranCellTime(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_Polygon.init()@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v3 = a1(0);
  v4 = a2 + *(v3 + 20);
  result = UnknownStorage.init()();
  v6 = a2 + *(v3 + 24);
  *v6 = 0;
  v6[4] = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_ClsGeranCellTime.bsic.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsGeranCellTime.bsic.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsGeranCellTime.clearBsic()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ClsGeranCellTime.timeSlot.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsGeranCellTime.timeSlot.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsGeranCellTime.clearTimeSlot()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ClsGeranCellTime.bitNumber.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsGeranCellTime.bitNumber.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsGeranCellTime.clearBitNumber()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ClsGeranCellTime.bcchCarrier.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsGeranCellTime.bcchCarrier.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 32);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsGeranCellTime.clearBcchCarrier()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ClsGeranCellTime.refFrame.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsGeranCellTime.refFrame.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 36);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsGeranCellTime.clearRefFrame()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ClsGeranCellTime.timingAdvance.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsGeranCellTime.timingAdvance.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 40);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsGeranCellTime.clearTimingAdvance()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ClsGeranCellTime.obitNumber.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsGeranCellTime.obitNumber.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 44);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsGeranCellTime.clearObitNumber()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 44);
  *v1 = 0;
  *(v1 + 4) = 1;
}

int *Proto_Gnss_Emergency_ClsGeranCellTime.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0);
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
  v7 = a1 + result[9];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1 + result[10];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a1 + result[11];
  *v9 = 0;
  *(v9 + 4) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_GpsTowCdmaCellTime.intPart.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsTowCdmaCellTime.intPart.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsTowCdmaCellTime.clearIntPart()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsTowCdmaCellTime.fracPart.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsTowCdmaCellTime.fracPart.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsTowCdmaCellTime.clearFracPart()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_CtsEutranCellTime.physicalCellID.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_CtsEutranCellTime.physicalCellID.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_CtsEutranCellTime.clearPhysicalCellID()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_CtsEutranCellTime.earfcn.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_CtsEutranCellTime.earfcn.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_CtsEutranCellTime.clearEarfcn()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_CtsEutranCellTime.sfnk.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_CtsEutranCellTime.sfnk.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_CtsEutranCellTime.clearSfnk()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_CtsCdmaCellTime.cdmaTow.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 20), v6, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + *(v8 + 24);
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_CtsCdmaCellTime.cdmaTow.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0) + 20);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_CtsCdmaCellTime.cdmaTow.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + *(v9 + 20);
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + *(v9 + 24);
    *v18 = 0;
    *(v18 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);
  }

  return Proto_Gnss_Emergency_CtsCdmaCellTime.cdmaTow.modify;
}

uint64_t Proto_Gnss_Emergency_CtsCdmaCellTime.weekNum.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_CtsCdmaCellTime.weekNum.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_CtsCdmaCellTime.clearWeekNum()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_CtsCdmaCellTime.absoluteRmsAcc.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_CtsCdmaCellTime.absoluteRmsAcc.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_CtsCdmaCellTime.clearAbsoluteRmsAcc()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_CtsCdmaCellTime.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
  v3 = v2[5];
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v6 = a1 + v2[6];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1 + v2[7];
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_CellTimeData.eutranTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 20), v6, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime);
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
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_CellTimeData.eutranTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0) + 20);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime);
  v4 = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_CellTimeData.eutranTime.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMR);
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
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime);
  }

  return Proto_Gnss_Emergency_CellTimeData.eutranTime.modify;
}

uint64_t Proto_Gnss_Emergency_CellTimeData.cdmaTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 24), v6, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime);
  }

  UnknownStorage.init()();
  v10 = v8[5];
  v11 = type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = a1 + v8[6];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v8[7];
  *v13 = 0;
  *(v13 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_CellTimeData.cdmaTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime);
  v4 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_CellTimeData.cdmaTime.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v9[5];
    v18 = type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    v19 = v14 + v9[6];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v14 + v9[7];
    *v20 = 0;
    *(v20 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime);
  }

  return Proto_Gnss_Emergency_CellTimeData.cdmaTime.modify;
}

uint64_t Proto_Gnss_Emergency_UtranGpsTimeMeasured.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  UnknownStorage.init()();
  v8 = a1(0);
  v9 = *(v8 + 20);
  v10 = a2(0);
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  v11 = *(v8 + 24);
  v12 = a3(0);
  v13 = *(*(v12 - 8) + 56);

  return v13(a4 + v11, 1, 1, v12);
}

uint64_t Proto_Gnss_Emergency_CellTimeAssistance.cellTimeAssistanceType.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0) + 20));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_CellTimeAssistance.cellTimeAssistanceType.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_CellTimeAssistance.cellTimeAssistanceType.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_CellTimeAssistance.cellTimeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 24), v6, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  v11 = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = *(v8 + 24);
  v13 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_CellTimeAssistance.cellTimeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  v4 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Proto_Gnss_Emergency_CellTimeAssistance.cellTimeData.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = *(v9 + 20);
    v18 = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    v19 = *(v9 + 24);
    v20 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  }

  return Proto_Gnss_Emergency_CellTimeAssistance.cellTimeData.modify;
}

uint64_t Proto_Gnss_Emergency_TowAssist.tlmMsg.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_TowAssist.tlmMsg.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_TowAssist(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_TowAssist.clearTlmMsg()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_TowAssist(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_TowAssist.satID.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_TowAssist.satID.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_TowAssist(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_TowAssist.clearSatID()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_TowAssist(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_TowAssist.antiSpoof.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_TowAssist.antiSpoof.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_TowAssist(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_TowAssist.clearAntiSpoof()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_TowAssist(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_TowAssist.alert.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_TowAssist.alert.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_TowAssist(0) + 32);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_TowAssist.clearAlert()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_TowAssist(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_TowAssist.tlmReserved.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_TowAssist.tlmReserved.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_TowAssist(0) + 36);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_TowAssist.clearTlmReserved()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_TowAssist(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

int *Proto_Gnss_Emergency_TowAssist.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
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
  v7 = a1 + result[9];
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_GpsReferenceTime.gpsTow.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsReferenceTime.gpsTow.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsReferenceTime.clearGpsTow()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsReferenceTime.gpsWeek.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsReferenceTime.gpsWeek.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsReferenceTime.clearGpsWeek()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsReferenceTime.gpsTimeUncertainty.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsReferenceTime.gpsTimeUncertainty.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 32);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsReferenceTime.clearGpsTimeUncertainty()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsReferenceTime.nrOfSats.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsReferenceTime.nrOfSats.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 36);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsReferenceTime.clearNrOfSats()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsReferenceTime.gpsWeekCycleNumber.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsReferenceTime.gpsWeekCycleNumber.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 40);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsReferenceTime.clearGpsWeekCycleNumber()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsReferenceTime.sessionProtocol.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 44));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_GpsReferenceTime.sessionProtocol.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsReferenceTime.sessionProtocol.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 44);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_GpsReferenceTime.posProtocol.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 48));
  if (v1 == 7)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_GpsReferenceTime.posProtocol.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsReferenceTime.posProtocol.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 48);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 7)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_GpsReferenceTime.sessionID.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsReferenceTime.sessionID.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 52);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsReferenceTime.clearSessionID()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 52);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsReferenceTime.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v3 = a1 + v2[5];
  result = UnknownStorage.init()();
  v5 = a1 + v2[6];
  *v5 = 0;
  v5[4] = 1;
  v6 = a1 + v2[7];
  *v6 = 0;
  v6[4] = 1;
  v7 = a1 + v2[8];
  *v7 = 0;
  v7[4] = 1;
  v8 = a1 + v2[9];
  *v8 = 0;
  v8[4] = 1;
  v9 = a1 + v2[10];
  *v9 = 0;
  v9[4] = 1;
  *(a1 + v2[11]) = 6;
  *(a1 + v2[12]) = 7;
  v10 = a1 + v2[13];
  *v10 = 0;
  v10[4] = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_ReferenceLocation.shapeType.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ReferenceLocation.shapeType.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_ReferenceLocation.clearShapeType()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ReferenceLocation.hemisphere.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ReferenceLocation.hemisphere.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_ReferenceLocation.clearHemisphere()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ReferenceLocation.altitude.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ReferenceLocation.altitude.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_ReferenceLocation.clearAltitude()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ReferenceLocation.latitude.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ReferenceLocation.latitude.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 32);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_ReferenceLocation.clearLatitude()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ReferenceLocation.longitude.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ReferenceLocation.longitude.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 36);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_ReferenceLocation.clearLongitude()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ReferenceLocation.directionOfAlt.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ReferenceLocation.directionOfAlt.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 40);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_ReferenceLocation.clearDirectionOfAlt()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ReferenceLocation.semiMajorUncert.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ReferenceLocation.semiMajorUncert.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 44);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_ReferenceLocation.clearSemiMajorUncert()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 44);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ReferenceLocation.semiMinorUncert.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ReferenceLocation.semiMinorUncert.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 48);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_ReferenceLocation.clearSemiMinorUncert()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 48);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ReferenceLocation.majorAxis.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ReferenceLocation.majorAxis.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 52);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_ReferenceLocation.clearMajorAxis()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 52);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ReferenceLocation.altUncert.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v4 = v1 + *(result + 56);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ReferenceLocation.altUncert.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 56);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_ReferenceLocation.clearAltUncert()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 56);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ClsEutranCell.bsAlign.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 60));
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t Proto_Gnss_Emergency_ReferenceLocation.confidence.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v4 = v1 + *(result + 60);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ReferenceLocation.confidence.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 60);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_ReferenceLocation.clearConfidence()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 60);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ReferenceLocation.sessionProtocol.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 64));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_ReferenceLocation.sessionProtocol.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ReferenceLocation.sessionProtocol.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 64);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_ReferenceLocation.posProtocol.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 68));
  if (v1 == 7)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_ReferenceLocation.posProtocol.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ReferenceLocation.posProtocol.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 68);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 7)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_ReferenceLocation.sessionID.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 72));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Proto_Gnss_Emergency_ReferenceLocation.sessionID.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v4 = v1 + *(result + 72);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ReferenceLocation.sessionID.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 72);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_ReferenceLocation.clearSessionID()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 72);
  *v1 = 0;
  *(v1 + 4) = 1;
}

int *Proto_Gnss_Emergency_ReferenceLocation.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
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
  v12 = a1 + result[14];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + result[15];
  *v13 = 0;
  *(v13 + 4) = 1;
  *(a1 + result[16]) = 6;
  *(a1 + result[17]) = 7;
  v14 = a1 + result[18];
  *v14 = 0;
  *(v14 + 4) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.interval.setter(int a1, uint64_t (*a2)(void), void (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v8 = v5;
  v10 = *(a2(0) + 20);
  v11 = *(v5 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3();
    v14 = swift_allocObject();
    a5(v13);

    *(v8 + v10) = v14;
    v13 = v14;
  }

  result = swift_beginAccess();
  *(v13 + 16) = a1;
  *(v13 + 20) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemAf0.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (*(v6 + 20))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsEphemeris.ephemAf0.modify;
}

void Proto_Gnss_Emergency_PositionRequest.interval.modify(uint64_t *a1, uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 84);
  v10 = *(*a1 + 72);
  v11 = *(v10 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v10 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = *(v7 + 84);
    v15 = *(v7 + 72);
    a3();
    v16 = swift_allocObject();
    a5(v13);

    *(v15 + v14) = v16;
    v13 = v16;
  }

  swift_beginAccess();
  *(v13 + 16) = v8;
  *(v13 + 20) = 0;

  free(v7);
}

uint64_t Proto_Gnss_Emergency_PositionRequest.clearInterval()(uint64_t (*a1)(void), void (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
{
  v7 = v4;
  v8 = *(a1(0) + 20);
  v9 = *(v4 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v12 = swift_allocObject();
    a4(v11);

    *(v7 + v8) = v12;
    v11 = v12;
  }

  result = swift_beginAccess();
  *(v11 + 16) = 0;
  *(v11 + 20) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.responseTime.setter(int a1, uint64_t (*a2)(void), void (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v8 = v5;
  v10 = *(a2(0) + 20);
  v11 = *(v5 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3();
    v14 = swift_allocObject();
    a5(v13);

    *(v8 + v10) = v14;
    v13 = v14;
  }

  result = swift_beginAccess();
  *(v13 + 24) = a1;
  *(v13 + 28) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemM0.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  if (*(v6 + 28))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsEphemeris.ephemM0.modify;
}

void Proto_Gnss_Emergency_PositionRequest.responseTime.modify(uint64_t *a1, uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 84);
  v10 = *(*a1 + 72);
  v11 = *(v10 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v10 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = *(v7 + 84);
    v15 = *(v7 + 72);
    a3();
    v16 = swift_allocObject();
    a5(v13);

    *(v15 + v14) = v16;
    v13 = v16;
  }

  swift_beginAccess();
  *(v13 + 24) = v8;
  *(v13 + 28) = 0;

  free(v7);
}

uint64_t Proto_Gnss_Emergency_PositionRequest.clearResponseTime()(uint64_t (*a1)(void), void (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
{
  v7 = v4;
  v8 = *(a1(0) + 20);
  v9 = *(v4 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v12 = swift_allocObject();
    a4(v11);

    *(v7 + v8) = v12;
    v11 = v12;
  }

  result = swift_beginAccess();
  *(v11 + 24) = 0;
  *(v11 + 28) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.horizontalAccuracy.setter(int a1, uint64_t (*a2)(void), void (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v8 = v5;
  v10 = *(a2(0) + 20);
  v11 = *(v5 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3();
    v14 = swift_allocObject();
    a5(v13);

    *(v8 + v10) = v14;
    v13 = v14;
  }

  result = swift_beginAccess();
  *(v13 + 32) = a1;
  *(v13 + 36) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemE.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 32);
  if (*(v6 + 36))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsEphemeris.ephemE.modify;
}

void Proto_Gnss_Emergency_PositionRequest.horizontalAccuracy.modify(uint64_t *a1, uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 84);
  v10 = *(*a1 + 72);
  v11 = *(v10 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v10 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = *(v7 + 84);
    v15 = *(v7 + 72);
    a3();
    v16 = swift_allocObject();
    a5(v13);

    *(v15 + v14) = v16;
    v13 = v16;
  }

  swift_beginAccess();
  *(v13 + 32) = v8;
  *(v13 + 36) = 0;

  free(v7);
}

uint64_t Proto_Gnss_Emergency_PositionRequest.clearHorizontalAccuracy()(uint64_t (*a1)(void), void (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
{
  v7 = v4;
  v8 = *(a1(0) + 20);
  v9 = *(v4 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v12 = swift_allocObject();
    a4(v11);

    *(v7 + v8) = v12;
    v11 = v12;
  }

  result = swift_beginAccess();
  *(v11 + 32) = 0;
  *(v11 + 36) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.velocityRequested.setter(int a1, uint64_t (*a2)(void), void (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v8 = v5;
  v10 = *(a2(0) + 20);
  v11 = *(v5 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3();
    v14 = swift_allocObject();
    a5(v13);

    *(v8 + v10) = v14;
    v13 = v14;
  }

  result = swift_beginAccess();
  *(v13 + 40) = a1;
  *(v13 + 44) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemApowerHalf.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 40);
  if (*(v6 + 44))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsEphemeris.ephemApowerHalf.modify;
}

void Proto_Gnss_Emergency_PositionRequest.velocityRequested.modify(uint64_t *a1, uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 84);
  v10 = *(*a1 + 72);
  v11 = *(v10 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v10 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = *(v7 + 84);
    v15 = *(v7 + 72);
    a3();
    v16 = swift_allocObject();
    a5(v13);

    *(v15 + v14) = v16;
    v13 = v16;
  }

  swift_beginAccess();
  *(v13 + 40) = v8;
  *(v13 + 44) = 0;

  free(v7);
}

uint64_t Proto_Gnss_Emergency_PositionRequest.clearVelocityRequested()(uint64_t (*a1)(void), void (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
{
  v7 = v4;
  v8 = *(a1(0) + 20);
  v9 = *(v4 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v12 = swift_allocObject();
    a4(v11);

    *(v7 + v8) = v12;
    v11 = v12;
  }

  result = swift_beginAccess();
  *(v11 + 40) = 0;
  *(v11 + 44) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.horizontalConfidence.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  if (*(v2 + 52))
  {
    return 0;
  }

  else
  {
    return *(v2 + 48);
  }
}

uint64_t Proto_Gnss_Emergency_PositionRequest.horizontalConfidence.setter(int a1, uint64_t (*a2)(void), void (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v8 = v5;
  v10 = *(a2(0) + 20);
  v11 = *(v5 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3();
    v14 = swift_allocObject();
    a5(v13);

    *(v8 + v10) = v14;
    v13 = v14;
  }

  result = swift_beginAccess();
  *(v13 + 48) = a1;
  *(v13 + 52) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemOmegaA0.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 48);
  if (*(v6 + 52))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsEphemeris.ephemOmegaA0.modify;
}

void Proto_Gnss_Emergency_PositionRequest.horizontalConfidence.modify(uint64_t *a1, uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 84);
  v10 = *(*a1 + 72);
  v11 = *(v10 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v10 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = *(v7 + 84);
    v15 = *(v7 + 72);
    a3();
    v16 = swift_allocObject();
    a5(v13);

    *(v15 + v14) = v16;
    v13 = v16;
  }

  swift_beginAccess();
  *(v13 + 48) = v8;
  *(v13 + 52) = 0;

  free(v7);
}

BOOL Proto_Gnss_Emergency_PositionRequest.hasHorizontalConfidence.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 52) & 1) == 0;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.clearHorizontalConfidence()(uint64_t (*a1)(void), void (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
{
  v7 = v4;
  v8 = *(a1(0) + 20);
  v9 = *(v4 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v12 = swift_allocObject();
    a4(v11);

    *(v7 + v8) = v12;
    v11 = v12;
  }

  result = swift_beginAccess();
  *(v11 + 48) = 0;
  *(v11 + 52) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.verticalAccuracy.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  if (*(v2 + 60))
  {
    return 0;
  }

  else
  {
    return *(v2 + 56);
  }
}

uint64_t Proto_Gnss_Emergency_PositionRequest.verticalAccuracy.setter(int a1, uint64_t (*a2)(void), void (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v8 = v5;
  v10 = *(a2(0) + 20);
  v11 = *(v5 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3();
    v14 = swift_allocObject();
    a5(v13);

    *(v8 + v10) = v14;
    v13 = v14;
  }

  result = swift_beginAccess();
  *(v13 + 56) = a1;
  *(v13 + 60) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemI0.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 56);
  if (*(v6 + 60))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsEphemeris.ephemI0.modify;
}

void Proto_Gnss_Emergency_PositionRequest.verticalAccuracy.modify(uint64_t *a1, uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 84);
  v10 = *(*a1 + 72);
  v11 = *(v10 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v10 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = *(v7 + 84);
    v15 = *(v7 + 72);
    a3();
    v16 = swift_allocObject();
    a5(v13);

    *(v15 + v14) = v16;
    v13 = v16;
  }

  swift_beginAccess();
  *(v13 + 56) = v8;
  *(v13 + 60) = 0;

  free(v7);
}

BOOL Proto_Gnss_Emergency_PositionRequest.hasVerticalAccuracy.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 60) & 1) == 0;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.clearVerticalAccuracy()(uint64_t (*a1)(void), void (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
{
  v7 = v4;
  v8 = *(a1(0) + 20);
  v9 = *(v4 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v12 = swift_allocObject();
    a4(v11);

    *(v7 + v8) = v12;
    v11 = v12;
  }

  result = swift_beginAccess();
  *(v11 + 56) = 0;
  *(v11 + 60) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.verticalConfidence.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  if (*(v2 + 68))
  {
    return 0;
  }

  else
  {
    return *(v2 + 64);
  }
}

uint64_t Proto_Gnss_Emergency_PositionRequest.verticalConfidence.setter(int a1, uint64_t (*a2)(void), void (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v8 = v5;
  v10 = *(a2(0) + 20);
  v11 = *(v5 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3();
    v14 = swift_allocObject();
    a5(v13);

    *(v8 + v10) = v14;
    v13 = v14;
  }

  result = swift_beginAccess();
  *(v13 + 64) = a1;
  *(v13 + 68) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemW.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 64);
  if (*(v6 + 68))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsEphemeris.ephemW.modify;
}

void Proto_Gnss_Emergency_PositionRequest.verticalConfidence.modify(uint64_t *a1, uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 84);
  v10 = *(*a1 + 72);
  v11 = *(v10 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v10 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = *(v7 + 84);
    v15 = *(v7 + 72);
    a3();
    v16 = swift_allocObject();
    a5(v13);

    *(v15 + v14) = v16;
    v13 = v16;
  }

  swift_beginAccess();
  *(v13 + 64) = v8;
  *(v13 + 68) = 0;

  free(v7);
}

BOOL Proto_Gnss_Emergency_PositionRequest.hasVerticalConfidence.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 68) & 1) == 0;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.clearVerticalConfidence()(uint64_t (*a1)(void), void (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
{
  v7 = v4;
  v8 = *(a1(0) + 20);
  v9 = *(v4 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v12 = swift_allocObject();
    a4(v11);

    *(v7 + v8) = v12;
    v11 = v12;
  }

  result = swift_beginAccess();
  *(v11 + 64) = 0;
  *(v11 + 68) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.verticalRequested.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  if (*(v2 + 76))
  {
    return 0;
  }

  else
  {
    return *(v2 + 72);
  }
}

uint64_t Proto_Gnss_Emergency_PositionRequest.verticalRequested.setter(int a1, uint64_t (*a2)(void), void (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v8 = v5;
  v10 = *(a2(0) + 20);
  v11 = *(v5 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3();
    v14 = swift_allocObject();
    a5(v13);

    *(v8 + v10) = v14;
    v13 = v14;
  }

  result = swift_beginAccess();
  *(v13 + 72) = a1;
  *(v13 + 76) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemOmegaDot.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 72);
  if (*(v6 + 76))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsEphemeris.ephemOmegaDot.modify;
}

void Proto_Gnss_Emergency_PositionRequest.verticalRequested.modify(uint64_t *a1, uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 84);
  v10 = *(*a1 + 72);
  v11 = *(v10 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v10 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = *(v7 + 84);
    v15 = *(v7 + 72);
    a3();
    v16 = swift_allocObject();
    a5(v13);

    *(v15 + v14) = v16;
    v13 = v16;
  }

  swift_beginAccess();
  *(v13 + 72) = v8;
  *(v13 + 76) = 0;

  free(v7);
}

BOOL Proto_Gnss_Emergency_PositionRequest.hasVerticalRequested.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 76) & 1) == 0;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.clearVerticalRequested()(uint64_t (*a1)(void), void (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
{
  v7 = v4;
  v8 = *(a1(0) + 20);
  v9 = *(v4 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v12 = swift_allocObject();
    a4(v11);

    *(v7 + v8) = v12;
    v11 = v12;
  }

  result = swift_beginAccess();
  *(v11 + 72) = 0;
  *(v11 + 76) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.assistanceAvailability.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  if (*(v2 + 84))
  {
    return 0;
  }

  else
  {
    return *(v2 + 80);
  }
}

uint64_t Proto_Gnss_Emergency_PositionRequest.assistanceAvailability.setter(int a1, uint64_t (*a2)(void), void (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v8 = v5;
  v10 = *(a2(0) + 20);
  v11 = *(v5 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3();
    v14 = swift_allocObject();
    a5(v13);

    *(v8 + v10) = v14;
    v13 = v14;
  }

  result = swift_beginAccess();
  *(v13 + 80) = a1;
  *(v13 + 84) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemIodc.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 80);
  if (*(v6 + 84))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsEphemeris.ephemIodc.modify;
}

void Proto_Gnss_Emergency_PositionRequest.assistanceAvailability.modify(uint64_t *a1, uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 84);
  v10 = *(*a1 + 72);
  v11 = *(v10 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v10 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = *(v7 + 84);
    v15 = *(v7 + 72);
    a3();
    v16 = swift_allocObject();
    a5(v13);

    *(v15 + v14) = v16;
    v13 = v16;
  }

  swift_beginAccess();
  *(v13 + 80) = v8;
  *(v13 + 84) = 0;

  free(v7);
}

BOOL Proto_Gnss_Emergency_PositionRequest.hasAssistanceAvailability.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 84) & 1) == 0;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.clearAssistanceAvailability()(uint64_t (*a1)(void), void (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
{
  v7 = v4;
  v8 = *(a1(0) + 20);
  v9 = *(v4 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v12 = swift_allocObject();
    a4(v11);

    *(v7 + v8) = v12;
    v11 = v12;
  }

  result = swift_beginAccess();
  *(v11 + 80) = 0;
  *(v11 + 84) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.requestedGnss.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  if (*(v2 + 92))
  {
    return 0;
  }

  else
  {
    return *(v2 + 88);
  }
}

uint64_t Proto_Gnss_Emergency_PositionRequest.requestedGnss.setter(int a1, uint64_t (*a2)(void), void (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v8 = v5;
  v10 = *(a2(0) + 20);
  v11 = *(v5 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3();
    v14 = swift_allocObject();
    a5(v13);

    *(v8 + v10) = v14;
    v13 = v14;
  }

  result = swift_beginAccess();
  *(v13 + 88) = a1;
  *(v13 + 92) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemToc.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 88);
  if (*(v6 + 92))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsEphemeris.ephemToc.modify;
}

void Proto_Gnss_Emergency_PositionRequest.requestedGnss.modify(uint64_t *a1, uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 84);
  v10 = *(*a1 + 72);
  v11 = *(v10 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v10 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = *(v7 + 84);
    v15 = *(v7 + 72);
    a3();
    v16 = swift_allocObject();
    a5(v13);

    *(v15 + v14) = v16;
    v13 = v16;
  }

  swift_beginAccess();
  *(v13 + 88) = v8;
  *(v13 + 92) = 0;

  free(v7);
}

BOOL Proto_Gnss_Emergency_PositionRequest.hasRequestedGnss.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 92) & 1) == 0;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.clearRequestedGnss()(uint64_t (*a1)(void), void (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
{
  v7 = v4;
  v8 = *(a1(0) + 20);
  v9 = *(v4 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v12 = swift_allocObject();
    a4(v11);

    *(v7 + v8) = v12;
    v11 = v12;
  }

  result = swift_beginAccess();
  *(v11 + 88) = 0;
  *(v11 + 92) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.locCordinateTypeAllowed.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  if (*(v2 + 100))
  {
    return 0;
  }

  else
  {
    return *(v2 + 96);
  }
}

uint64_t Proto_Gnss_Emergency_PositionRequest.locCordinateTypeAllowed.setter(int a1, uint64_t (*a2)(void), void (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v8 = v5;
  v10 = *(a2(0) + 20);
  v11 = *(v5 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3();
    v14 = swift_allocObject();
    a5(v13);

    *(v8 + v10) = v14;
    v13 = v14;
  }

  result = swift_beginAccess();
  *(v13 + 96) = a1;
  *(v13 + 100) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemAf1.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 96);
  if (*(v6 + 100))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsEphemeris.ephemAf1.modify;
}

void Proto_Gnss_Emergency_PositionRequest.locCordinateTypeAllowed.modify(uint64_t *a1, uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 84);
  v10 = *(*a1 + 72);
  v11 = *(v10 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v10 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = *(v7 + 84);
    v15 = *(v7 + 72);
    a3();
    v16 = swift_allocObject();
    a5(v13);

    *(v15 + v14) = v16;
    v13 = v16;
  }

  swift_beginAccess();
  *(v13 + 96) = v8;
  *(v13 + 100) = 0;

  free(v7);
}

BOOL Proto_Gnss_Emergency_PositionRequest.hasLocCordinateTypeAllowed.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 100) & 1) == 0;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.clearLocCordinateTypeAllowed()(uint64_t (*a1)(void), void (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
{
  v7 = v4;
  v8 = *(a1(0) + 20);
  v9 = *(v4 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v12 = swift_allocObject();
    a4(v11);

    *(v7 + v8) = v12;
    v11 = v12;
  }

  result = swift_beginAccess();
  *(v11 + 96) = 0;
  *(v11 + 100) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.velocityTypes.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  if (*(v2 + 108))
  {
    return 0;
  }

  else
  {
    return *(v2 + 104);
  }
}

uint64_t Proto_Gnss_Emergency_PositionRequest.velocityTypes.setter(int a1, uint64_t (*a2)(void), void (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v8 = v5;
  v10 = *(a2(0) + 20);
  v11 = *(v5 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3();
    v14 = swift_allocObject();
    a5(v13);

    *(v8 + v10) = v14;
    v13 = v14;
  }

  result = swift_beginAccess();
  *(v13 + 104) = a1;
  *(v13 + 108) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemCrs.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 104);
  if (*(v6 + 108))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsEphemeris.ephemCrs.modify;
}

void Proto_Gnss_Emergency_PositionRequest.velocityTypes.modify(uint64_t *a1, uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 84);
  v10 = *(*a1 + 72);
  v11 = *(v10 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v10 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = *(v7 + 84);
    v15 = *(v7 + 72);
    a3();
    v16 = swift_allocObject();
    a5(v13);

    *(v15 + v14) = v16;
    v13 = v16;
  }

  swift_beginAccess();
  *(v13 + 104) = v8;
  *(v13 + 108) = 0;

  free(v7);
}

BOOL Proto_Gnss_Emergency_PositionRequest.hasVelocityTypes.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 108) & 1) == 0;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.clearVelocityTypes()(uint64_t (*a1)(void), void (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
{
  v7 = v4;
  v8 = *(a1(0) + 20);
  v9 = *(v4 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v12 = swift_allocObject();
    a4(v11);

    *(v7 + v8) = v12;
    v11 = v12;
  }

  result = swift_beginAccess();
  *(v11 + 104) = 0;
  *(v11 + 108) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.reportAmount.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  if (*(v2 + 116))
  {
    return 0;
  }

  else
  {
    return *(v2 + 112);
  }
}

uint64_t Proto_Gnss_Emergency_PositionRequest.reportAmount.setter(int a1, uint64_t (*a2)(void), void (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v8 = v5;
  v10 = *(a2(0) + 20);
  v11 = *(v5 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3();
    v14 = swift_allocObject();
    a5(v13);

    *(v8 + v10) = v14;
    v13 = v14;
  }

  result = swift_beginAccess();
  *(v13 + 112) = a1;
  *(v13 + 116) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemDeltaN.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 112);
  if (*(v6 + 116))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsEphemeris.ephemDeltaN.modify;
}

void Proto_Gnss_Emergency_PositionRequest.reportAmount.modify(uint64_t *a1, uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 84);
  v10 = *(*a1 + 72);
  v11 = *(v10 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v10 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = *(v7 + 84);
    v15 = *(v7 + 72);
    a3();
    v16 = swift_allocObject();
    a5(v13);

    *(v15 + v14) = v16;
    v13 = v16;
  }

  swift_beginAccess();
  *(v13 + 112) = v8;
  *(v13 + 116) = 0;

  free(v7);
}

BOOL Proto_Gnss_Emergency_PositionRequest.hasReportAmount.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 116) & 1) == 0;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.clearReportAmount()(uint64_t (*a1)(void), void (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
{
  v7 = v4;
  v8 = *(a1(0) + 20);
  v9 = *(v4 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v12 = swift_allocObject();
    a4(v11);

    *(v7 + v8) = v12;
    v11 = v12;
  }

  result = swift_beginAccess();
  *(v11 + 112) = 0;
  *(v11 + 116) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.sessionID.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  if (*(v2 + 124))
  {
    return 0;
  }

  else
  {
    return *(v2 + 120);
  }
}

uint64_t Proto_Gnss_Emergency_PositionRequest.sessionID.setter(int a1, uint64_t (*a2)(void), void (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v8 = v5;
  v10 = *(a2(0) + 20);
  v11 = *(v5 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3();
    v14 = swift_allocObject();
    a5(v13);

    *(v8 + v10) = v14;
    v13 = v14;
  }

  result = swift_beginAccess();
  *(v13 + 120) = a1;
  *(v13 + 124) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemCuc.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 120);
  if (*(v6 + 124))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsEphemeris.ephemCuc.modify;
}

void Proto_Gnss_Emergency_PositionRequest.sessionID.modify(uint64_t *a1, uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 84);
  v10 = *(*a1 + 72);
  v11 = *(v10 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v10 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = *(v7 + 84);
    v15 = *(v7 + 72);
    a3();
    v16 = swift_allocObject();
    a5(v13);

    *(v15 + v14) = v16;
    v13 = v16;
  }

  swift_beginAccess();
  *(v13 + 120) = v8;
  *(v13 + 124) = 0;

  free(v7);
}

BOOL Proto_Gnss_Emergency_PositionRequest.hasSessionID.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 124) & 1) == 0;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.clearSessionID()(uint64_t (*a1)(void), void (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
{
  v7 = v4;
  v8 = *(a1(0) + 20);
  v9 = *(v4 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v12 = swift_allocObject();
    a4(v11);

    *(v7 + v8) = v12;
    v11 = v12;
  }

  result = swift_beginAccess();
  *(v11 + 120) = 0;
  *(v11 + 124) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.horizontalAccuracyMeters.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  if (*(v2 + 132))
  {
    return 0;
  }

  else
  {
    return *(v2 + 128);
  }
}

uint64_t Proto_Gnss_Emergency_PositionRequest.horizontalAccuracyMeters.setter(int a1, uint64_t (*a2)(void), void (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v8 = v5;
  v10 = *(a2(0) + 20);
  v11 = *(v5 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3();
    v14 = swift_allocObject();
    a5(v13);

    *(v8 + v10) = v14;
    v13 = v14;
  }

  result = swift_beginAccess();
  *(v13 + 128) = a1;
  *(v13 + 132) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemCus.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 128);
  if (*(v6 + 132))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsEphemeris.ephemCus.modify;
}

void Proto_Gnss_Emergency_PositionRequest.horizontalAccuracyMeters.modify(uint64_t *a1, uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 84);
  v10 = *(*a1 + 72);
  v11 = *(v10 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v10 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = *(v7 + 84);
    v15 = *(v7 + 72);
    a3();
    v16 = swift_allocObject();
    a5(v13);

    *(v15 + v14) = v16;
    v13 = v16;
  }

  swift_beginAccess();
  *(v13 + 128) = v8;
  *(v13 + 132) = 0;

  free(v7);
}

BOOL Proto_Gnss_Emergency_PositionRequest.hasHorizontalAccuracyMeters.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 132) & 1) == 0;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.clearHorizontalAccuracyMeters()(uint64_t (*a1)(void), void (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
{
  v7 = v4;
  v8 = *(a1(0) + 20);
  v9 = *(v4 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v12 = swift_allocObject();
    a4(v11);

    *(v7 + v8) = v12;
    v11 = v12;
  }

  result = swift_beginAccess();
  *(v11 + 128) = 0;
  *(v11 + 132) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.toe.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  if (*(v1 + 140))
  {
    return 0;
  }

  else
  {
    return *(v1 + 136);
  }
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.toe.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 136) = a1;
  *(v7 + 140) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.toe.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 136);
  if (*(v6 + 140))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsEphemeris.toe.modify;
}

void Proto_Gnss_Emergency_GpsEphemeris.toe.modify(uint64_t *a1)
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
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 136) = v2;
  *(v7 + 140) = 0;

  free(v1);
}

BOOL Proto_Gnss_Emergency_GpsEphemeris.hasToe.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 140) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsEphemeris.clearToe()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v6 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 136) = 0;
  *(v5 + 140) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemCic.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  if (*(v1 + 148))
  {
    return 0;
  }

  else
  {
    return *(v1 + 144);
  }
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemCic.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 144) = a1;
  *(v7 + 148) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemCic.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 144);
  if (*(v6 + 148))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsEphemeris.ephemCic.modify;
}

void Proto_Gnss_Emergency_GpsEphemeris.ephemCic.modify(uint64_t *a1)
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
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 144) = v2;
  *(v7 + 148) = 0;

  free(v1);
}

BOOL Proto_Gnss_Emergency_GpsEphemeris.hasEphemCic.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 148) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsEphemeris.clearEphemCic()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v6 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 144) = 0;
  *(v5 + 148) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemCis.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  if (*(v1 + 156))
  {
    return 0;
  }

  else
  {
    return *(v1 + 152);
  }
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemCis.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 152) = a1;
  *(v7 + 156) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemCis.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 152);
  if (*(v6 + 156))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsEphemeris.ephemCis.modify;
}

void Proto_Gnss_Emergency_GpsEphemeris.ephemCis.modify(uint64_t *a1)
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
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 152) = v2;
  *(v7 + 156) = 0;

  free(v1);
}

BOOL Proto_Gnss_Emergency_GpsEphemeris.hasEphemCis.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 156) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsEphemeris.clearEphemCis()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v6 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 152) = 0;
  *(v5 + 156) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemCrc.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  if (*(v1 + 164))
  {
    return 0;
  }

  else
  {
    return *(v1 + 160);
  }
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemCrc.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 160) = a1;
  *(v7 + 164) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemCrc.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 160);
  if (*(v6 + 164))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsEphemeris.ephemCrc.modify;
}

void Proto_Gnss_Emergency_GpsEphemeris.ephemCrc.modify(uint64_t *a1)
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
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 160) = v2;
  *(v7 + 164) = 0;

  free(v1);
}

BOOL Proto_Gnss_Emergency_GpsEphemeris.hasEphemCrc.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 164) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsEphemeris.clearEphemCrc()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v6 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 160) = 0;
  *(v5 + 164) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemIdot.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  if (*(v1 + 172))
  {
    return 0;
  }

  else
  {
    return *(v1 + 168);
  }
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemIdot.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 168) = a1;
  *(v7 + 172) = 0;
  return result;
}