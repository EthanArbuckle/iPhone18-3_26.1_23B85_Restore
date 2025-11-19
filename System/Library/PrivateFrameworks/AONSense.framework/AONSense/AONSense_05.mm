uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_SignalCorrelationPeak@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  result = (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_SignalCorrelationPeak(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalCorrelationPeak and conformance CLP_LogEntry_PrivateData_SignalCorrelationPeak, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_SignalCorrelationPeak(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalCorrelationPeak and conformance CLP_LogEntry_PrivateData_SignalCorrelationPeak, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_SignalCorrelationPeak(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalCorrelationPeak and conformance CLP_LogEntry_PrivateData_SignalCorrelationPeak, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_FullSvTime.decodeMessage<A>(decoder:)()
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
          v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0) + 28);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_FullSvTimeSource and conformance CLP_LogEntry_PrivateData_FullSvTimeSource();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_5;
        case 2:
          v4 = v0;
          v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0) + 24);
          break;
        case 1:
          v4 = v0;
          v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0) + 20);
          break;
        default:
          goto LABEL_5;
      }

      v0 = v4;
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_FullSvTime.traverse<A>(visitor:)()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
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

  v6 = (v0 + *(v3 + 24));
  if ((v6[1] & 1) == 0)
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if (*(v0 + *(v3 + 28)) != 6)
  {
    v8 = *(v0 + *(v3 + 28));
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_FullSvTimeSource and conformance CLP_LogEntry_PrivateData_FullSvTimeSource();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_SvTime@<X0>(int *a1@<X0>, char a2@<W2>, uint64_t a3@<X8>)
{
  result = UnknownStorage.init()();
  v7 = a1[6];
  v8 = a3 + a1[5];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a3 + v7;
  *v9 = 0;
  *(v9 + 8) = 1;
  *(a3 + a1[7]) = a2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_FullSvTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FullSvTime and conformance CLP_LogEntry_PrivateData_FullSvTime, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_FullSvTime(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FullSvTime and conformance CLP_LogEntry_PrivateData_FullSvTime, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_FullSvTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FullSvTime and conformance CLP_LogEntry_PrivateData_FullSvTime, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_SvMeasurementUsage.decodeMessage<A>(decoder:)()
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
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0) + 28);
LABEL_3:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularFloatField(value:)();
        break;
      case 2:
        v1 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0) + 24);
        goto LABEL_3;
      case 1:
        v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0) + 20);
        goto LABEL_3;
    }
  }
}

uint64_t CLP_LogEntry_PrivateData_SvMeasurementUsage.traverse<A>(visitor:)()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
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
    result = dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  v6 = (v0 + *(v3 + 24));
  if ((v6[1] & 1) == 0)
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  v8 = (v0 + *(v3 + 28));
  if ((v8[1] & 1) == 0)
  {
    v9 = *v8;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_SvMeasurementUsage@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_SvMeasurementUsage(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvMeasurementUsage and conformance CLP_LogEntry_PrivateData_SvMeasurementUsage, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_SvMeasurementUsage(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvMeasurementUsage and conformance CLP_LogEntry_PrivateData_SvMeasurementUsage, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_SvMeasurementUsage(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvMeasurementUsage and conformance CLP_LogEntry_PrivateData_SvMeasurementUsage, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);

  return MEMORY[0x28217E440](a1, a2, v4);
}

double one-time initialization function for defaultInstance()
{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 20) = 1;
  *(v3 + 24) = 0;
  *(v3 + 28) = 1;
  v4 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__fullSvTime;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeUsageNanoseconds;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v3 + v6, 1, 1, v7);
  v8(v3 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffsetUsagePpb, 1, 1, v7);
  v8(v3 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__carrierPhaseUsageNanoseconds, 1, 1, v7);
  v9 = v3 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__noncoherentIntervalCount;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = v3 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__coherentIntegrationMs;
  *v10 = 0;
  *(v10 + 4) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeDetectionMethod) = 7;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyDetectionMethod) = 7;
  v11 = v3 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__channelID;
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = v3 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__codeLockDurationSeconds;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = v3 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyLockDurationSeconds;
  *v13 = 0;
  *(v13 + 4) = 1;
  result = 0.0;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata) = xmmword_23D1B1460;
  v15 = v3 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadataFormat;
  *v15 = 0;
  *(v15 + 4) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__topCorrelationPeaks) = MEMORY[0x277D84F90];
  static CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass.defaultInstance = v3;
  return result;
}

{
  type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 44) = 0;
  *(v0 + 48) = 1;
  *(v0 + 52) = 0;
  *(v0 + 56) = 1;
  *(v0 + 60) = 0;
  *(v0 + 64) = 1;
  *(v0 + 68) = 0;
  *(v0 + 72) = 1;
  *(v0 + 76) = 0;
  *(v0 + 80) = 1;
  *(v0 + 84) = 0;
  *(v0 + 88) = 1;
  *(v0 + 92) = 0;
  *(v0 + 96) = 1;
  *(v0 + 100) = 0;
  *(v0 + 104) = 1;
  *(v0 + 108) = 0;
  *(v0 + 112) = 1;
  *(v0 + 116) = 0;
  *(v0 + 120) = 1;
  *(v0 + 124) = 0;
  *(v0 + 128) = 1;
  *&result = 33686019;
  *(v0 + 129) = 33686019;
  *(v0 + 133) = 4;
  *(v0 + 136) = 0;
  *(v0 + 140) = 1;
  static CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  *(v0 + 96) = 0;
  *(v0 + 104) = 1;
  *(v0 + 108) = 0;
  *(v0 + 112) = 1;
  *(v0 + 113) = 1042;
  *(v0 + 115) = 7;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  *(v0 + 136) = 0;
  *(v0 + 144) = 1;
  *(v0 + 152) = 0;
  *(v0 + 160) = 1;
  *&result = 33689864;
  *(v0 + 161) = 33689864;
  *(v0 + 168) = 0;
  *(v0 + 176) = 1;
  *(v0 + 180) = 0;
  *(v0 + 184) = 1;
  static Proto_Gnss_Emergency_SummaryReport._StorageClass.defaultInstance = v0;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v64 = &v60 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v63 = &v60 - v8;
  *(v1 + 16) = 0;
  *(v1 + 20) = 1;
  *(v1 + 24) = 0;
  *(v1 + 28) = 1;
  v9 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__fullSvTime;
  v61 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__fullSvTime;
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeUsageNanoseconds;
  v62 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeUsageNanoseconds;
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v1 + v11, 1, 1, v12);
  v65 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffsetUsagePpb;
  v13(v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffsetUsagePpb, 1, 1, v12);
  v66 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__carrierPhaseUsageNanoseconds;
  v13(v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__carrierPhaseUsageNanoseconds, 1, 1, v12);
  v14 = v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__noncoherentIntervalCount;
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__coherentIntegrationMs;
  *v15 = 0;
  *(v15 + 4) = 1;
  v67 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeDetectionMethod;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeDetectionMethod) = 7;
  v16 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyDetectionMethod;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyDetectionMethod) = 7;
  v17 = v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__channelID;
  v68 = v16;
  v69 = v17;
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__codeLockDurationSeconds;
  v70 = v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__codeLockDurationSeconds;
  *v18 = 0;
  *(v18 + 4) = 1;
  v19 = v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyLockDurationSeconds;
  v71 = v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyLockDurationSeconds;
  *v19 = 0;
  *(v19 + 4) = 1;
  v72 = (v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata);
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata) = xmmword_23D1B1460;
  v20 = v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadataFormat;
  v73 = v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadataFormat;
  *v20 = 0;
  *(v20 + 4) = 1;
  v74 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__topCorrelationPeaks;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__topCorrelationPeaks) = MEMORY[0x277D84F90];
  swift_beginAccess();
  v21 = *(a1 + 16);
  v22 = *(a1 + 20);
  swift_beginAccess();
  *(v1 + 16) = v21;
  *(v1 + 20) = v22;
  swift_beginAccess();
  v23 = *(a1 + 24);
  LOBYTE(v21) = *(a1 + 28);
  swift_beginAccess();
  *(v1 + 24) = v23;
  *(v1 + 28) = v21;
  v24 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__fullSvTime;
  swift_beginAccess();
  v25 = v63;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v24, v63, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
  v26 = v61;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v25, v1 + v26, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
  swift_endAccess();
  v27 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeUsageNanoseconds;
  swift_beginAccess();
  v28 = v64;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v27, v64, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v29 = v62;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v28, v1 + v29, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  swift_endAccess();
  v30 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffsetUsagePpb;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v30, v28, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v31 = v65;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v28, v1 + v31, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  swift_endAccess();
  v32 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__carrierPhaseUsageNanoseconds;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v32, v28, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v33 = v66;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v28, v1 + v33, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  swift_endAccess();
  v34 = (a1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__noncoherentIntervalCount);
  swift_beginAccess();
  v35 = *v34;
  LOBYTE(v34) = *(v34 + 4);
  swift_beginAccess();
  *v14 = v35;
  *(v14 + 4) = v34;
  v36 = a1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__coherentIntegrationMs;
  swift_beginAccess();
  LODWORD(v34) = *v36;
  LOBYTE(v36) = *(v36 + 4);
  swift_beginAccess();
  *v15 = v34;
  *(v15 + 4) = v36;
  v37 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeDetectionMethod;
  swift_beginAccess();
  LOBYTE(v37) = *(a1 + v37);
  v38 = v67;
  swift_beginAccess();
  *(v1 + v38) = v37;
  v39 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyDetectionMethod;
  swift_beginAccess();
  LOBYTE(v39) = *(a1 + v39);
  v40 = v68;
  swift_beginAccess();
  *(v1 + v40) = v39;
  v41 = a1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__channelID;
  swift_beginAccess();
  LODWORD(v40) = *v41;
  LOBYTE(v41) = *(v41 + 4);
  v42 = v69;
  swift_beginAccess();
  *v42 = v40;
  *(v42 + 4) = v41;
  v43 = a1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__codeLockDurationSeconds;
  swift_beginAccess();
  LODWORD(v40) = *v43;
  LOBYTE(v43) = *(v43 + 4);
  v44 = v70;
  swift_beginAccess();
  *v44 = v40;
  *(v44 + 4) = v43;
  v45 = a1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyLockDurationSeconds;
  swift_beginAccess();
  LODWORD(v40) = *v45;
  LOBYTE(v45) = *(v45 + 4);
  v46 = v71;
  swift_beginAccess();
  *v46 = v40;
  *(v46 + 4) = v45;
  v47 = (a1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata);
  swift_beginAccess();
  v49 = *v47;
  v48 = v47[1];
  v50 = v72;
  swift_beginAccess();
  v51 = *v50;
  v52 = v50[1];
  *v50 = v49;
  v50[1] = v48;
  outlined copy of Data?(v49, v48);
  outlined consume of Data?(v51, v52);
  v53 = a1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadataFormat;
  swift_beginAccess();
  LODWORD(v49) = *v53;
  LOBYTE(v53) = *(v53 + 4);
  v54 = v73;
  swift_beginAccess();
  *v54 = v49;
  *(v54 + 4) = v53;
  v55 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__topCorrelationPeaks;
  swift_beginAccess();
  v56 = *(a1 + v55);

  v57 = v74;
  swift_beginAccess();
  v58 = *(v1 + v57);
  *(v1 + v57) = v56;

  return v1;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__fullSvTime, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeUsageNanoseconds, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffsetUsagePpb, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__carrierPhaseUsageNanoseconds, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  outlined consume of Data?(*(v0 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata), *(v0 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata + 8));
  v1 = *(v0 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__topCorrelationPeaks);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

uint64_t CLP_LogEntry_PrivateData_MeasurementExtension.decodeMessage<A>(decoder:)()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass.init(copying:)(v6);
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
        case 2:
        case 12:
        case 13:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
          goto LABEL_16;
        case 3:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FullSvTime and conformance CLP_LogEntry_PrivateData_FullSvTime;
          goto LABEL_11;
        case 4:
        case 5:
        case 6:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvMeasurementUsage and conformance CLP_LogEntry_PrivateData_SvMeasurementUsage;
LABEL_11:
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v13);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_16;
        case 7:
        case 8:
        case 15:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_16;
        case 9:
        case 10:
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MeasurementDetectionMethod and conformance CLP_LogEntry_PrivateData_MeasurementDetectionMethod();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_16;
        case 11:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_16;
        case 14:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBytesField(value:)();
          goto LABEL_16;
        case 16:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalCorrelationPeak and conformance CLP_LogEntry_PrivateData_SignalCorrelationPeak, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
LABEL_16:
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

uint64_t CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 20))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v11 = *(v9 + 16);
    result = dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if ((*(v9 + 28) & 1) == 0)
  {
    v12 = *(v9 + 24);
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  closure #3 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #4 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #5 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #6 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #7 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__noncoherentIntervalCount, 7, MEMORY[0x277D21860]);
  closure #7 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__coherentIntegrationMs, 8, MEMORY[0x277D21860]);
  closure #9 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeDetectionMethod);
  closure #9 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyDetectionMethod);
  closure #7 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__channelID, 11, MEMORY[0x277D21848]);
  closure #12 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__codeLockDurationSeconds);
  closure #12 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyLockDurationSeconds);
  closure #14 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v9);
  closure #7 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadataFormat, 15, MEMORY[0x277D21860]);
  v13 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__topCorrelationPeaks;
  swift_beginAccess();
  if (*(*(v9 + v13) + 16))
  {
    type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0);
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalCorrelationPeak and conformance CLP_LogEntry_PrivateData_SignalCorrelationPeak, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #3 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__fullSvTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FullSvTime and conformance CLP_LogEntry_PrivateData_FullSvTime, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
}

uint64_t closure #4 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeUsageNanoseconds;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvMeasurementUsage and conformance CLP_LogEntry_PrivateData_SvMeasurementUsage, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
}

uint64_t closure #5 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffsetUsagePpb;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvMeasurementUsage and conformance CLP_LogEntry_PrivateData_SvMeasurementUsage, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
}

uint64_t closure #6 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__carrierPhaseUsageNanoseconds;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvMeasurementUsage and conformance CLP_LogEntry_PrivateData_SvMeasurementUsage, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
}

uint64_t closure #9 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v6) != 7)
  {
    v8 = *(a1 + v6);
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MeasurementDetectionMethod and conformance CLP_LogEntry_PrivateData_MeasurementDetectionMethod();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #14 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata);
  result = swift_beginAccess();
  v3 = v1[1];
  if (v3 >> 60 != 15)
  {
    v4 = *v1;
    outlined copy of Data._Representation(v4, v3);
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v4, v3);
  }

  return result;
}

uint64_t closure #7 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t (*a7)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = (a1 + *a5);
  result = swift_beginAccess();
  if ((v11[1] & 1) == 0)
  {
    return a7(*v11, a6, a3, a4);
  }

  return result;
}

uint64_t closure #1 in static CLP_LogEntry_PrivateData_MeasurementExtension.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v159 = *(v4 - 8);
  v160 = v4;
  v5 = *(v159 + 64);
  MEMORY[0x28223BE20](v4);
  v152 = &v148 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSg_ADtMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSg_ADtMR);
  v7 = *(*(v161 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v161);
  v10 = &v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v151 = &v148 - v12;
  MEMORY[0x28223BE20](v11);
  v158 = &v148 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v149 = &v148 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v154 = &v148 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v150 = &v148 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v155 = &v148 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v153 = &v148 - v25;
  MEMORY[0x28223BE20](v24);
  v157 = &v148 - v26;
  v27 = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
  v162 = *(v27 - 8);
  v28 = *(v162 + 8);
  MEMORY[0x28223BE20](v27);
  v156 = &v148 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSg_ADtMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSg_ADtMR);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v148 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v38 = &v148 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v40 = &v148 - v39;
  swift_beginAccess();
  v41 = *(a1 + 16);
  v164 = a1;
  LOBYTE(a1) = *(a1 + 20);
  swift_beginAccess();
  v42 = *(a2 + 20);
  if (a1)
  {
    if (!*(a2 + 20))
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (v41 != *(a2 + 16))
    {
      v42 = 1;
    }

    if (v42)
    {
      goto LABEL_35;
    }
  }

  v43 = v164;
  swift_beginAccess();
  v44 = *(v43 + 24);
  LOBYTE(v43) = *(v43 + 28);
  swift_beginAccess();
  v45 = *(a2 + 28);
  if (v43)
  {
    if (!*(a2 + 28))
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (v44 != *(a2 + 24))
    {
      v45 = 1;
    }

    if (v45)
    {
      goto LABEL_35;
    }
  }

  v148 = v10;
  v163 = a2;
  v46 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__fullSvTime;
  v47 = v164;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v47 + v46, v40, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
  v48 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__fullSvTime;
  swift_beginAccess();
  v49 = *(v30 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v40, v33, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v163 + v48, &v33[v49], &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
  v50 = *(v162 + 6);
  if (v50(v33, 1, v27) == 1)
  {

    outlined destroy of Any?(v40, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
    if (v50(&v33[v49], 1, v27) == 1)
    {
      outlined destroy of Any?(v33, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
      goto LABEL_20;
    }

LABEL_18:
    v51 = &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSg_ADtMd;
    v52 = &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSg_ADtMR;
    v53 = v33;
LABEL_33:
    outlined destroy of Any?(v53, v51, v52);
    goto LABEL_34;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v33, v38, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
  if (v50(&v33[v49], 1, v27) == 1)
  {

    outlined destroy of Any?(v40, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v38, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
    goto LABEL_18;
  }

  v54 = v156;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v33[v49], v156, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
  v47 = v164;

  v55 = specialized static CLP_LogEntry_PrivateData_FullSvTime.== infix(_:_:)(v38, v54);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v54, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
  outlined destroy of Any?(v40, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v38, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
  outlined destroy of Any?(v33, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
  if ((v55 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_20:
  v56 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeUsageNanoseconds;
  swift_beginAccess();
  v57 = v157;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v47 + v56, v157, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v58 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeUsageNanoseconds;
  swift_beginAccess();
  v59 = *(v161 + 48);
  v60 = v158;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v57, v158, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v163 + v58, v60 + v59, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v61 = v160;
  v62 = *(v159 + 48);
  if (v62(v60, 1, v160) == 1)
  {
    outlined destroy of Any?(v57, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
    if (v62(v60 + v59, 1, v61) == 1)
    {
      v162 = v62;
      outlined destroy of Any?(v60, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v63 = v153;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v60, v153, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  if (v62(v60 + v59, 1, v61) == 1)
  {
    outlined destroy of Any?(v57, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v63, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
LABEL_25:
    v51 = &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSg_ADtMd;
    v52 = &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSg_ADtMR;
    v53 = v60;
    goto LABEL_33;
  }

  v162 = v62;
  v64 = v60 + v59;
  v65 = v152;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v64, v152, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  LODWORD(v159) = specialized static CLP_LogEntry_PrivateData_SvMeasurementUsage.== infix(_:_:)(v63, v65);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v65, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  outlined destroy of Any?(v57, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v63, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  outlined destroy of Any?(v60, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  if ((v159 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_27:
  v66 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffsetUsagePpb;
  swift_beginAccess();
  v67 = v155;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v47 + v66, v155, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v68 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffsetUsagePpb;
  swift_beginAccess();
  v69 = *(v161 + 48);
  v70 = v151;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v67, v151, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v71 = v70;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v163 + v68, v70 + v69, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v72 = v162;
  if (v162(v70, 1, v61) == 1)
  {
    outlined destroy of Any?(v67, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
    v73 = v72(v70 + v69, 1, v61);
    v74 = v154;
    if (v73 == 1)
    {
      v162 = v72;
      outlined destroy of Any?(v71, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
      goto LABEL_38;
    }

    goto LABEL_32;
  }

  v75 = v70;
  v76 = v72;
  v77 = v150;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v75, v150, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v162 = v76;
  v78 = v76(v71 + v69, 1, v61);
  v74 = v154;
  if (v78 == 1)
  {
    outlined destroy of Any?(v155, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v77, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
LABEL_32:
    v51 = &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSg_ADtMd;
    v52 = &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSg_ADtMR;
    v53 = v71;
    goto LABEL_33;
  }

  v81 = v71 + v69;
  v82 = v152;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v81, v152, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  v83 = specialized static CLP_LogEntry_PrivateData_SvMeasurementUsage.== infix(_:_:)(v77, v82);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v82, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  outlined destroy of Any?(v155, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v77, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  outlined destroy of Any?(v71, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  if ((v83 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_38:
  v84 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__carrierPhaseUsageNanoseconds;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v47 + v84, v74, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v85 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__carrierPhaseUsageNanoseconds;
  v86 = v74;
  v87 = v163;
  swift_beginAccess();
  v88 = *(v161 + 48);
  v89 = v86;
  v90 = v148;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v89, v148, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v87 + v85, v90 + v88, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v91 = v162;
  if (v162(v90, 1, v61) != 1)
  {
    v92 = v149;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v90, v149, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
    if (v91(v90 + v88, 1, v61) != 1)
    {
      v93 = v152;
      outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v90 + v88, v152, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
      v94 = specialized static CLP_LogEntry_PrivateData_SvMeasurementUsage.== infix(_:_:)(v92, v93);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v93, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
      outlined destroy of Any?(v154, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v92, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
      outlined destroy of Any?(v90, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
      if ((v94 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_46;
    }

    outlined destroy of Any?(v154, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v92, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
LABEL_43:
    outlined destroy of Any?(v90, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSg_ADtMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSg_ADtMR);
    goto LABEL_34;
  }

  outlined destroy of Any?(v154, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  if (v91(v90 + v88, 1, v61) != 1)
  {
    goto LABEL_43;
  }

  outlined destroy of Any?(v90, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
LABEL_46:
  v95 = (v47 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__noncoherentIntervalCount);
  swift_beginAccess();
  v96 = *v95;
  v97 = *(v95 + 4);
  v98 = v163 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__noncoherentIntervalCount;
  swift_beginAccess();
  v99 = *(v98 + 4);
  if (v97)
  {
    if ((*(v98 + 4) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if ((*(v98 + 4) & 1) != 0 || v96 != *v98)
  {
    goto LABEL_34;
  }

  v100 = (v47 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__coherentIntegrationMs);
  swift_beginAccess();
  v101 = *v100;
  v102 = *(v100 + 4);
  v103 = v163 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__coherentIntegrationMs;
  swift_beginAccess();
  v104 = *(v103 + 4);
  if (v102)
  {
    v105 = v163;
    if ((*(v103 + 4) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (*(v103 + 4))
    {
      goto LABEL_34;
    }

    v105 = v163;
    if (v101 != *v103)
    {
      goto LABEL_34;
    }
  }

  v106 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeDetectionMethod;
  swift_beginAccess();
  v107 = *(v47 + v106);
  v108 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeDetectionMethod;
  swift_beginAccess();
  v109 = *(v105 + v108);
  if (v107 == 7)
  {
    if (v109 != 7)
    {
      goto LABEL_34;
    }
  }

  else if (v109 == 7 || v107 != v109)
  {
    goto LABEL_34;
  }

  v110 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyDetectionMethod;
  swift_beginAccess();
  v111 = *(v47 + v110);
  v112 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyDetectionMethod;
  swift_beginAccess();
  v113 = *(v105 + v112);
  if (v111 != 7)
  {
    if (v113 == 7 || v111 != v113)
    {
      goto LABEL_34;
    }

LABEL_66:
    v114 = (v47 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__channelID);
    swift_beginAccess();
    v115 = *v114;
    v116 = v105;
    v117 = *(v114 + 4);
    v118 = v116 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__channelID;
    swift_beginAccess();
    v119 = *(v118 + 4);
    if (v117)
    {
      if ((*(v118 + 4) & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else if ((*(v118 + 4) & 1) != 0 || v115 != *v118)
    {
      goto LABEL_34;
    }

    v120 = v164 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__codeLockDurationSeconds;
    swift_beginAccess();
    v121 = *v120;
    v122 = *(v120 + 4);
    v123 = v163 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__codeLockDurationSeconds;
    swift_beginAccess();
    v124 = *(v123 + 4);
    if (v122)
    {
      if ((*(v123 + 4) & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else if ((*(v123 + 4) & 1) != 0 || v121 != *v123)
    {
      goto LABEL_34;
    }

    v125 = v164 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyLockDurationSeconds;
    swift_beginAccess();
    v126 = *v125;
    v127 = *(v125 + 4);
    v128 = v163 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyLockDurationSeconds;
    swift_beginAccess();
    v129 = *(v128 + 4);
    if (v127)
    {
      if ((*(v128 + 4) & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else if ((*(v128 + 4) & 1) != 0 || v126 != *v128)
    {
      goto LABEL_34;
    }

    v130 = (v164 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata);
    swift_beginAccess();
    v132 = *v130;
    v131 = v130[1];
    v133 = (v163 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata);
    swift_beginAccess();
    v134 = *v133;
    v135 = v133[1];
    outlined copy of Data?(v132, v131);
    outlined copy of Data?(v134, v135);
    if (v131 >> 60 == 15)
    {
      if (v135 >> 60 == 15)
      {
        outlined consume of Data?(v132, v131);
        goto LABEL_89;
      }
    }

    else
    {
      outlined copy of Data?(v132, v131);
      outlined copy of Data?(v134, v135);
      if (v135 >> 60 != 15)
      {
        v136 = specialized static Data.== infix(_:_:)(v132, v131, v134, v135);
        outlined consume of Data?(v134, v135);
        outlined consume of Data?(v132, v131);
        outlined consume of Data?(v134, v135);
        outlined consume of Data?(v132, v131);
        if ((v136 & 1) == 0)
        {
          goto LABEL_34;
        }

LABEL_89:
        v137 = (v164 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadataFormat);
        swift_beginAccess();
        v138 = *v137;
        v139 = *(v137 + 4);
        v140 = v163 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadataFormat;
        swift_beginAccess();
        v141 = *(v140 + 4);
        if (v139)
        {
          if ((*(v140 + 4) & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        else if ((*(v140 + 4) & 1) != 0 || v138 != *v140)
        {
          goto LABEL_34;
        }

        v142 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__topCorrelationPeaks;
        v143 = v164;
        swift_beginAccess();
        v144 = *(v143 + v142);
        v145 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__topCorrelationPeaks;
        v146 = v163;
        swift_beginAccess();
        v147 = *(v146 + v145);

        v79 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf46CLP_LogEntry_PrivateData_SignalCorrelationPeakV_Tt1g5(v144, v147);

        return v79 & 1;
      }

      outlined consume of Data?(v134, v135);
      outlined consume of Data?(v132, v131);
    }

    outlined consume of Data?(v132, v131);
    outlined consume of Data?(v134, v135);
    goto LABEL_35;
  }

  if (v113 == 7)
  {
    goto LABEL_66;
  }

LABEL_34:

LABEL_35:
  v79 = 0;
  return v79 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_MeasurementExtension(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementExtension and conformance CLP_LogEntry_PrivateData_MeasurementExtension, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_MeasurementExtension(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementExtension and conformance CLP_LogEntry_PrivateData_MeasurementExtension, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MeasurementExtension(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementExtension and conformance CLP_LogEntry_PrivateData_MeasurementExtension, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_Measurement._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v97 = &v80 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v96 = &v80 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v95 = &v80 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v94 = &v80 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v92 = &v80 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v84 = &v80 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v81 = &v80 - v23;
  v24 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  v80 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  v25 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  (*(*(v25 - 8) + 56))(v1 + v24, 1, 1, v25);
  v26 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState;
  v82 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState;
  v27 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0);
  (*(*(v27 - 8) + 56))(v1 + v26, 1, 1, v27);
  v28 = v1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__startTimeNanoseconds;
  *v28 = 0;
  *(v28 + 8) = 1;
  v29 = v1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__endTimeNanoseconds;
  *v29 = 0;
  *(v29 + 8) = 1;
  v30 = v1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__applicabilityTimeNanoseconds;
  *v30 = 0;
  *(v30 + 8) = 1;
  v31 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTime;
  v85 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTime;
  v32 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  (*(*(v32 - 8) + 56))(v1 + v31, 1, 1, v32);
  v33 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset;
  v86 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset;
  v34 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v35 = *(*(v34 - 8) + 56);
  v35(v1 + v33, 1, 1, v34);
  v36 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking;
  v87 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking;
  v37 = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  (*(*(v37 - 8) + 56))(v1 + v36, 1, 1, v37);
  v38 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension;
  v88 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension;
  v39 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0);
  (*(*(v39 - 8) + 56))(v1 + v38, 1, 1, v39);
  v40 = v1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__cn0DbHz;
  v89 = v1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__cn0DbHz;
  *v40 = 0;
  *(v40 + 4) = 1;
  v41 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__multipathIndicator;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__multipathIndicator) = 5;
  v90 = v41;
  v91 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffset;
  v35(v1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffset, 1, 1, v34);
  v83 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__isUsable;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__isUsable) = 2;
  v42 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffsetFromPhaseTracking;
  v93 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffsetFromPhaseTracking;
  v43 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  (*(*(v43 - 8) + 56))(v1 + v42, 1, 1, v43);
  v44 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  v45 = v81;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v44, v81, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v46 = v80;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v45, v1 + v46, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  swift_endAccess();
  v47 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState;
  swift_beginAccess();
  v48 = v84;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v47, v84, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
  v49 = v82;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v48, v1 + v49, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
  swift_endAccess();
  v50 = (a1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__startTimeNanoseconds);
  swift_beginAccess();
  v51 = *v50;
  LOBYTE(v50) = *(v50 + 8);
  swift_beginAccess();
  *v28 = v51;
  *(v28 + 8) = v50;
  v52 = (a1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__endTimeNanoseconds);
  swift_beginAccess();
  v53 = *v52;
  LOBYTE(v52) = *(v52 + 8);
  swift_beginAccess();
  *v29 = v53;
  *(v29 + 8) = v52;
  v54 = (a1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__applicabilityTimeNanoseconds);
  swift_beginAccess();
  v55 = *v54;
  LOBYTE(v54) = *(v54 + 8);
  swift_beginAccess();
  *v30 = v55;
  *(v30 + 8) = v54;
  v56 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTime;
  swift_beginAccess();
  v57 = v92;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v56, v92, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  v58 = v85;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v57, v1 + v58, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  swift_endAccess();
  v59 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset;
  swift_beginAccess();
  v60 = v94;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v59, v94, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  v61 = v86;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v60, v1 + v61, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  swift_endAccess();
  v62 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking;
  swift_beginAccess();
  v63 = v95;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v62, v95, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
  v64 = v87;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v63, v1 + v64, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
  swift_endAccess();
  v65 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension;
  swift_beginAccess();
  v66 = v96;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v65, v96, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
  v67 = v88;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v66, v1 + v67, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
  swift_endAccess();
  v68 = a1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__cn0DbHz;
  swift_beginAccess();
  LODWORD(v55) = *v68;
  LOBYTE(v68) = *(v68 + 4);
  v69 = v89;
  swift_beginAccess();
  *v69 = v55;
  *(v69 + 4) = v68;
  v70 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__multipathIndicator;
  swift_beginAccess();
  LOBYTE(v70) = *(a1 + v70);
  v71 = v90;
  swift_beginAccess();
  *(v1 + v71) = v70;
  v72 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffset;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v72, v60, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  v73 = v91;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v60, v1 + v73, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  swift_endAccess();
  v74 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__isUsable;
  swift_beginAccess();
  LOBYTE(v74) = *(a1 + v74);
  v75 = v83;
  swift_beginAccess();
  *(v1 + v75) = v74;
  v76 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffsetFromPhaseTracking;
  swift_beginAccess();
  v77 = v97;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v76, v97, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);

  v78 = v93;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v77, v1 + v78, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
  swift_endAccess();
  return v1;
}

uint64_t CLP_LogEntry_PrivateData_Measurement._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTime, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffset, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffsetFromPhaseTracking, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t CLP_LogEntry_PrivateData_Measurement.decodeMessage<A>(decoder:)()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    CLP_LogEntry_PrivateData_Measurement._StorageClass.init(copying:)(v6);
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
          type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_SvId;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvId and conformance CLP_LogEntry_PrivateData_SvId;
          goto LABEL_18;
        case 2:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SyncState and conformance CLP_LogEntry_PrivateData_SyncState;
          goto LABEL_18;
        case 3:
        case 4:
        case 5:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
          goto LABEL_19;
        case 6:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvTime and conformance CLP_LogEntry_PrivateData_SvTime;
          goto LABEL_18;
        case 7:
        case 12:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FrequencyOffset and conformance CLP_LogEntry_PrivateData_FrequencyOffset;
          goto LABEL_18;
        case 8:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PhaseTracking and conformance CLP_LogEntry_PrivateData_PhaseTracking;
          goto LABEL_18;
        case 9:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementExtension and conformance CLP_LogEntry_PrivateData_MeasurementExtension;
          goto LABEL_18;
        case 10:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
          goto LABEL_19;
        case 11:
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MultipathIndicator and conformance CLP_LogEntry_PrivateData_MultipathIndicator();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_19;
        case 13:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_19;
        case 14:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking and conformance CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking;
LABEL_18:
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v13);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_19:
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

uint64_t CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20));
  result = closure #1 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(v8, a1, a2, a3);
  if (!v4)
  {
    closure #2 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(v8, a1, a2, a3);
    v10 = v8 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__startTimeNanoseconds;
    swift_beginAccess();
    if ((*(v10 + 8) & 1) == 0)
    {
      v11 = *v10;
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    v12 = v8 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__endTimeNanoseconds;
    swift_beginAccess();
    if ((*(v12 + 8) & 1) == 0)
    {
      v13 = *v12;
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    v14 = v8 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__applicabilityTimeNanoseconds;
    swift_beginAccess();
    if ((*(v14 + 8) & 1) == 0)
    {
      v15 = *v14;
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    closure #6 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #7 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #8 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #9 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #12 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__cn0DbHz);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__multipathIndicator, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MultipathIndicator and conformance CLP_LogEntry_PrivateData_MultipathIndicator);
    closure #12 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #13 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(v8);
    closure #14 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(v8, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvId and conformance CLP_LogEntry_PrivateData_SvId, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
}

uint64_t closure #2 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SyncState and conformance CLP_LogEntry_PrivateData_SyncState, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
}

uint64_t closure #6 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvTime and conformance CLP_LogEntry_PrivateData_SvTime, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
}

uint64_t closure #7 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FrequencyOffset and conformance CLP_LogEntry_PrivateData_FrequencyOffset, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
}

uint64_t closure #8 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PhaseTracking and conformance CLP_LogEntry_PrivateData_PhaseTracking, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
}

uint64_t closure #9 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementExtension and conformance CLP_LogEntry_PrivateData_MeasurementExtension, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
}

uint64_t closure #12 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffset;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FrequencyOffset and conformance CLP_LogEntry_PrivateData_FrequencyOffset, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
}

uint64_t closure #13 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__isUsable;
  result = swift_beginAccess();
  if (*(a1 + v2) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #14 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffsetFromPhaseTracking;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking and conformance CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
}

BOOL closure #1 in static CLP_LogEntry_PrivateData_Measurement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v274 = a2;
  v231 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  v229 = *(v231 - 8);
  v3 = *(v229 + 64);
  MEMORY[0x28223BE20](v231);
  v226 = &v226 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSg_ADtMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSg_ADtMR);
  v5 = *(*(v227 - 8) + 64);
  MEMORY[0x28223BE20](v227);
  v232 = &v226 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v228 = &v226 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v230 = &v226 - v11;
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0);
  v240 = *(v12 - 8);
  v241 = v12;
  v13 = *(v240 + 64);
  MEMORY[0x28223BE20](v12);
  v236 = &v226 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSg_ADtMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSg_ADtMR);
  v15 = *(*(v239 - 8) + 64);
  MEMORY[0x28223BE20](v239);
  v242 = &v226 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v237 = &v226 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v268 = &v226 - v21;
  v22 = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  v246 = *(v22 - 8);
  v247 = v22;
  v23 = *(v246 + 64);
  MEMORY[0x28223BE20](v22);
  v238 = &v226 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSg_ADtMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSg_ADtMR);
  v25 = *(*(v245 - 8) + 64);
  MEMORY[0x28223BE20](v245);
  v248 = &v226 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v243 = &v226 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v264 = &v226 - v31;
  v32 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v33 = *(v32 - 8);
  v253 = v32;
  v254 = v33;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v244 = &v226 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSg_ADtMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSg_ADtMR);
  v36 = *(*(v252 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v252);
  v235 = &v226 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v251 = &v226 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40 - 8);
  v233 = &v226 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v234 = &v226 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v250 = &v226 - v47;
  MEMORY[0x28223BE20](v46);
  v269 = &v226 - v48;
  v49 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  v257 = *(v49 - 8);
  v258 = v49;
  v50 = *(v257 + 64);
  MEMORY[0x28223BE20](v49);
  v249 = &v226 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSg_ADtMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSg_ADtMR);
  v52 = *(*(v255 - 8) + 64);
  MEMORY[0x28223BE20](v255);
  v259 = &v226 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  v55 = *(*(v54 - 8) + 64);
  v56 = MEMORY[0x28223BE20](v54 - 8);
  v256 = &v226 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v260 = &v226 - v58;
  v59 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0);
  v266 = *(v59 - 8);
  v267 = v59;
  v60 = *(v266 + 64);
  MEMORY[0x28223BE20](v59);
  v261 = &v226 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSg_ADtMR);
  v62 = *(*(v265 - 8) + 64);
  MEMORY[0x28223BE20](v265);
  v270 = &v226 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
  v65 = *(*(v64 - 8) + 64);
  v66 = MEMORY[0x28223BE20](v64 - 8);
  v262 = &v226 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v66);
  v272 = &v226 - v68;
  v273 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v69 = *(v273 - 8);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v273);
  v263 = &v226 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSg_ADtMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSg_ADtMR);
  v73 = v72 - 8;
  v74 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v76 = &v226 - v75;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v78 = *(*(v77 - 8) + 64);
  v79 = MEMORY[0x28223BE20](v77 - 8);
  v271 = &v226 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v79);
  v82 = &v226 - v81;
  v83 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  v84 = a1 + v83;
  v85 = v274;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v84, v82, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v86 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  v87 = *(v73 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v82, v76, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v88 = v85 + v86;
  v89 = v273;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v88, &v76[v87], &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v90 = *(v69 + 48);
  if (v90(v76, 1, v89) == 1)
  {

    outlined destroy of Any?(v82, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
    if (v90(&v76[v87], 1, v89) == 1)
    {
      outlined destroy of Any?(v76, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v92 = &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSg_ADtMd;
    v93 = &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSg_ADtMR;
    v94 = v76;
LABEL_14:
    outlined destroy of Any?(v94, v92, v93);
    goto LABEL_15;
  }

  v91 = v271;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v76, v271, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  if (v90(&v76[v87], 1, v89) == 1)
  {

    outlined destroy of Any?(v82, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v91, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
    goto LABEL_6;
  }

  v95 = v263;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v76[v87], v263, type metadata accessor for CLP_LogEntry_PrivateData_SvId);

  v96 = specialized static CLP_LogEntry_PrivateData_SvId.== infix(_:_:)(v91, v95);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v95, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  outlined destroy of Any?(v82, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v91, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  outlined destroy of Any?(v76, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  if ((v96 & 1) == 0)
  {
LABEL_15:

    return 0;
  }

LABEL_8:
  v97 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState;
  swift_beginAccess();
  v98 = v272;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v97, v272, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
  v99 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState;
  swift_beginAccess();
  v100 = *(v265 + 48);
  v101 = v270;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v98, v270, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
  v102 = v101;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v85 + v99, v101 + v100, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
  v103 = v267;
  v104 = *(v266 + 48);
  if (v104(v101, 1, v267) == 1)
  {
    outlined destroy of Any?(v98, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
    v105 = v104(v101 + v100, 1, v103);
    v107 = v268;
    v106 = v269;
    v108 = v264;
    if (v105 == 1)
    {
      outlined destroy of Any?(v102, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  v109 = v101;
  v110 = v262;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v109, v262, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
  v111 = v104(v102 + v100, 1, v103);
  v107 = v268;
  v106 = v269;
  if (v111 == 1)
  {
    outlined destroy of Any?(v272, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v110, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
LABEL_13:
    v92 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSg_ADtMd;
    v93 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSg_ADtMR;
    v94 = v102;
    goto LABEL_14;
  }

  v113 = v102 + v100;
  v114 = v261;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v113, v261, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
  v115 = *(v103 + 20);
  v116 = *(v110 + v115);
  v117 = *(v114 + v115);
  if (v116 != v117)
  {
    v118 = *(v110 + v115);

    v119 = closure #1 in static CLP_LogEntry_PrivateData_SyncState.== infix(_:_:)(v116, v117);

    if (!v119)
    {
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v114, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
      outlined destroy of Any?(v272, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v110, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
      v94 = v270;
      v92 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd;
      v93 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR;
      goto LABEL_14;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v120 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v114, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
  outlined destroy of Any?(v272, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v110, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
  v108 = v264;
  outlined destroy of Any?(v270, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
  if ((v120 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_20:
  v121 = (a1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__startTimeNanoseconds);
  swift_beginAccess();
  v122 = *v121;
  v123 = *(v121 + 8);
  v124 = v85 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__startTimeNanoseconds;
  swift_beginAccess();
  v125 = *(v124 + 8);
  if (v123)
  {
    if ((*(v124 + 8) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v124 + 8) & 1) != 0 || v122 != *v124)
  {
    goto LABEL_15;
  }

  v126 = (a1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__endTimeNanoseconds);
  swift_beginAccess();
  v127 = *v126;
  v128 = *(v126 + 8);
  v129 = v85 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__endTimeNanoseconds;
  swift_beginAccess();
  v130 = *(v129 + 8);
  if (v128)
  {
    if ((*(v129 + 8) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v129 + 8) & 1) != 0 || v127 != *v129)
  {
    goto LABEL_15;
  }

  v131 = (a1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__applicabilityTimeNanoseconds);
  swift_beginAccess();
  v132 = *v131;
  v133 = *(v131 + 8);
  v134 = v85 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__applicabilityTimeNanoseconds;
  swift_beginAccess();
  v135 = *(v134 + 8);
  if (v133)
  {
    if ((*(v134 + 8) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v134 + 8) & 1) != 0 || v132 != *v134)
  {
    goto LABEL_15;
  }

  v136 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTime;
  swift_beginAccess();
  v137 = v260;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v136, v260, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  v138 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTime;
  swift_beginAccess();
  v139 = *(v255 + 48);
  v140 = v259;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v137, v259, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  v273 = v139;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v85 + v138, v140 + v139, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  v141 = v258;
  v272 = *(v257 + 48);
  if ((v272)(v140, 1, v258) == 1)
  {
    outlined destroy of Any?(v137, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
    if ((v272)(v140 + v273, 1, v141) == 1)
    {
      outlined destroy of Any?(v140, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
      goto LABEL_43;
    }

LABEL_41:
    v92 = &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSg_ADtMd;
    v93 = &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSg_ADtMR;
LABEL_49:
    v94 = v140;
    goto LABEL_14;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v140, v256, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  if ((v272)(v140 + v273, 1, v141) == 1)
  {
    outlined destroy of Any?(v260, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v256, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
    goto LABEL_41;
  }

  v142 = v249;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v140 + v273, v249, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  v143 = v256;
  LODWORD(v273) = specialized static CLP_LogEntry_PrivateData_FrequencyOffset.== infix(_:_:)(v256, v142, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v142, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  outlined destroy of Any?(v260, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v143, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  outlined destroy of Any?(v140, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  if ((v273 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_43:
  v144 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v144, v106, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  v145 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset;
  swift_beginAccess();
  v146 = *(v252 + 48);
  v147 = v106;
  v148 = v251;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v147, v251, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  v140 = v148;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v85 + v145, v148 + v146, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  v149 = v253;
  v151 = v254 + 48;
  v150 = *(v254 + 48);
  if (v150(v140, 1, v253) == 1)
  {
    outlined destroy of Any?(v269, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
    if (v150(v140 + v146, 1, v149) == 1)
    {
      v273 = v150;
      v254 = v151;
      outlined destroy of Any?(v140, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v140, v250, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  v273 = v150;
  if (v150(v140 + v146, 1, v149) == 1)
  {
    outlined destroy of Any?(v269, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v250, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
LABEL_48:
    v92 = &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSg_ADtMd;
    v93 = &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSg_ADtMR;
    goto LABEL_49;
  }

  v254 = v151;
  v152 = v140 + v146;
  v153 = v244;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v152, v244, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  v154 = v250;
  LODWORD(v272) = specialized static CLP_LogEntry_PrivateData_FrequencyOffset.== infix(_:_:)(v250, v153, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v153, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  outlined destroy of Any?(v269, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v154, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  outlined destroy of Any?(v140, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  if ((v272 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_51:
  v155 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v155, v108, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
  v156 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking;
  swift_beginAccess();
  v157 = *(v245 + 48);
  v158 = v248;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v108, v248, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v85 + v156, v158 + v157, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
  v159 = v247;
  v160 = *(v246 + 48);
  if (v160(v158, 1, v247) == 1)
  {
    outlined destroy of Any?(v108, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
    if (v160(v158 + v157, 1, v159) == 1)
    {
      outlined destroy of Any?(v158, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
      goto LABEL_58;
    }

LABEL_56:
    v92 = &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSg_ADtMd;
    v93 = &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSg_ADtMR;
    v94 = v158;
    goto LABEL_14;
  }

  v161 = v243;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v158, v243, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
  if (v160(v158 + v157, 1, v159) == 1)
  {
    outlined destroy of Any?(v264, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v161, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
    goto LABEL_56;
  }

  v162 = v158 + v157;
  v163 = v238;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v162, v238, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
  v164 = specialized static CLP_LogEntry_PrivateData_PhaseTracking.== infix(_:_:)(v161, v163);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v163, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
  outlined destroy of Any?(v264, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v161, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
  outlined destroy of Any?(v158, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
  if ((v164 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_58:
  v165 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v165, v107, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
  v166 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension;
  swift_beginAccess();
  v167 = *(v239 + 48);
  v168 = v107;
  v169 = v107;
  v170 = v242;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v168, v242, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
  v140 = v170;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v85 + v166, v170 + v167, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
  v171 = v241;
  v172 = *(v240 + 48);
  if (v172(v170, 1, v241) == 1)
  {
    outlined destroy of Any?(v169, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
    if (v172(v170 + v167, 1, v171) == 1)
    {
      outlined destroy of Any?(v170, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
      goto LABEL_67;
    }

    goto LABEL_63;
  }

  v173 = v237;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v140, v237, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
  if (v172(v140 + v167, 1, v171) == 1)
  {
    outlined destroy of Any?(v268, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v173, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
LABEL_63:
    v92 = &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSg_ADtMd;
    v93 = &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSg_ADtMR;
    goto LABEL_49;
  }

  v174 = v171;
  v175 = v236;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v140 + v167, v236, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
  v176 = *(v174 + 20);
  v177 = *(v173 + v176);
  v178 = *(v175 + v176);
  if (v177 != v178)
  {
    v179 = *(v173 + v176);

    v180 = closure #1 in static CLP_LogEntry_PrivateData_MeasurementExtension.== infix(_:_:)(v177, v178);

    if ((v180 & 1) == 0)
    {
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v175, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
      outlined destroy of Any?(v268, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v173, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
      v94 = v242;
      v92 = &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd;
      v93 = &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR;
      goto LABEL_14;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v181 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v175, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
  outlined destroy of Any?(v268, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v173, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
  outlined destroy of Any?(v242, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
  if ((v181 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_67:
  v182 = a1;
  v183 = a1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__cn0DbHz;
  swift_beginAccess();
  v184 = *v183;
  v185 = *(v183 + 4);
  v186 = v85 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__cn0DbHz;
  swift_beginAccess();
  v187 = *(v186 + 4);
  if (v185)
  {
    if ((*(v186 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v186 + 4) & 1) != 0 || v184 != *v186)
  {
    goto LABEL_15;
  }

  v188 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__multipathIndicator;
  swift_beginAccess();
  v189 = *(a1 + v188);
  v190 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__multipathIndicator;
  v191 = v274;
  swift_beginAccess();
  v192 = *(v191 + v190);
  if (v189 == 5)
  {
    if (v192 != 5)
    {
      goto LABEL_15;
    }
  }

  else if (v192 == 5 || v189 != v192)
  {
    goto LABEL_15;
  }

  v193 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffset;
  swift_beginAccess();
  v194 = a1 + v193;
  v195 = v234;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v194, v234, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  v196 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffset;
  v197 = v274;
  swift_beginAccess();
  v198 = *(v252 + 48);
  v199 = v195;
  v200 = v235;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v199, v235, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v197 + v196, v200 + v198, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  if ((v273)(v200, 1, v253) == 1)
  {
    outlined destroy of Any?(v234, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
    if ((v273)(v235 + v198, 1, v253) == 1)
    {
      outlined destroy of Any?(v235, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
      goto LABEL_86;
    }

LABEL_83:
    outlined destroy of Any?(v235, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSg_ADtMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSg_ADtMR);
    goto LABEL_15;
  }

  v201 = v235;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v235, v233, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  if ((v273)(v201 + v198, 1, v253) == 1)
  {
    outlined destroy of Any?(v234, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v233, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
    goto LABEL_83;
  }

  v202 = v235;
  v203 = v235 + v198;
  v204 = v244;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v203, v244, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  v205 = v233;
  v206 = specialized static CLP_LogEntry_PrivateData_FrequencyOffset.== infix(_:_:)(v233, v204, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v204, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  outlined destroy of Any?(v234, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v205, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  outlined destroy of Any?(v202, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  if ((v206 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_86:
  v207 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__isUsable;
  swift_beginAccess();
  v208 = *(v182 + v207);
  v209 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__isUsable;
  v210 = v274;
  swift_beginAccess();
  v211 = *(v210 + v209);
  if (v208 == 2)
  {
    if (v211 != 2)
    {
      goto LABEL_15;
    }
  }

  else if (v211 == 2 || ((v208 ^ v211) & 1) != 0)
  {
    goto LABEL_15;
  }

  v212 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffsetFromPhaseTracking;
  swift_beginAccess();
  v213 = v230;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v182 + v212, v230, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
  v214 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffsetFromPhaseTracking;
  v215 = v274;
  swift_beginAccess();
  v216 = *(v227 + 48);
  v217 = v213;
  v218 = v232;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v217, v232, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v215 + v214, v218 + v216, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
  v219 = *(v229 + 48);
  if (v219(v218, 1, v231) == 1)
  {

    outlined destroy of Any?(v230, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
    if (v219(v232 + v216, 1, v231) == 1)
    {
      outlined destroy of Any?(v232, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
      return 1;
    }

LABEL_96:
    outlined destroy of Any?(v232, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSg_ADtMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSg_ADtMR);
    return 0;
  }

  v220 = v232;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v232, v228, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
  if (v219(v220 + v216, 1, v231) == 1)
  {

    outlined destroy of Any?(v230, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v228, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
    goto LABEL_96;
  }

  v221 = v232;
  v222 = v232 + v216;
  v223 = v226;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v222, v226, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
  v224 = v228;
  v225 = specialized static CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking.== infix(_:_:)(v228, v223);

  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v223, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
  outlined destroy of Any?(v230, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v224, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
  outlined destroy of Any?(v221, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
  return (v225 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_Measurement(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Measurement and conformance CLP_LogEntry_PrivateData_Measurement, type metadata accessor for CLP_LogEntry_PrivateData_Measurement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_Measurement(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Measurement and conformance CLP_LogEntry_PrivateData_Measurement, type metadata accessor for CLP_LogEntry_PrivateData_Measurement);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_Measurement(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Measurement and conformance CLP_LogEntry_PrivateData_Measurement, type metadata accessor for CLP_LogEntry_PrivateData_Measurement);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_ReceiverClockModel.decodeMessage<A>(decoder:)()
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
        v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0) + 20);
LABEL_3:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularFloatField(value:)();
      }

      else if (result == 2)
      {
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0) + 24);
        goto LABEL_3;
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          v1 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0) + 28);
          goto LABEL_3;
        case 4:
          v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0) + 32);
          goto LABEL_3;
        case 5:
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0) + 36);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
      }
    }
  }
}

uint64_t CLP_LogEntry_PrivateData_ReceiverClockModel.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  v10 = result;
  v11 = v5 + *(result + 20);
  if (*(v11 + 4))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v12 = *v11;
    result = dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  v13 = v5 + v10[6];
  if ((*(v13 + 4) & 1) == 0)
  {
    v14 = *v13;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  v15 = v5 + v10[7];
  if ((*(v15 + 4) & 1) == 0)
  {
    v16 = *v15;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  v17 = v5 + v10[8];
  if ((*(v17 + 4) & 1) == 0)
  {
    v18 = *v17;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  closure #5 in CLP_LogEntry_PrivateData_GpsL2CSyncState.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_ReceiverClockModel@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  *(a2 + a1[9]) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_ReceiverClockModel(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceiverClockModel and conformance CLP_LogEntry_PrivateData_ReceiverClockModel, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_ReceiverClockModel(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceiverClockModel and conformance CLP_LogEntry_PrivateData_ReceiverClockModel, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_ReceiverClockModel(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceiverClockModel and conformance CLP_LogEntry_PrivateData_ReceiverClockModel, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_ReceiverClockCorrections.decodeMessage<A>(decoder:)()
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

      if (result <= 2)
      {
        if (result == 1)
        {
          v3 = v0;
          v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0) + 20);
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_15;
          }

          v3 = v0;
          v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0) + 24);
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v3 = v0;
            v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0) + 28);
            break;
          case 4:
            v3 = v0;
            v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0) + 32);
            break;
          case 5:
            v3 = v0;
            v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0) + 36);
            break;
          default:
            goto LABEL_15;
        }
      }

      v0 = v3;
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
LABEL_15:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_ReceiverClockCorrections.traverse<A>(visitor:)()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  v3 = result;
  v4 = v0 + *(result + 20);
  if (*(v4 + 8))
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

  v6 = v0 + v3[6];
  if ((*(v6 + 8) & 1) == 0)
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  v8 = v0 + v3[7];
  if ((*(v8 + 8) & 1) == 0)
  {
    v9 = *v8;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  v10 = v0 + v3[8];
  if ((*(v10 + 8) & 1) == 0)
  {
    v11 = *v10;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  closure #5 in CLP_LogEntry_PrivateData_ReceiverClockCorrections.traverse<A>(visitor:)(v0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #5 in CLP_LogEntry_PrivateData_ReceiverClockCorrections.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  v3 = (a1 + *(result + 36));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_ReceiverClockCorrections@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  v11 = a2 + a1[9];
  *v11 = 0;
  *(v11 + 8) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_ReceiverClockCorrections(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceiverClockCorrections and conformance CLP_LogEntry_PrivateData_ReceiverClockCorrections, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_ReceiverClockCorrections(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceiverClockCorrections and conformance CLP_LogEntry_PrivateData_ReceiverClockCorrections, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_ReceiverClockCorrections(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceiverClockCorrections and conformance CLP_LogEntry_PrivateData_ReceiverClockCorrections, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion.decodeMessage<A>(decoder:)()
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
        v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0) + 20);
        dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
      }

      else if (result == 2)
      {
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0) + 24);
LABEL_3:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularFloatField(value:)();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          v1 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0) + 28);
          goto LABEL_3;
        case 4:
          v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0) + 32);
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          break;
        case 5:
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0) + 36);
          goto LABEL_3;
      }
    }
  }
}

uint64_t CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
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
    result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  v13 = v5 + v10[6];
  if ((*(v13 + 4) & 1) == 0)
  {
    v14 = *v13;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  v15 = v5 + v10[7];
  if ((*(v15 + 4) & 1) == 0)
  {
    v16 = *v15;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  v17 = v5 + v10[8];
  if ((*(v17 + 8) & 1) == 0)
  {
    v18 = *v17;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  closure #5 in CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a2 + a1[9];
  *v11 = 0;
  *(v11 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion and conformance CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion and conformance CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion and conformance CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_Clock.decodeMessage<A>(decoder:)()
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

      if (result > 2)
      {
        if (result == 3)
        {
          v3 = v0;
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_Clock(0) + 28);
          type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
          v5 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections;
          v6 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceiverClockCorrections and conformance CLP_LogEntry_PrivateData_ReceiverClockCorrections;
LABEL_5:
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, v5);
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_6;
        }

        if (result == 4)
        {
          v3 = v0;
          v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_Clock(0) + 32);
          type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
          v5 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion;
          v6 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion and conformance CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion;
          goto LABEL_5;
        }
      }

      else if (result == 1)
      {
        v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_Clock(0) + 20);
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
      }

      else if (result == 2)
      {
        v3 = v0;
        v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_Clock(0) + 24);
        type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
        v5 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel;
        v6 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceiverClockModel and conformance CLP_LogEntry_PrivateData_ReceiverClockModel;
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_Clock.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  v10 = v5 + *(result + 20);
  if (*(v10 + 8))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v11 = *v10;
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  closure #2 in CLP_LogEntry_PrivateData_Clock.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #3 in CLP_LogEntry_PrivateData_Clock.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #4 in CLP_LogEntry_PrivateData_Clock.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #2 in CLP_LogEntry_PrivateData_Clock.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 24), v8, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceiverClockModel and conformance CLP_LogEntry_PrivateData_ReceiverClockModel, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);
}

uint64_t closure #3 in CLP_LogEntry_PrivateData_Clock.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 28), v8, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceiverClockCorrections and conformance CLP_LogEntry_PrivateData_ReceiverClockCorrections, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);
}

uint64_t closure #4 in CLP_LogEntry_PrivateData_Clock.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMd, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 32), v8, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMd, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMd, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion and conformance CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_Clock@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  (*(*(v6 - 8) + 56))(a2 + v4, 1, 1, v6);
  v7 = a1[7];
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v9 = a1[8];
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a2 + v9, 1, 1, v10);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_Clock(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Clock and conformance CLP_LogEntry_PrivateData_Clock, type metadata accessor for CLP_LogEntry_PrivateData_Clock);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_Clock(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Clock and conformance CLP_LogEntry_PrivateData_Clock, type metadata accessor for CLP_LogEntry_PrivateData_Clock);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_Clock(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Clock and conformance CLP_LogEntry_PrivateData_Clock, type metadata accessor for CLP_LogEntry_PrivateData_Clock);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_MeasurementReport._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clock;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measurements;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measurements) = MEMORY[0x277D84F90];
  v10 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clock;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v10, v6, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v1 + v7, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
  swift_endAccess();
  v11 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measurements;
  swift_beginAccess();
  v12 = *(a1 + v11);

  swift_beginAccess();
  v13 = *(v1 + v9);
  *(v1 + v9) = v12;

  return v1;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementReport._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clock, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measurements);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

uint64_t CLP_LogEntry_PrivateData_MeasurementReport.decodeMessage<A>(decoder:)()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    CLP_LogEntry_PrivateData_MeasurementReport._StorageClass.init(copying:)(v6);
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

      if (result == 1)
      {
        break;
      }

      if (result == 2)
      {
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Measurement and conformance CLP_LogEntry_PrivateData_Measurement, type metadata accessor for CLP_LogEntry_PrivateData_Measurement);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        goto LABEL_7;
      }

LABEL_8:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    swift_beginAccess();
    type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Clock and conformance CLP_LogEntry_PrivateData_Clock, type metadata accessor for CLP_LogEntry_PrivateData_Clock);
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_7:
    swift_endAccess();
    goto LABEL_8;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0) + 20));
  result = closure #1 in closure #1 in CLP_LogEntry_PrivateData_MeasurementReport.traverse<A>(visitor:)(v8, a1, a2, a3);
  if (!v4)
  {
    v10 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measurements;
    swift_beginAccess();
    if (*(*(v8 + v10) + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0);
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Measurement and conformance CLP_LogEntry_PrivateData_Measurement, type metadata accessor for CLP_LogEntry_PrivateData_Measurement);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in CLP_LogEntry_PrivateData_MeasurementReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clock;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_Clock);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Clock and conformance CLP_LogEntry_PrivateData_Clock, type metadata accessor for CLP_LogEntry_PrivateData_Clock);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_Clock);
}

uint64_t closure #1 in static CLP_LogEntry_PrivateData_MeasurementReport.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  MEMORY[0x28223BE20](v4);
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSg_ADtMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSg_ADtMR);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v40 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v38 - v16;
  v18 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clock;
  swift_beginAccess();
  v19 = a1 + v18;
  v20 = a1;
  v21 = v41;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v19, v17, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
  v22 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clock;
  swift_beginAccess();
  v23 = *(v8 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v17, v11, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
  v24 = a2 + v22;
  v25 = a2;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v24, &v11[v23], &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
  v26 = *(v21 + 48);
  if (v26(v11, 1, v4) == 1)
  {

    outlined destroy of Any?(v17, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
    if (v26(&v11[v23], 1, v4) == 1)
    {
      outlined destroy of Any?(v11, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
LABEL_9:
      v31 = v25;
      v32 = v20;
      v33 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measurements;
      swift_beginAccess();
      v34 = *(v32 + v33);
      v35 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measurements;
      swift_beginAccess();
      v36 = *(v31 + v35);

      v28 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementV_Tt1g5Tm(v34, v36, type metadata accessor for CLP_LogEntry_PrivateData_Measurement, type metadata accessor for CLP_LogEntry_PrivateData_Measurement, closure #1 in static CLP_LogEntry_PrivateData_Measurement.== infix(_:_:));

      return v28 & 1;
    }

    goto LABEL_6;
  }

  v27 = v40;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v11, v40, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
  if (v26(&v11[v23], 1, v4) == 1)
  {

    outlined destroy of Any?(v17, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v27, type metadata accessor for CLP_LogEntry_PrivateData_Clock);
LABEL_6:
    outlined destroy of Any?(v11, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSg_ADtMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSg_ADtMR);
    goto LABEL_7;
  }

  v29 = v39;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v11[v23], v39, type metadata accessor for CLP_LogEntry_PrivateData_Clock);

  v30 = specialized static CLP_LogEntry_PrivateData_Clock.== infix(_:_:)(v27, v29);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v29, type metadata accessor for CLP_LogEntry_PrivateData_Clock);
  outlined destroy of Any?(v17, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v27, type metadata accessor for CLP_LogEntry_PrivateData_Clock);
  outlined destroy of Any?(v11, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
  if (v30)
  {
    goto LABEL_9;
  }

LABEL_7:

  v28 = 0;
  return v28 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_MeasurementReport(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementReport and conformance CLP_LogEntry_PrivateData_MeasurementReport, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_MeasurementReport(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementReport and conformance CLP_LogEntry_PrivateData_MeasurementReport, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MeasurementReport(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementReport and conformance CLP_LogEntry_PrivateData_MeasurementReport, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_Wgs84Ecef(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Wgs84Ecef and conformance CLP_LogEntry_PrivateData_Wgs84Ecef, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_Wgs84Ecef(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Wgs84Ecef and conformance CLP_LogEntry_PrivateData_Wgs84Ecef, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_Wgs84Ecef(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Wgs84Ecef and conformance CLP_LogEntry_PrivateData_Wgs84Ecef, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_SvBandCorrections.decodeMessage<A>(decoder:)()
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

      if (result <= 2)
      {
        if (result == 1)
        {
          v5 = v0;
          v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0) + 20);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_Band and conformance CLP_LogEntry_PrivateData_Band();
          goto LABEL_18;
        }

        if (result == 2)
        {
          v3 = v0;
          v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0) + 24);
          goto LABEL_5;
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v3 = v0;
            v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0) + 28);
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
            break;
          case 4:
            v3 = v0;
            v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0) + 32);
            goto LABEL_5;
          case 5:
            v5 = v0;
            v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0) + 36);
            lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_IonosphericCorrectionSource and conformance CLP_LogEntry_PrivateData_IonosphericCorrectionSource();
LABEL_18:
            v0 = v5;
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_SvBandCorrections.traverse<A>(visitor:)()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
  v3 = result;
  if (*(v0 + *(result + 20)) == 13)
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v10 = *(v0 + *(result + 20));
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_Band and conformance CLP_LogEntry_PrivateData_Band();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  v4 = v0 + v3[6];
  if ((*(v4 + 8) & 1) == 0)
  {
    v5 = *v4;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  v6 = v0 + v3[7];
  if ((*(v6 + 8) & 1) == 0)
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  v8 = v0 + v3[8];
  if ((*(v8 + 8) & 1) == 0)
  {
    v9 = *v8;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  closure #5 in CLP_LogEntry_PrivateData_SvBandCorrections.traverse<A>(visitor:)(v0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #5 in CLP_LogEntry_PrivateData_SvBandCorrections.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
  if (*(a1 + *(result + 36)) != 3)
  {
    v3 = *(a1 + *(result + 36));
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_IonosphericCorrectionSource and conformance CLP_LogEntry_PrivateData_IonosphericCorrectionSource();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_SvBandCorrections@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 13;
  v6 = a2 + v5;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 8) = 1;
  *(a2 + a1[9]) = 3;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_SvBandCorrections(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvBandCorrections and conformance CLP_LogEntry_PrivateData_SvBandCorrections, type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_SvBandCorrections(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvBandCorrections and conformance CLP_LogEntry_PrivateData_SvBandCorrections, type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_SvBandCorrections(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvBandCorrections and conformance CLP_LogEntry_PrivateData_SvBandCorrections, type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_SvPositionAtTime.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0) + 20);
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }

      else if (result == 2)
      {
        v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0) + 24);
        type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Wgs84Ecef and conformance CLP_LogEntry_PrivateData_Wgs84Ecef, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_SvPositionAtTime.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0);
  v10 = v5 + *(result + 20);
  if (*(v10 + 8))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v11 = *v10;
    result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  closure #2 in CLP_LogEntry_PrivateData_SvPositionAtTime.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #2 in CLP_LogEntry_PrivateData_SvPositionAtTime.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 24), v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Wgs84Ecef and conformance CLP_LogEntry_PrivateData_Wgs84Ecef, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_SvPositionAtTime@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = *(a1 + 24);
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v5, 1, 1, v7);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_SvPositionAtTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvPositionAtTime and conformance CLP_LogEntry_PrivateData_SvPositionAtTime, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_SvPositionAtTime(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvPositionAtTime and conformance CLP_LogEntry_PrivateData_SvPositionAtTime, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_SvPositionAtTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvPositionAtTime and conformance CLP_LogEntry_PrivateData_SvPositionAtTime, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_PolynomialOrbit.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result <= 3)
    {
      if (result == 2)
      {
        v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0) + 32);
LABEL_15:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }

      else if (result == 3)
      {
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0) + 36);
        goto LABEL_15;
      }
    }

    else if (result == 4 || result == 5 || result == 6)
    {
      dispatch thunk of Decoder.decodeRepeatedDoubleField(value:)();
    }
  }
}

uint64_t CLP_LogEntry_PrivateData_PolynomialOrbit.traverse<A>(visitor:)()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
  v3 = result;
  v4 = v0 + *(result + 32);
  if (v4[8])
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

  v6 = v0 + *(v3 + 36);
  if ((v6[8] & 1) == 0)
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if (*(*v0 + 16))
  {
    dispatch thunk of Visitor.visitRepeatedDoubleField(value:fieldNumber:)();
  }

  if (*(v0[1] + 16))
  {
    dispatch thunk of Visitor.visitRepeatedDoubleField(value:fieldNumber:)();
  }

  if (*(v0[2] + 16))
  {
    dispatch thunk of Visitor.visitRepeatedDoubleField(value:fieldNumber:)();
  }

  v8 = v0 + *(v3 + 28);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_PolynomialOrbit@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v4;
  a2[2] = v4;
  v5 = a2 + a1[7];
  result = UnknownStorage.init()();
  v7 = a1[9];
  v8 = a2 + a1[8];
  *v8 = 0;
  v8[8] = 1;
  v9 = a2 + v7;
  *v9 = 0;
  v9[8] = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_PolynomialOrbit(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PolynomialOrbit and conformance CLP_LogEntry_PrivateData_PolynomialOrbit, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_PolynomialOrbit(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PolynomialOrbit and conformance CLP_LogEntry_PrivateData_PolynomialOrbit, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_PolynomialOrbit(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PolynomialOrbit and conformance CLP_LogEntry_PrivateData_PolynomialOrbit, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_SvInfo._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__anchorPositions);

  v2 = *(v0 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svBandCorrections);

  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t CLP_LogEntry_PrivateData_SvInfo.decodeMessage<A>(decoder:)()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_SvInfo._StorageClass.init(copying:)(v6);

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
          v13 = v1;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
          v14 = type metadata accessor for CLP_LogEntry_PrivateData_SvId;
          v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvId and conformance CLP_LogEntry_PrivateData_SvId;
          goto LABEL_15;
        case 2:
        case 5:
        case 6:
        case 7:
        case 23:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_19;
        case 3:
          v16 = v1;
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvPositionSource and conformance CLP_LogEntry_PrivateData_SvPositionSource();
          goto LABEL_18;
        case 4:
          v17 = v1;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0);
          v18 = type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime;
          v19 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvPositionAtTime and conformance CLP_LogEntry_PrivateData_SvPositionAtTime;
          goto LABEL_13;
        case 8:
        case 9:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
          goto LABEL_19;
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
        case 18:
        case 19:
        case 20:
        case 21:
        case 22:
          v16 = v1;
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication();
          goto LABEL_18;
        case 15:
          v17 = v1;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
          v18 = type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections;
          v19 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvBandCorrections and conformance CLP_LogEntry_PrivateData_SvBandCorrections;
LABEL_13:
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(v19, v18);
          v1 = v17;
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_19;
        case 16:
          v13 = v1;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
          v14 = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit;
          v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PolynomialOrbit and conformance CLP_LogEntry_PrivateData_PolynomialOrbit;
LABEL_15:
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v14);
          v1 = v13;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_19;
        case 24:
          v16 = v1;
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvReferencePoint and conformance CLP_LogEntry_PrivateData_SvReferencePoint();
LABEL_18:
          v1 = v16;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
LABEL_19:
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

uint64_t CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20));
  result = closure #1 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v8, a1, a2, a3);
  if (!v4)
  {
    v10 = v8 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__referenceTimeNanoseconds;
    swift_beginAccess();
    if ((*(v10 + 8) & 1) == 0)
    {
      v11 = *v10;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v12 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__positionSource;
    swift_beginAccess();
    if (*(v8 + v12) != 7)
    {
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvPositionSource and conformance CLP_LogEntry_PrivateData_SvPositionSource();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    v13 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__anchorPositions;
    swift_beginAccess();
    if (*(*(v8 + v13) + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0);
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvPositionAtTime and conformance CLP_LogEntry_PrivateData_SvPositionAtTime, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v14 = v8 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockBiasCorrectionNanoseconds;
    swift_beginAccess();
    if ((*(v14 + 8) & 1) == 0)
    {
      v15 = *v14;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v16 = v8 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyCorrectionPpb;
    swift_beginAccess();
    if ((*(v16 + 8) & 1) == 0)
    {
      v17 = *v16;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v18 = v8 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyChangeCorrectionPpbPerSec;
    swift_beginAccess();
    if ((*(v18 + 8) & 1) == 0)
    {
      v19 = *v18;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    closure #12 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyPositionM);
    closure #12 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyClockNanoseconds);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL1, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL1, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL1, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL1, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL1, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication);
    v20 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svBandCorrections;
    swift_beginAccess();
    if (*(*(v8 + v20) + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvBandCorrections and conformance CLP_LogEntry_PrivateData_SvBandCorrections, type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    closure #14 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL5, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL5, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL5, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL5, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL5, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyAccelCorrectionPpbPerSecPerSec);
    closure #21 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v8);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvId and conformance CLP_LogEntry_PrivateData_SvId, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
}

uint64_t closure #12 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = (a1 + *a5);
  result = swift_beginAccess();
  if ((v5[1] & 1) == 0)
  {
    v7 = *v5;
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #14 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PolynomialOrbit and conformance CLP_LogEntry_PrivateData_PolynomialOrbit, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
}

uint64_t closure #11 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t))
{
  v8 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v8) != 5)
  {
    v10 = *(a1 + v8);
    a6(result);
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #21 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svReferencePoint;
  result = swift_beginAccess();
  if (*(a1 + v2) != 4)
  {
    v4 = *(a1 + v2);
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvReferencePoint and conformance CLP_LogEntry_PrivateData_SvReferencePoint();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

BOOL closure #1 in static CLP_LogEntry_PrivateData_SvInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v155 = a2;
  v150 = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
  v148 = *(v150 - 8);
  v3 = *(v148 + 64);
  MEMORY[0x28223BE20](v150);
  v145 = (&v145 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSg_ADtMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSg_ADtMR);
  v5 = *(*(v147 - 8) + 64);
  MEMORY[0x28223BE20](v147);
  v151 = &v145 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v146 = (&v145 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v149 = &v145 - v11;
  v154 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v12 = *(v154 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v154);
  v152 = &v145 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSg_ADtMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSg_ADtMR);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v145 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v153 = &v145 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v145 - v24;
  v26 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  v27 = a1 + v26;
  v28 = v155;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v27, v25, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v29 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  v30 = *(v16 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v25, v19, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v31 = v154;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v28 + v29, &v19[v30], &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v32 = *(v12 + 48);
  if (v32(v19, 1, v31) == 1)
  {

    outlined destroy of Any?(v25, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
    if (v32(&v19[v30], 1, v31) == 1)
    {
      outlined destroy of Any?(v19, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
      goto LABEL_11;
    }

LABEL_6:
    outlined destroy of Any?(v19, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSg_ADtMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSg_ADtMR);
    goto LABEL_7;
  }

  v33 = v153;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v19, v153, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  if (v32(&v19[v30], 1, v31) == 1)
  {

    outlined destroy of Any?(v25, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v33, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
    goto LABEL_6;
  }

  v35 = v152;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v19[v30], v152, type metadata accessor for CLP_LogEntry_PrivateData_SvId);

  v36 = specialized static CLP_LogEntry_PrivateData_SvId.== infix(_:_:)(v33, v35);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v35, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  outlined destroy of Any?(v25, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v33, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  outlined destroy of Any?(v19, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  if ((v36 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  v37 = a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__referenceTimeNanoseconds;
  swift_beginAccess();
  v38 = *v37;
  v39 = *(v37 + 8);
  v40 = v28 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__referenceTimeNanoseconds;
  swift_beginAccess();
  v41 = *(v40 + 8);
  if (v39)
  {
    if ((*(v40 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v40 + 8) & 1) != 0 || v38 != *v40)
  {
    goto LABEL_7;
  }

  v42 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__positionSource;
  swift_beginAccess();
  v43 = *(a1 + v42);
  v44 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__positionSource;
  swift_beginAccess();
  v45 = *(v28 + v44);
  if (v43 == 7)
  {
    if (v45 != 7)
    {
      goto LABEL_7;
    }
  }

  else if (v45 == 7 || v43 != v45)
  {
    goto LABEL_7;
  }

  v46 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__anchorPositions;
  swift_beginAccess();
  v47 = *(a1 + v46);
  v48 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__anchorPositions;
  swift_beginAccess();
  v49 = *(v28 + v48);

  v50 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf41CLP_LogEntry_PrivateData_SvPositionAtTimeV_Tt1g5(v47, v49);

  if ((v50 & 1) == 0)
  {
    goto LABEL_7;
  }

  v51 = a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockBiasCorrectionNanoseconds;
  swift_beginAccess();
  v52 = *v51;
  v53 = *(v51 + 8);
  v54 = v28 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockBiasCorrectionNanoseconds;
  swift_beginAccess();
  v55 = *(v54 + 8);
  if (v53)
  {
    if ((*(v54 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v54 + 8) & 1) != 0 || v52 != *v54)
  {
    goto LABEL_7;
  }

  v56 = a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyCorrectionPpb;
  swift_beginAccess();
  v57 = *v56;
  v58 = *(v56 + 8);
  v59 = v28 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyCorrectionPpb;
  swift_beginAccess();
  v60 = *(v59 + 8);
  if (v58)
  {
    if ((*(v59 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v59 + 8) & 1) != 0 || v57 != *v59)
  {
    goto LABEL_7;
  }

  v61 = a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyChangeCorrectionPpbPerSec;
  swift_beginAccess();
  v62 = *v61;
  v63 = *(v61 + 8);
  v64 = v28 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyChangeCorrectionPpbPerSec;
  swift_beginAccess();
  v65 = *(v64 + 8);
  if (v63)
  {
    if ((*(v64 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v64 + 8) & 1) != 0 || v62 != *v64)
  {
    goto LABEL_7;
  }

  v66 = a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyPositionM;
  swift_beginAccess();
  v67 = *v66;
  v68 = *(v66 + 4);
  v69 = v28 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyPositionM;
  swift_beginAccess();
  v70 = *(v69 + 4);
  if (v68)
  {
    if ((*(v69 + 4) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v69 + 4) & 1) != 0 || v67 != *v69)
  {
    goto LABEL_7;
  }

  v71 = a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyClockNanoseconds;
  swift_beginAccess();
  v72 = *v71;
  v73 = *(v71 + 4);
  v74 = v28 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyClockNanoseconds;
  swift_beginAccess();
  v75 = *(v74 + 4);
  if (v73)
  {
    if ((*(v74 + 4) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v74 + 4) & 1) != 0 || v72 != *v74)
  {
    goto LABEL_7;
  }

  v76 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL1;
  swift_beginAccess();
  v77 = *(a1 + v76);
  v78 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL1;
  swift_beginAccess();
  v79 = *(v28 + v78);
  if (v77 == 5)
  {
    if (v79 == 5)
    {
      goto LABEL_52;
    }

LABEL_7:

    return 0;
  }

  if (v79 == 5 || v77 != v79)
  {
    goto LABEL_7;
  }

LABEL_52:
  v80 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL1;
  swift_beginAccess();
  v81 = a1;
  v82 = *(a1 + v80);
  v83 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL1;
  swift_beginAccess();
  v84 = *(v28 + v83);
  if (v82 == 5)
  {
    if (v84 != 5)
    {
      goto LABEL_7;
    }
  }

  else if (v84 == 5 || v82 != v84)
  {
    goto LABEL_7;
  }

  v85 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL1;
  swift_beginAccess();
  v86 = *(a1 + v85);
  v87 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL1;
  swift_beginAccess();
  v88 = *(v28 + v87);
  if (v86 == 5)
  {
    if (v88 != 5)
    {
      goto LABEL_7;
    }
  }

  else if (v88 == 5 || v86 != v88)
  {
    goto LABEL_7;
  }

  v89 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL1;
  swift_beginAccess();
  v90 = *(a1 + v89);
  v91 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL1;
  swift_beginAccess();
  v92 = *(v28 + v91);
  if (v90 == 5)
  {
    if (v92 != 5)
    {
      goto LABEL_7;
    }
  }

  else if (v92 == 5 || v90 != v92)
  {
    goto LABEL_7;
  }

  v93 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL1;
  swift_beginAccess();
  v94 = *(a1 + v93);
  v95 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL1;
  swift_beginAccess();
  v96 = *(v28 + v95);
  if (v94 == 5)
  {
    if (v96 != 5)
    {
      goto LABEL_7;
    }
  }

  else if (v96 == 5 || v94 != v96)
  {
    goto LABEL_7;
  }

  v97 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svBandCorrections;
  swift_beginAccess();
  v98 = *(a1 + v97);
  v99 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svBandCorrections;
  swift_beginAccess();
  v100 = *(v28 + v99);

  v101 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf42CLP_LogEntry_PrivateData_SvBandCorrectionsV_Tt1g5(v98, v100);

  if ((v101 & 1) == 0)
  {
    goto LABEL_7;
  }

  v102 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit;
  swift_beginAccess();
  v103 = a1 + v102;
  v104 = v149;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v103, v149, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
  v105 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit;
  swift_beginAccess();
  v106 = *(v147 + 48);
  v107 = v104;
  v108 = v151;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v107, v151, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v28 + v105, v108 + v106, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
  v109 = *(v148 + 48);
  if (v109(v108, 1, v150) == 1)
  {
    outlined destroy of Any?(v149, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
    if (v109(v151 + v106, 1, v150) == 1)
    {
      outlined destroy of Any?(v151, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
      goto LABEL_81;
    }

LABEL_78:
    outlined destroy of Any?(v151, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSg_ADtMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSg_ADtMR);
    goto LABEL_7;
  }

  v110 = v151;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v151, v146, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
  if (v109(v110 + v106, 1, v150) == 1)
  {
    outlined destroy of Any?(v149, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v146, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
    goto LABEL_78;
  }

  v111 = v151;
  v112 = v151 + v106;
  v113 = v145;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v112, v145, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
  v114 = v146;
  v115 = specialized static CLP_LogEntry_PrivateData_PolynomialOrbit.== infix(_:_:)(v146, v113);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v113, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
  outlined destroy of Any?(v149, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v114, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
  outlined destroy of Any?(v111, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
  if ((v115 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_81:
  v116 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL5;
  swift_beginAccess();
  v117 = *(v81 + v116);
  v118 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL5;
  swift_beginAccess();
  v119 = *(v28 + v118);
  if (v117 == 5)
  {
    if (v119 != 5)
    {
      goto LABEL_7;
    }
  }

  else if (v119 == 5 || v117 != v119)
  {
    goto LABEL_7;
  }

  v120 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL5;
  swift_beginAccess();
  v121 = *(v81 + v120);
  v122 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL5;
  swift_beginAccess();
  v123 = *(v28 + v122);
  if (v121 == 5)
  {
    if (v123 != 5)
    {
      goto LABEL_7;
    }
  }

  else if (v123 == 5 || v121 != v123)
  {
    goto LABEL_7;
  }

  v124 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL5;
  swift_beginAccess();
  v125 = *(v81 + v124);
  v126 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL5;
  swift_beginAccess();
  v127 = *(v28 + v126);
  if (v125 == 5)
  {
    if (v127 != 5)
    {
      goto LABEL_7;
    }
  }

  else if (v127 == 5 || v125 != v127)
  {
    goto LABEL_7;
  }

  v128 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL5;
  swift_beginAccess();
  v129 = *(v81 + v128);
  v130 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL5;
  swift_beginAccess();
  v131 = *(v28 + v130);
  if (v129 == 5)
  {
    if (v131 != 5)
    {
      goto LABEL_7;
    }
  }

  else if (v131 == 5 || v129 != v131)
  {
    goto LABEL_7;
  }

  v132 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL5;
  swift_beginAccess();
  v133 = *(v81 + v132);
  v134 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL5;
  swift_beginAccess();
  v135 = *(v28 + v134);
  if (v133 == 5)
  {
    if (v135 != 5)
    {
      goto LABEL_7;
    }
  }

  else if (v135 == 5 || v133 != v135)
  {
    goto LABEL_7;
  }

  v136 = v81 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyAccelCorrectionPpbPerSecPerSec;
  swift_beginAccess();
  v137 = *v136;
  v138 = *(v136 + 8);
  v139 = v28 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyAccelCorrectionPpbPerSecPerSec;
  swift_beginAccess();
  v140 = *(v139 + 8);
  if (v138)
  {
    if ((*(v139 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v139 + 8) & 1) != 0 || v137 != *v139)
  {
    goto LABEL_7;
  }

  v141 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svReferencePoint;
  swift_beginAccess();
  v142 = *(v81 + v141);

  v143 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svReferencePoint;
  swift_beginAccess();
  v144 = *(v28 + v143);

  if (v142 == 4)
  {
    return v144 == 4;
  }

  result = 0;
  if (v144 != 4 && v142 == v144)
  {
    return 1;
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_SvInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvInfo and conformance CLP_LogEntry_PrivateData_SvInfo, type metadata accessor for CLP_LogEntry_PrivateData_SvInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_SvInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvInfo and conformance CLP_LogEntry_PrivateData_SvInfo, type metadata accessor for CLP_LogEntry_PrivateData_SvInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_SvInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvInfo and conformance CLP_LogEntry_PrivateData_SvInfo, type metadata accessor for CLP_LogEntry_PrivateData_SvInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_ReceiverBandCorrections.decodeMessage<A>(decoder:)()
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

      if (result > 2)
      {
        if (result == 3)
        {
          v5 = v0;
          v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0) + 28);
        }

        else
        {
          if (result != 4)
          {
            goto LABEL_5;
          }

          v5 = v0;
          v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0) + 32);
        }

        v0 = v5;
        dispatch thunk of Decoder.decodeSingularFloatField(value:)();
      }

      else if (result == 1)
      {
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0) + 20);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_Band and conformance CLP_LogEntry_PrivateData_Band();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0) + 24);
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_ReceiverBandCorrections.traverse<A>(visitor:)()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0);
  v3 = result;
  if (*(v0 + *(result + 20)) == 13)
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v10 = *(v0 + *(result + 20));
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_Band and conformance CLP_LogEntry_PrivateData_Band();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  v4 = (v0 + v3[6]);
  if ((v4[1] & 1) == 0)
  {
    v5 = *v4;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  v6 = (v0 + v3[7]);
  if ((v6[1] & 1) == 0)
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  v8 = (v0 + v3[8]);
  if ((v8[1] & 1) == 0)
  {
    v9 = *v8;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_ReceiverBandCorrections@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 13;
  v6 = a2 + v5;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_ReceiverBandCorrections(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceiverBandCorrections and conformance CLP_LogEntry_PrivateData_ReceiverBandCorrections, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_ReceiverBandCorrections(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceiverBandCorrections and conformance CLP_LogEntry_PrivateData_ReceiverBandCorrections, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_ReceiverBandCorrections(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceiverBandCorrections and conformance CLP_LogEntry_PrivateData_ReceiverBandCorrections, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_LeapSecondChange.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v1 = *(type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0) + 20);
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }

    else if (result == 2)
    {
      v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0) + 24);
      dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_LeapSecondChange.traverse<A>(visitor:)()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
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
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  v6 = (v0 + *(v3 + 24));
  if ((v6[1] & 1) == 0)
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_LeapSecondChange@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = *(a1 + 24);
  v6 = a2 + *(a1 + 20);
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_LeapSecondChange(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondChange and conformance CLP_LogEntry_PrivateData_LeapSecondChange, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_LeapSecondChange(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondChange and conformance CLP_LogEntry_PrivateData_LeapSecondChange, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_LeapSecondChange(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondChange and conformance CLP_LogEntry_PrivateData_LeapSecondChange, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_LeapSecondInfo.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0) + 28);
          type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondChange and conformance CLP_LogEntry_PrivateData_LeapSecondChange, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
        case 2:
          v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0) + 24);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge and conformance CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        case 1:
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0) + 20);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_LeapSecondInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
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

  if (*(v5 + *(v10 + 24)) != 5)
  {
    v13 = *(v5 + *(v10 + 24));
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge and conformance CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  closure #3 in CLP_LogEntry_PrivateData_LeapSecondInfo.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #3 in CLP_LogEntry_PrivateData_LeapSecondInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 28), v8, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondChange and conformance CLP_LogEntry_PrivateData_LeapSecondChange, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_LeapSecondInfo@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  *(a2 + v4) = 5;
  v6 = a1[7];
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_LeapSecondInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondInfo and conformance CLP_LogEntry_PrivateData_LeapSecondInfo, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_LeapSecondInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondInfo and conformance CLP_LogEntry_PrivateData_LeapSecondInfo, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_LeapSecondInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondInfo and conformance CLP_LogEntry_PrivateData_LeapSecondInfo, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_GpsToUtcConversion.decodeMessage<A>(decoder:)()
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
        v1 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0) + 28);
        goto LABEL_3;
      }

      if (result == 4)
      {
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0) + 32);
LABEL_3:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }
    }

    else if (result == 1)
    {
      v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0) + 20);
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }

    else if (result == 2)
    {
      v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0) + 24);
      goto LABEL_3;
    }
  }
}

uint64_t CLP_LogEntry_PrivateData_GpsToUtcConversion.traverse<A>(visitor:)()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
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
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
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

  v8 = (v0 + v3[7]);
  if ((v8[1] & 1) == 0)
  {
    v9 = *v8;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  v10 = (v0 + v3[8]);
  if ((v10[1] & 1) == 0)
  {
    v11 = *v10;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_GpsToUtcConversion@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GpsToUtcConversion(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsToUtcConversion and conformance CLP_LogEntry_PrivateData_GpsToUtcConversion, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GpsToUtcConversion(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsToUtcConversion and conformance CLP_LogEntry_PrivateData_GpsToUtcConversion, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GpsToUtcConversion(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsToUtcConversion and conformance CLP_LogEntry_PrivateData_GpsToUtcConversion, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_GpsTimeInfo.decodeMessage<A>(decoder:)()
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
        v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0) + 24);
        type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
        v5 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo;
        v6 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondInfo and conformance CLP_LogEntry_PrivateData_LeapSecondInfo;
LABEL_5:
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, v5);
        v0 = v3;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        goto LABEL_6;
      }

      if (result == 1)
      {
        v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0) + 20);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v3 = v0;
    v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0) + 28);
    type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
    v5 = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion;
    v6 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsToUtcConversion and conformance CLP_LogEntry_PrivateData_GpsToUtcConversion;
    goto LABEL_5;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GpsTimeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  v10 = (v5 + *(result + 20));
  if (v10[1])
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v11 = *v10;
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  closure #2 in CLP_LogEntry_PrivateData_GpsTimeInfo.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #3 in CLP_LogEntry_PrivateData_GpsTimeInfo.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #2 in CLP_LogEntry_PrivateData_GpsTimeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 24), v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondInfo and conformance CLP_LogEntry_PrivateData_LeapSecondInfo, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
}

uint64_t closure #3 in CLP_LogEntry_PrivateData_GpsTimeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 28), v8, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsToUtcConversion and conformance CLP_LogEntry_PrivateData_GpsToUtcConversion, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_GpsTimeInfo@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  (*(*(v6 - 8) + 56))(a2 + v4, 1, 1, v6);
  v7 = a1[7];
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GpsTimeInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsTimeInfo and conformance CLP_LogEntry_PrivateData_GpsTimeInfo, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GpsTimeInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsTimeInfo and conformance CLP_LogEntry_PrivateData_GpsTimeInfo, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GpsTimeInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsTimeInfo and conformance CLP_LogEntry_PrivateData_GpsTimeInfo, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_GlonassSubsecondConversion.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v1 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0) + 20);
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }

    else if (result == 2)
    {
      v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0) + 24);
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GlonassSubsecondConversion.traverse<A>(visitor:)()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
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
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  v6 = (v0 + *(v3 + 24));
  if ((v6[1] & 1) == 0)
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_GlonassSubsecondConversion@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = *(a1 + 24);
  v6 = a2 + *(a1 + 20);
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GlonassSubsecondConversion(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSubsecondConversion and conformance CLP_LogEntry_PrivateData_GlonassSubsecondConversion, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GlonassSubsecondConversion(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSubsecondConversion and conformance CLP_LogEntry_PrivateData_GlonassSubsecondConversion, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GlonassSubsecondConversion(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSubsecondConversion and conformance CLP_LogEntry_PrivateData_GlonassSubsecondConversion, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_GlonassTimeInfo.decodeMessage<A>(decoder:)()
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

      if (result <= 2)
      {
        if (result == 1)
        {
          v6 = v0;
          v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0) + 20);
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

          v6 = v0;
          v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0) + 24);
        }

        v0 = v6;
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else
      {
        switch(result)
        {
          case 3:
            v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0) + 28);
            lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated and conformance CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            goto LABEL_5;
          case 4:
            v4 = v0;
            v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0) + 32);
            break;
          case 5:
            v4 = v0;
            v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0) + 36);
            break;
          default:
            goto LABEL_5;
        }

        type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSubsecondConversion and conformance CLP_LogEntry_PrivateData_GlonassSubsecondConversion, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
        v0 = v4;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GlonassTimeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
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

  v13 = (v5 + *(v10 + 24));
  if ((v13[1] & 1) == 0)
  {
    v14 = *v13;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if (*(v5 + *(v10 + 28)) != 6)
  {
    v15 = *(v5 + *(v10 + 28));
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated and conformance CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  closure #4 in CLP_LogEntry_PrivateData_GlonassTimeInfo.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #5 in CLP_LogEntry_PrivateData_GlonassTimeInfo.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #4 in CLP_LogEntry_PrivateData_GlonassTimeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 32), v8, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSubsecondConversion and conformance CLP_LogEntry_PrivateData_GlonassSubsecondConversion, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
}

uint64_t closure #5 in CLP_LogEntry_PrivateData_GlonassTimeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 36), v8, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSubsecondConversion and conformance CLP_LogEntry_PrivateData_GlonassSubsecondConversion, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_GlonassTimeInfo@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[8];
  *(a2 + a1[7]) = 6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v11 = *(*(v8 - 8) + 56);
  (v11)((v8 - 8), a2 + v7, 1, 1, v8);
  v9 = a2 + a1[9];

  return v11(v9, 1, 1, v8);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GlonassTimeInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassTimeInfo and conformance CLP_LogEntry_PrivateData_GlonassTimeInfo, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GlonassTimeInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassTimeInfo and conformance CLP_LogEntry_PrivateData_GlonassTimeInfo, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GlonassTimeInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassTimeInfo and conformance CLP_LogEntry_PrivateData_GlonassTimeInfo, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_Wgs84Ecef.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v6 || (v13 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v15 = *(a4(0) + 28);
LABEL_3:
        v6 = 0;
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        break;
      case 2:
        v11 = *(a4(0) + 24);
        goto LABEL_3;
      case 1:
        v14 = a4(0);
        a5(v5 + *(v14 + 20), a2, a3);
        break;
    }
  }
}

uint64_t CLP_LogEntry_PrivateData_SubSecondConversion.traverse<A>(visitor:)()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
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
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  v6 = (v0 + *(v3 + 24));
  if ((v6[1] & 1) == 0)
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  v8 = (v0 + *(v3 + 28));
  if ((v8[1] & 1) == 0)
  {
    v9 = *v8;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_SubSecondConversion(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SubSecondConversion and conformance CLP_LogEntry_PrivateData_SubSecondConversion, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_SubSecondConversion(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SubSecondConversion and conformance CLP_LogEntry_PrivateData_SubSecondConversion, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_SubSecondConversion(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SubSecondConversion and conformance CLP_LogEntry_PrivateData_SubSecondConversion, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v26 - v9;
  *(v1 + 16) = 0;
  *(v1 + 20) = 1;
  v11 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v15 = *(*(v14 - 8) + 56);
  v15(v1 + v13, 1, 1, v14);
  v26 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion;
  v15(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion, 1, 1, v14);
  v27 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion;
  v15(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion, 1, 1, v14);
  v28 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated;
  v15(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated, 1, 1, v14);
  swift_beginAccess();
  v16 = *(a1 + 16);
  LOBYTE(v15) = *(a1 + 20);
  swift_beginAccess();
  *(v1 + 16) = v16;
  *(v1 + 20) = v15;
  v17 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v17, v10, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v10, v1 + v11, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  swift_endAccess();
  v18 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v18, v6, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v1 + v13, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  swift_endAccess();
  v19 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v19, v6, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v20 = v26;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v1 + v20, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  swift_endAccess();
  v21 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v21, v6, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v22 = v27;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v1 + v22, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  swift_endAccess();
  v23 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v23, v6, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);

  v24 = v28;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v1 + v24, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  swift_endAccess();
  return v1;
}

uint64_t CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t CLP_LogEntry_PrivateData_BeidouTimeInfo.decodeMessage<A>(decoder:)()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v6);
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

      if (result <= 3)
      {
        break;
      }

      if (result == 4 || result == 5 || result == 6)
      {
        goto LABEL_18;
      }

LABEL_21:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result == 1)
    {
      swift_beginAccess();
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }

    else
    {
      if (result == 2)
      {
        v13 = v1;
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
        v14 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo;
        v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondInfo and conformance CLP_LogEntry_PrivateData_LeapSecondInfo;
      }

      else
      {
        if (result != 3)
        {
          goto LABEL_21;
        }

LABEL_18:
        v13 = v1;
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
        v14 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion;
        v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SubSecondConversion and conformance CLP_LogEntry_PrivateData_SubSecondConversion;
      }

      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v14);
      v1 = v13;
      dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    }

    swift_endAccess();
    goto LABEL_21;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_BeidouTimeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 20))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v11 = *(v9 + 16);
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  closure #2 in closure #1 in CLP_LogEntry_PrivateData_BeidouTimeInfo.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #3 in closure #1 in CLP_LogEntry_PrivateData_BeidouTimeInfo.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #4 in closure #1 in CLP_LogEntry_PrivateData_BeidouTimeInfo.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #5 in closure #1 in CLP_LogEntry_PrivateData_BeidouTimeInfo.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #6 in closure #1 in CLP_LogEntry_PrivateData_BeidouTimeInfo.traverse<A>(visitor:)(v9, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #2 in closure #1 in CLP_LogEntry_PrivateData_BeidouTimeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondInfo and conformance CLP_LogEntry_PrivateData_LeapSecondInfo, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
}

uint64_t closure #3 in closure #1 in CLP_LogEntry_PrivateData_BeidouTimeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SubSecondConversion and conformance CLP_LogEntry_PrivateData_SubSecondConversion, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
}

uint64_t closure #4 in closure #1 in CLP_LogEntry_PrivateData_BeidouTimeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SubSecondConversion and conformance CLP_LogEntry_PrivateData_SubSecondConversion, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
}

uint64_t closure #5 in closure #1 in CLP_LogEntry_PrivateData_BeidouTimeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SubSecondConversion and conformance CLP_LogEntry_PrivateData_SubSecondConversion, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
}

uint64_t closure #6 in closure #1 in CLP_LogEntry_PrivateData_BeidouTimeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SubSecondConversion and conformance CLP_LogEntry_PrivateData_SubSecondConversion, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
}

BOOL closure #1 in static CLP_LogEntry_PrivateData_BeidouTimeInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v138 = *(v4 - 8);
  v5 = *(v138 + 64);
  MEMORY[0x28223BE20](v4);
  v130 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSg_ADtMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSg_ADtMR);
  v7 = *(*(v137 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v137);
  v10 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v127 = &v121 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v129 = &v121 - v14;
  MEMORY[0x28223BE20](v13);
  v135 = &v121 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v124 = &v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v126 = &v121 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v125 = &v121 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v131 = &v121 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v128 = &v121 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v133 = &v121 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v132 = &v121 - v31;
  MEMORY[0x28223BE20](v30);
  v141 = &v121 - v32;
  v33 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v139 = *(v33 - 8);
  v140 = v33;
  v34 = *(v139 + 8);
  MEMORY[0x28223BE20](v33);
  v134 = &v121 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSg_ADtMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSg_ADtMR);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v39 = &v121 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40 - 8);
  v136 = &v121 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v45 = &v121 - v44;
  swift_beginAccess();
  v46 = *(a1 + 16);
  v47 = *(a1 + 20);
  swift_beginAccess();
  v48 = *(a2 + 20);
  if (v47)
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (v46 != *(a2 + 16))
    {
      v48 = 1;
    }

    if (v48)
    {
      return 0;
    }
  }

  v122 = v10;
  v123 = v4;
  v49 = a1;
  v50 = a2;
  v51 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
  swift_beginAccess();
  v52 = v49 + v51;
  v53 = v50;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v52, v45, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v54 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
  swift_beginAccess();
  v55 = *(v36 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v45, v39, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v50 + v54, &v39[v55], &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v56 = v140;
  v57 = *(v139 + 6);
  if (v57(v39, 1, v140) == 1)
  {

    outlined destroy of Any?(v45, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
    v58 = v57(&v39[v55], 1, v56);
    v59 = v49;
    v60 = v123;
    v61 = v141;
    if (v58 == 1)
    {
      outlined destroy of Any?(v39, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
      goto LABEL_15;
    }

LABEL_12:
    outlined destroy of Any?(v39, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSg_ADtMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSg_ADtMR);
    goto LABEL_29;
  }

  v62 = v50;
  v63 = v136;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v39, v136, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v64 = v57(&v39[v55], 1, v56);
  v61 = v141;
  if (v64 == 1)
  {

    outlined destroy of Any?(v45, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v63, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
    goto LABEL_12;
  }

  v65 = v134;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v39[v55], v134, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);

  LODWORD(v140) = specialized static CLP_LogEntry_PrivateData_LeapSecondInfo.== infix(_:_:)(v63, v65);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v65, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  outlined destroy of Any?(v45, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v66 = v63;
  v53 = v62;
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v66, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  v59 = v49;
  outlined destroy of Any?(v39, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v60 = v123;
  if ((v140 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_15:
  v67 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
  swift_beginAccess();
  v140 = v59;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v59 + v67, v61, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v68 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
  swift_beginAccess();
  v69 = *(v137 + 48);
  v70 = v135;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v61, v135, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v53 + v68, v70 + v69, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v72 = v138 + 48;
  v71 = *(v138 + 48);
  if (v71(v70, 1, v60) == 1)
  {
    outlined destroy of Any?(v61, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    if (v71(v70 + v69, 1, v60) == 1)
    {
      v139 = v71;
      outlined destroy of Any?(v70, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
      goto LABEL_22;
    }

LABEL_20:
    v74 = v70;
LABEL_28:
    outlined destroy of Any?(v74, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSg_ADtMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSg_ADtMR);
    goto LABEL_29;
  }

  v73 = v132;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v70, v132, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  if (v71(v70 + v69, 1, v60) == 1)
  {
    outlined destroy of Any?(v141, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v73, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    goto LABEL_20;
  }

  v139 = v71;
  v75 = v70 + v69;
  v76 = v130;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v75, v130, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  v77 = specialized static CLP_LogEntry_PrivateData_SubSecondConversion.== infix(_:_:)(v73, v76);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v76, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  outlined destroy of Any?(v141, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v73, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  v60 = v123;
  outlined destroy of Any?(v70, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  if ((v77 & 1) == 0)
  {
LABEL_29:

    return 0;
  }

LABEL_22:
  v138 = v72;
  v78 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion;
  v79 = v140;
  swift_beginAccess();
  v80 = v79 + v78;
  v81 = v133;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v80, v133, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v82 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion;
  swift_beginAccess();
  v83 = *(v137 + 48);
  v84 = v129;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v81, v129, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v85 = v84;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v53 + v82, v84 + v83, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v86 = v139;
  if (v139(v84, 1, v60) == 1)
  {
    outlined destroy of Any?(v81, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    v87 = v86(v84 + v83, 1, v60);
    v88 = v131;
    if (v87 == 1)
    {
      v89 = v86;
      outlined destroy of Any?(v85, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
      goto LABEL_32;
    }

    goto LABEL_27;
  }

  v90 = v84;
  v91 = v86;
  v92 = v128;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v90, v128, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v89 = v91;
  v93 = v91(v85 + v83, 1, v60);
  v88 = v131;
  if (v93 == 1)
  {
    outlined destroy of Any?(v133, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v92, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
LABEL_27:
    v74 = v85;
    goto LABEL_28;
  }

  v95 = v85 + v83;
  v96 = v130;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v95, v130, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  v97 = specialized static CLP_LogEntry_PrivateData_SubSecondConversion.== infix(_:_:)(v92, v96);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v96, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  outlined destroy of Any?(v133, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v92, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  outlined destroy of Any?(v85, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  if ((v97 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_32:
  v98 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion;
  v99 = v140;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v99 + v98, v88, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v100 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion;
  swift_beginAccess();
  v101 = *(v137 + 48);
  v102 = v127;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v88, v127, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v53 + v100, v102 + v101, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  if (v89(v102, 1, v60) == 1)
  {
    outlined destroy of Any?(v88, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    v103 = v89(v102 + v101, 1, v60);
    v104 = v140;
    if (v103 == 1)
    {
      outlined destroy of Any?(v102, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  v105 = v125;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v102, v125, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  if (v89(v102 + v101, 1, v60) == 1)
  {
    outlined destroy of Any?(v131, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v105, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
LABEL_37:
    outlined destroy of Any?(v102, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSg_ADtMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSg_ADtMR);
    goto LABEL_29;
  }

  v106 = v130;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v102 + v101, v130, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  v107 = specialized static CLP_LogEntry_PrivateData_SubSecondConversion.== infix(_:_:)(v105, v106);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v106, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  outlined destroy of Any?(v131, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v105, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  outlined destroy of Any?(v102, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v104 = v140;
  if ((v107 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_39:
  v108 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated;
  swift_beginAccess();
  v109 = v126;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v104 + v108, v126, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v110 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated;
  swift_beginAccess();
  v111 = *(v137 + 48);
  v112 = v122;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v109, v122, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v113 = v53 + v110;
  v114 = v112;
  v115 = v123;
  v141 = v111;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v113, v114 + v111, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  if (v89(v114, 1, v115) != 1)
  {
    v116 = v124;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v114, v124, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    v117 = v141;
    if (v89(v114 + v141, 1, v115) == 1)
    {

      outlined destroy of Any?(v126, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v116, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
      goto LABEL_44;
    }

    v118 = v130;
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v114 + v117, v130, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    v119 = v116;
    v120 = specialized static CLP_LogEntry_PrivateData_SubSecondConversion.== infix(_:_:)(v116, v118);

    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v118, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    outlined destroy of Any?(v126, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v119, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    outlined destroy of Any?(v114, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    return (v120 & 1) != 0;
  }

  outlined destroy of Any?(v109, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  if (v89(v114 + v141, 1, v115) != 1)
  {
LABEL_44:
    outlined destroy of Any?(v114, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSg_ADtMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSg_ADtMR);
    return 0;
  }

  outlined destroy of Any?(v114, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  return 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_BeidouTimeInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BeidouTimeInfo and conformance CLP_LogEntry_PrivateData_BeidouTimeInfo, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_BeidouTimeInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BeidouTimeInfo and conformance CLP_LogEntry_PrivateData_BeidouTimeInfo, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_BeidouTimeInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BeidouTimeInfo and conformance CLP_LogEntry_PrivateData_BeidouTimeInfo, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_GalileoTimeInfo.decodeMessage<A>(decoder:)()
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

      if (result > 2)
      {
        break;
      }

      if (result == 1)
      {
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0) + 20);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        goto LABEL_5;
      }

      if (result == 2)
      {
        v4 = v0;
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0) + 24);
        type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
        v6 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo;
        v7 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondInfo and conformance CLP_LogEntry_PrivateData_LeapSecondInfo;
LABEL_16:
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v6);
        v0 = v4;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result == 3)
    {
      v4 = v0;
      v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0) + 28);
    }

    else
    {
      if (result != 4)
      {
        goto LABEL_5;
      }

      v4 = v0;
      v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0) + 32);
    }

    type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion;
    v7 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SubSecondConversion and conformance CLP_LogEntry_PrivateData_SubSecondConversion;
    goto LABEL_16;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GalileoTimeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  v10 = (v5 + *(result + 20));
  if (v10[1])
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v11 = *v10;
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  closure #2 in CLP_LogEntry_PrivateData_GalileoTimeInfo.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #3 in CLP_LogEntry_PrivateData_GalileoTimeInfo.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #4 in CLP_LogEntry_PrivateData_GalileoTimeInfo.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #2 in CLP_LogEntry_PrivateData_GalileoTimeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 24), v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondInfo and conformance CLP_LogEntry_PrivateData_LeapSecondInfo, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
}

uint64_t closure #3 in CLP_LogEntry_PrivateData_GalileoTimeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 28), v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SubSecondConversion and conformance CLP_LogEntry_PrivateData_SubSecondConversion, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
}

uint64_t closure #4 in CLP_LogEntry_PrivateData_GalileoTimeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 32), v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SubSecondConversion and conformance CLP_LogEntry_PrivateData_SubSecondConversion, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_GalileoTimeInfo@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  (*(*(v6 - 8) + 56))(a2 + v4, 1, 1, v6);
  v7 = a1[7];
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v11 = *(*(v8 - 8) + 56);
  (v11)((v8 - 8), a2 + v7, 1, 1, v8);
  v9 = a2 + a1[8];

  return v11(v9, 1, 1, v8);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GalileoTimeInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GalileoTimeInfo and conformance CLP_LogEntry_PrivateData_GalileoTimeInfo, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GalileoTimeInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GalileoTimeInfo and conformance CLP_LogEntry_PrivateData_GalileoTimeInfo, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GalileoTimeInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GalileoTimeInfo and conformance CLP_LogEntry_PrivateData_GalileoTimeInfo, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_NavicTimeInfo.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0) + 20);
        type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SubSecondConversion and conformance CLP_LogEntry_PrivateData_SubSecondConversion, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0) + 24);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_NavicTimeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in CLP_LogEntry_PrivateData_NavicTimeInfo.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    v6 = (v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0) + 24));
    if ((v6[1] & 1) == 0)
    {
      v7 = *v6;
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CLP_LogEntry_PrivateData_NavicTimeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 20), v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SubSecondConversion and conformance CLP_LogEntry_PrivateData_SubSecondConversion, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_NavicTimeInfo@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a2 + *(a1 + 24);
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_NavicTimeInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_NavicTimeInfo and conformance CLP_LogEntry_PrivateData_NavicTimeInfo, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_NavicTimeInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_NavicTimeInfo and conformance CLP_LogEntry_PrivateData_NavicTimeInfo, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_NavicTimeInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_NavicTimeInfo and conformance CLP_LogEntry_PrivateData_NavicTimeInfo, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v43 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v42 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v40 - v18;
  v20 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
  v21 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  (*(*(v21 - 8) + 56))(v1 + v20, 1, 1, v21);
  v22 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
  v23 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  (*(*(v23 - 8) + 56))(v1 + v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
  v25 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0);
  (*(*(v25 - 8) + 56))(v1 + v24, 1, 1, v25);
  v26 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
  v27 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  (*(*(v27 - 8) + 56))(v1 + v26, 1, 1, v27);
  v28 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  v41 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  v29 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  (*(*(v29 - 8) + 56))(v1 + v28, 1, 1, v29);
  v30 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v30, v19, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v19, v1 + v20, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  swift_endAccess();
  v31 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v31, v15, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v15, v1 + v22, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  swift_endAccess();
  v32 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
  swift_beginAccess();
  v33 = v42;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v32, v42, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v33, v1 + v24, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  swift_endAccess();
  v34 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
  swift_beginAccess();
  v35 = v43;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v34, v43, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v35, v1 + v26, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  swift_endAccess();
  v36 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  swift_beginAccess();
  v37 = v44;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v36, v44, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);

  v38 = v41;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v37, v1 + v38, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  swift_endAccess();
  return v1;
}

uint64_t CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t CLP_LogEntry_PrivateData_TimeConversionInfo.decodeMessage<A>(decoder:)()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v6);
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

      if (result <= 2)
      {
        if (result == 1)
        {
          v13 = v1;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
          v14 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo;
          v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsTimeInfo and conformance CLP_LogEntry_PrivateData_GpsTimeInfo;
          goto LABEL_7;
        }

        if (result == 2)
        {
          v13 = v1;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
          v14 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo;
          v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassTimeInfo and conformance CLP_LogEntry_PrivateData_GlonassTimeInfo;
          goto LABEL_7;
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v13 = v1;
            swift_beginAccess();
            type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0);
            v14 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo;
            v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BeidouTimeInfo and conformance CLP_LogEntry_PrivateData_BeidouTimeInfo;
LABEL_7:
            lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v14);
            v1 = v13;
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            swift_endAccess();
            break;
          case 4:
            v13 = v1;
            swift_beginAccess();
            type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
            v14 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo;
            v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GalileoTimeInfo and conformance CLP_LogEntry_PrivateData_GalileoTimeInfo;
            goto LABEL_7;
          case 5:
            v13 = v1;
            swift_beginAccess();
            type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
            v14 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo;
            v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_NavicTimeInfo and conformance CLP_LogEntry_PrivateData_NavicTimeInfo;
            goto LABEL_7;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_TimeConversionInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20));
  result = closure #1 in closure #1 in CLP_LogEntry_PrivateData_TimeConversionInfo.traverse<A>(visitor:)(v8, a1, a2, a3);
  if (!v4)
  {
    closure #2 in closure #1 in CLP_LogEntry_PrivateData_TimeConversionInfo.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #3 in closure #1 in CLP_LogEntry_PrivateData_TimeConversionInfo.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #4 in closure #1 in CLP_LogEntry_PrivateData_TimeConversionInfo.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #5 in closure #1 in CLP_LogEntry_PrivateData_TimeConversionInfo.traverse<A>(visitor:)(v8, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in CLP_LogEntry_PrivateData_TimeConversionInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsTimeInfo and conformance CLP_LogEntry_PrivateData_GpsTimeInfo, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
}

uint64_t closure #2 in closure #1 in CLP_LogEntry_PrivateData_TimeConversionInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassTimeInfo and conformance CLP_LogEntry_PrivateData_GlonassTimeInfo, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
}

uint64_t closure #3 in closure #1 in CLP_LogEntry_PrivateData_TimeConversionInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BeidouTimeInfo and conformance CLP_LogEntry_PrivateData_BeidouTimeInfo, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
}

uint64_t closure #4 in closure #1 in CLP_LogEntry_PrivateData_TimeConversionInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GalileoTimeInfo and conformance CLP_LogEntry_PrivateData_GalileoTimeInfo, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
}

uint64_t closure #5 in closure #1 in CLP_LogEntry_PrivateData_TimeConversionInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_NavicTimeInfo and conformance CLP_LogEntry_PrivateData_NavicTimeInfo, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
}

BOOL closure #1 in static CLP_LogEntry_PrivateData_TimeConversionInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v151 = a2;
  v125 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  v124 = *(v125 - 8);
  v3 = *(v124 + 64);
  MEMORY[0x28223BE20](v125);
  v121 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSg_ADtMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSg_ADtMR);
  v5 = *(*(v123 - 8) + 64);
  MEMORY[0x28223BE20](v123);
  v126 = &v121 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v148 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v140 = &v121 - v11;
  v131 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  v130 = *(v131 - 8);
  v12 = *(v130 + 64);
  MEMORY[0x28223BE20](v131);
  v122 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSg_ADtMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSg_ADtMR);
  v14 = *(*(v129 - 8) + 64);
  MEMORY[0x28223BE20](v129);
  v132 = &v121 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v127 = &v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v133 = &v121 - v20;
  v138 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0);
  v137 = *(v138 - 8);
  v21 = *(v137 + 64);
  MEMORY[0x28223BE20](v138);
  v128 = &v121 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSg_ADtMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSg_ADtMR);
  v23 = *(*(v136 - 8) + 64);
  MEMORY[0x28223BE20](v136);
  v139 = &v121 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v135 = &v121 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v147 = &v121 - v29;
  v145 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  v144 = *(v145 - 8);
  v30 = *(v144 + 64);
  MEMORY[0x28223BE20](v145);
  v134 = &v121 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSg_ADtMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSg_ADtMR);
  v32 = *(*(v143 - 8) + 64);
  MEMORY[0x28223BE20](v143);
  v146 = &v121 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v141 = &v121 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v150 = &v121 - v38;
  v39 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  v142 = &v121 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSg_ADtMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSg_ADtMR);
  v44 = v43 - 8;
  v45 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v47 = &v121 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  v49 = *(*(v48 - 8) + 64);
  v50 = MEMORY[0x28223BE20](v48 - 8);
  v149 = &v121 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v53 = &v121 - v52;
  v54 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v54, v53, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  v55 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
  v56 = v151;
  swift_beginAccess();
  v57 = *(v44 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v53, v47, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v56 + v55, &v47[v57], &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  v58 = *(v40 + 48);
  if (v58(v47, 1, v39) == 1)
  {

    outlined destroy of Any?(v53, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
    if (v58(&v47[v57], 1, v39) == 1)
    {
      outlined destroy of Any?(v47, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v60 = &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSg_ADtMd;
    v61 = &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSg_ADtMR;
    v62 = v47;
LABEL_22:
    outlined destroy of Any?(v62, v60, v61);
    goto LABEL_23;
  }

  v59 = v149;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v47, v149, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  if (v58(&v47[v57], 1, v39) == 1)
  {

    outlined destroy of Any?(v53, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v59, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
    goto LABEL_6;
  }

  v63 = v142;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v47[v57], v142, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);

  v64 = specialized static CLP_LogEntry_PrivateData_GpsTimeInfo.== infix(_:_:)(v59, v63);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v63, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
  outlined destroy of Any?(v53, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v59, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
  outlined destroy of Any?(v47, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  if ((v64 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_8:
  v65 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
  swift_beginAccess();
  v66 = v150;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v65, v150, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  v67 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
  swift_beginAccess();
  v68 = *(v143 + 48);
  v69 = v146;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v66, v146, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v56 + v67, v69 + v68, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  v70 = *(v144 + 48);
  v71 = v145;
  if (v70(v69, 1, v145) == 1)
  {
    outlined destroy of Any?(v66, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
    v72 = v70(v69 + v68, 1, v71);
    v73 = v148;
    v74 = v147;
    if (v72 == 1)
    {
      outlined destroy of Any?(v69, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
      goto LABEL_15;
    }

LABEL_13:
    v60 = &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSg_ADtMd;
    v61 = &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSg_ADtMR;
LABEL_21:
    v62 = v69;
    goto LABEL_22;
  }

  v75 = v141;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v69, v141, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  v76 = v70(v69 + v68, 1, v71);
  v77 = v148;
  v74 = v147;
  if (v76 == 1)
  {
    outlined destroy of Any?(v150, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v75, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
    goto LABEL_13;
  }

  v78 = v69 + v68;
  v79 = v134;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v78, v134, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
  v80 = specialized static CLP_LogEntry_PrivateData_GlonassTimeInfo.== infix(_:_:)(v75, v79);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v79, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
  outlined destroy of Any?(v150, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v75, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
  outlined destroy of Any?(v69, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  v73 = v77;
  if ((v80 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_15:
  v81 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v81, v74, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  v82 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
  swift_beginAccess();
  v83 = *(v136 + 48);
  v69 = v139;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v74, v139, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v56 + v82, v69 + v83, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  v84 = *(v137 + 48);
  v85 = v138;
  if (v84(v69, 1, v138) == 1)
  {
    outlined destroy of Any?(v74, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
    v86 = v84(v69 + v83, 1, v85);
    v87 = v140;
    if (v86 == 1)
    {
      outlined destroy of Any?(v69, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
      goto LABEL_29;
    }

    goto LABEL_20;
  }

  v88 = v135;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v69, v135, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  v89 = v84(v69 + v83, 1, v85);
  v87 = v140;
  if (v89 == 1)
  {
    outlined destroy of Any?(v74, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v88, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
LABEL_20:
    v60 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSg_ADtMd;
    v61 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSg_ADtMR;
    goto LABEL_21;
  }

  v91 = v85;
  v92 = v128;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v69 + v83, v128, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
  v93 = *(v91 + 20);
  v94 = *(v88 + v93);
  v95 = *(v92 + v93);
  if (v94 != v95)
  {
    v96 = *(v88 + v93);

    v97 = closure #1 in static CLP_LogEntry_PrivateData_BeidouTimeInfo.== infix(_:_:)(v94, v95);

    if (!v97)
    {
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v92, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
      outlined destroy of Any?(v74, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v135, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
      v62 = v69;
      v60 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd;
      v61 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR;
      goto LABEL_22;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v98 = v74;
  v99 = v135;
  LODWORD(v150) = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v92, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
  outlined destroy of Any?(v98, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v99, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
  outlined destroy of Any?(v69, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  v73 = v148;
  if ((v150 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_29:
  v100 = v87;
  v101 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
  swift_beginAccess();
  v102 = v133;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v101, v133, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  v103 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
  swift_beginAccess();
  v104 = *(v129 + 48);
  v105 = v132;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v102, v132, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v56 + v103, v105 + v104, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  v106 = *(v130 + 48);
  v107 = v131;
  if (v106(v105, 1, v131) != 1)
  {
    v108 = v127;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v105, v127, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
    if (v106(v105 + v104, 1, v107) == 1)
    {
      outlined destroy of Any?(v133, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v108, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
      goto LABEL_34;
    }

    v109 = v105 + v104;
    v110 = v122;
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v109, v122, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
    v111 = specialized static CLP_LogEntry_PrivateData_GalileoTimeInfo.== infix(_:_:)(v108, v110);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v110, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
    outlined destroy of Any?(v133, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v108, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
    outlined destroy of Any?(v105, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
    if (v111)
    {
      goto LABEL_36;
    }

LABEL_23:

    return 0;
  }

  outlined destroy of Any?(v102, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  if (v106(v105 + v104, 1, v107) != 1)
  {
LABEL_34:
    v60 = &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSg_ADtMd;
    v61 = &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSg_ADtMR;
    v62 = v105;
    goto LABEL_22;
  }

  outlined destroy of Any?(v105, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
LABEL_36:
  v112 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v112, v100, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  v113 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  swift_beginAccess();
  v114 = *(v123 + 48);
  v115 = v126;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v100, v126, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v56 + v113, v115 + v114, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  v116 = *(v124 + 48);
  v117 = v125;
  if (v116(v115, 1, v125) == 1)
  {

    outlined destroy of Any?(v100, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
    if (v116(v115 + v114, 1, v117) == 1)
    {
      outlined destroy of Any?(v115, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
      return 1;
    }

    goto LABEL_42;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v115, v73, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  if (v116(v115 + v114, 1, v117) == 1)
  {

    outlined destroy of Any?(v140, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v73, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
LABEL_42:
    outlined destroy of Any?(v115, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSg_ADtMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSg_ADtMR);
    return 0;
  }

  v118 = v115 + v114;
  v119 = v121;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v118, v121, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
  v120 = specialized static CLP_LogEntry_PrivateData_NavicTimeInfo.== infix(_:_:)(v73, v119);

  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v119, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
  outlined destroy of Any?(v140, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v73, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
  outlined destroy of Any?(v115, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  return (v120 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_TimeConversionInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeConversionInfo and conformance CLP_LogEntry_PrivateData_TimeConversionInfo, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_TimeConversionInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeConversionInfo and conformance CLP_LogEntry_PrivateData_TimeConversionInfo, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_TimeConversionInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeConversionInfo and conformance CLP_LogEntry_PrivateData_TimeConversionInfo, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_KlobucharModelParameters.decodeMessage<A>(decoder:)()
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

      if (result <= 4)
      {
        if (result > 2)
        {
          v3 = v0;
          if (result == 3)
          {
            v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 28);
          }

          else
          {
            v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 32);
          }
        }

        else
        {
          if (result == 1)
          {
            v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 20);
            dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
            goto LABEL_23;
          }

          if (result != 2)
          {
            goto LABEL_23;
          }

          v3 = v0;
          v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 24);
        }
      }

      else if (result <= 6)
      {
        v3 = v0;
        if (result == 5)
        {
          v11 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 36);
        }

        else
        {
          v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 40);
        }
      }

      else
      {
        switch(result)
        {
          case 7:
            v3 = v0;
            v10 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 44);
            break;
          case 8:
            v3 = v0;
            v12 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 48);
            break;
          case 9:
            v3 = v0;
            v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 52);
            break;
          default:
            goto LABEL_23;
        }
      }

      v0 = v3;
      dispatch thunk of Decoder.decodeSingularFloatField(value:)();
LABEL_23:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_KlobucharModelParameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
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
  if ((*(v13 + 4) & 1) == 0)
  {
    v14 = *v13;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  v15 = v5 + v10[7];
  if ((*(v15 + 4) & 1) == 0)
  {
    v16 = *v15;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  v17 = v5 + v10[8];
  if ((*(v17 + 4) & 1) == 0)
  {
    v18 = *v17;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  closure #5 in CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
  closure #6 in CLP_LogEntry_PrivateData_KlobucharModelParameters.traverse<A>(visitor:)(v5);
  closure #7 in CLP_LogEntry_PrivateData_KlobucharModelParameters.traverse<A>(visitor:)(v5);
  closure #8 in CLP_LogEntry_PrivateData_KlobucharModelParameters.traverse<A>(visitor:)(v5);
  closure #9 in CLP_LogEntry_PrivateData_KlobucharModelParameters.traverse<A>(visitor:)(v5);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #5 in CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 36));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #6 in CLP_LogEntry_PrivateData_KlobucharModelParameters.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v3 = (a1 + *(result + 40));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #7 in CLP_LogEntry_PrivateData_KlobucharModelParameters.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v3 = (a1 + *(result + 44));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #8 in CLP_LogEntry_PrivateData_KlobucharModelParameters.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v3 = (a1 + *(result + 48));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #9 in CLP_LogEntry_PrivateData_KlobucharModelParameters.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v3 = (a1 + *(result + 52));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_KlobucharModelParameters@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
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
  v14 = a1[12];
  v15 = a2 + a1[11];
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a2 + v14;
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = a2 + a1[13];
  *v17 = 0;
  *(v17 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_KlobucharModelParameters(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_KlobucharModelParameters and conformance CLP_LogEntry_PrivateData_KlobucharModelParameters, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_KlobucharModelParameters(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_KlobucharModelParameters and conformance CLP_LogEntry_PrivateData_KlobucharModelParameters, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_KlobucharModelParameters(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_KlobucharModelParameters and conformance CLP_LogEntry_PrivateData_KlobucharModelParameters, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_Wgs84Ecef.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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

  v12 = (v4 + *(v7 + 28));
  if ((v12[1] & 1) == 0)
  {
    v13 = *v12;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_SfcfXyz(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SfcfXyz and conformance CLP_LogEntry_PrivateData_SfcfXyz, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_SfcfXyz(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SfcfXyz and conformance CLP_LogEntry_PrivateData_SfcfXyz, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_SfcfXyz(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SfcfXyz and conformance CLP_LogEntry_PrivateData_SfcfXyz, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.decodeMessage<A>(decoder:)()
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

      if (result > 2)
      {
        if (result == 3)
        {
          v3 = v0;
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0) + 28);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvReferencePoint and conformance CLP_LogEntry_PrivateData_SvReferencePoint();
LABEL_5:
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_6;
        }

        if (result == 4)
        {
          v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0) + 32);
          type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SfcfXyz and conformance CLP_LogEntry_PrivateData_SfcfXyz, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
LABEL_16:
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0) + 20);
          type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvId and conformance CLP_LogEntry_PrivateData_SvId, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
          goto LABEL_16;
        }

        if (result == 2)
        {
          v3 = v0;
          v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0) + 24);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_Band and conformance CLP_LogEntry_PrivateData_Band();
          goto LABEL_5;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.traverse<A>(visitor:)(v5, a1, a2, a3);
  if (!v4)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
    if (*(v5 + *(v10 + 24)) != 13)
    {
      v11 = v10;
      v12 = *(v5 + *(v10 + 24));
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_Band and conformance CLP_LogEntry_PrivateData_Band();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
      v10 = v11;
    }

    if (*(v5 + *(v10 + 28)) != 4)
    {
      v13 = *(v5 + *(v10 + 28));
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvReferencePoint and conformance CLP_LogEntry_PrivateData_SvReferencePoint();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    closure #4 in CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.traverse<A>(visitor:)(v5, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 20), v8, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvId and conformance CLP_LogEntry_PrivateData_SvId, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
}

uint64_t closure #4 in CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 32), v8, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SfcfXyz and conformance CLP_LogEntry_PrivateData_SfcfXyz, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[7];
  *(a2 + a1[6]) = 13;
  *(a2 + v6) = 4;
  v7 = a1[8];
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset and conformance CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset, type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset and conformance CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset, type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset and conformance CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset, type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_ReceivedTimeStamp(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceivedTimeStamp and conformance CLP_LogEntry_PrivateData_ReceivedTimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_ReceivedTimeStamp(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceivedTimeStamp and conformance CLP_LogEntry_PrivateData_ReceivedTimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_ReceivedTimeStamp(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceivedTimeStamp and conformance CLP_LogEntry_PrivateData_ReceivedTimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v63 = &v55 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v62 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v57 = &v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v55 - v14;
  v16 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  v56 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  v19 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0);
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svInfo;
  v21 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svInfo) = MEMORY[0x277D84F90];
  v22 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rxBandCorrections;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rxBandCorrections) = v21;
  v23 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  v58 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  v24 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0);
  (*(*(v24 - 8) + 56))(v1 + v23, 1, 1, v24);
  v25 = v1 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeMachContinuousSec;
  *v25 = 0;
  *(v25 + 8) = 1;
  v26 = v1 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeUncertaintySec;
  v59 = v1 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeUncertaintySec;
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  v60 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  v28 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  (*(*(v28 - 8) + 56))(v1 + v27, 1, 1, v28);
  v61 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__apcSvOffset;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__apcSvOffset) = v21;
  v29 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v29, v15, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v15, v1 + v16, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  swift_endAccess();
  v30 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  swift_beginAccess();
  v31 = v57;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v30, v57, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  v32 = v56;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v31, v1 + v32, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  swift_endAccess();
  v33 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svInfo;
  swift_beginAccess();
  v34 = *(a1 + v33);
  swift_beginAccess();
  v35 = *(v1 + v20);
  *(v1 + v20) = v34;

  v36 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rxBandCorrections;
  swift_beginAccess();
  v37 = *(a1 + v36);
  swift_beginAccess();
  v38 = *(v1 + v22);
  *(v1 + v22) = v37;

  v39 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  swift_beginAccess();
  v40 = v62;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v39, v62, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  v41 = v58;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v40, v1 + v41, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  swift_endAccess();
  v42 = (a1 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeMachContinuousSec);
  swift_beginAccess();
  v43 = *v42;
  LOBYTE(v42) = *(v42 + 8);
  swift_beginAccess();
  *v25 = v43;
  *(v25 + 8) = v42;
  v44 = (a1 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeUncertaintySec);
  swift_beginAccess();
  v45 = *v44;
  LOBYTE(v44) = *(v44 + 8);
  v46 = v59;
  swift_beginAccess();
  *v46 = v45;
  *(v46 + 8) = v44;
  v47 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  swift_beginAccess();
  v48 = v63;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v47, v63, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  v49 = v60;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v48, v1 + v49, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  swift_endAccess();
  v50 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__apcSvOffset;
  swift_beginAccess();
  v51 = *(a1 + v50);

  v52 = v61;
  swift_beginAccess();
  v53 = *(v1 + v52);
  *(v1 + v52) = v51;

  return v1;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svInfo);

  v2 = *(v0 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rxBandCorrections);

  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  v3 = *(v0 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__apcSvOffset);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.decodeMessage<A>(decoder:)()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass.init(copying:)(v6);
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

      if (result <= 4)
      {
        if (result <= 2)
        {
          if (result == 1)
          {
            v16 = v1;
            swift_beginAccess();
            type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
            v17 = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp;
            v18 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceivedTimeStamp and conformance CLP_LogEntry_PrivateData_ReceivedTimeStamp;
          }

          else
          {
            if (result != 2)
            {
              goto LABEL_28;
            }

            v16 = v1;
            swift_beginAccess();
            type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0);
            v17 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport;
            v18 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementReport and conformance CLP_LogEntry_PrivateData_MeasurementReport;
          }

          goto LABEL_26;
        }

        v13 = v1;
        if (result == 3)
        {
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0);
          v14 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo;
          v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvInfo and conformance CLP_LogEntry_PrivateData_SvInfo;
        }

        else
        {
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0);
          v14 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections;
          v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceiverBandCorrections and conformance CLP_LogEntry_PrivateData_ReceiverBandCorrections;
        }
      }

      else
      {
        if (result <= 6)
        {
          if (result == 5)
          {
            v16 = v1;
            swift_beginAccess();
            type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0);
            v17 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo;
            v18 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeConversionInfo and conformance CLP_LogEntry_PrivateData_TimeConversionInfo;
LABEL_26:
            lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(v18, v17);
            v1 = v16;
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            goto LABEL_27;
          }

LABEL_23:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_27;
        }

        if (result == 7)
        {
          goto LABEL_23;
        }

        if (result == 8)
        {
          v16 = v1;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
          v17 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters;
          v18 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_KlobucharModelParameters and conformance CLP_LogEntry_PrivateData_KlobucharModelParameters;
          goto LABEL_26;
        }

        if (result != 9)
        {
          goto LABEL_28;
        }

        v13 = v1;
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
        v14 = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset;
        v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset and conformance CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset;
      }

      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v14);
      v1 = v13;
      dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
LABEL_27:
      swift_endAccess();
LABEL_28:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20));
  result = closure #1 in closure #1 in CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.traverse<A>(visitor:)(v8, a1, a2, a3);
  if (!v4)
  {
    closure #2 in closure #1 in CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.traverse<A>(visitor:)(v8, a1, a2, a3);
    v10 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svInfo;
    swift_beginAccess();
    if (*(*(v8 + v10) + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0);
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvInfo and conformance CLP_LogEntry_PrivateData_SvInfo, type metadata accessor for CLP_LogEntry_PrivateData_SvInfo);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v11 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rxBandCorrections;
    swift_beginAccess();
    if (*(*(v8 + v11) + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0);
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceiverBandCorrections and conformance CLP_LogEntry_PrivateData_ReceiverBandCorrections, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    closure #3 in closure #1 in CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeMachContinuousSec);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeUncertaintySec);
    closure #6 in closure #1 in CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.traverse<A>(visitor:)(v8, a1, a2, a3);
    v12 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__apcSvOffset;
    swift_beginAccess();
    if (*(*(v8 + v12) + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset and conformance CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset, type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceivedTimeStamp and conformance CLP_LogEntry_PrivateData_ReceivedTimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
}

uint64_t closure #2 in closure #1 in CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementReport and conformance CLP_LogEntry_PrivateData_MeasurementReport, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
}

uint64_t closure #3 in closure #1 in CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeConversionInfo and conformance CLP_LogEntry_PrivateData_TimeConversionInfo, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
}

uint64_t closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = (a1 + *a5);
  result = swift_beginAccess();
  if ((v5[1] & 1) == 0)
  {
    v7 = *v5;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #6 in closure #1 in CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_KlobucharModelParameters and conformance CLP_LogEntry_PrivateData_KlobucharModelParameters, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
}

uint64_t closure #1 in static CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v170 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v148 = *(v3 - 8);
  v149 = v3;
  v4 = *(v148 + 64);
  MEMORY[0x28223BE20](v3);
  v146 = &v146 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSg_ADtMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSg_ADtMR);
  v6 = *(*(v147 - 8) + 64);
  MEMORY[0x28223BE20](v147);
  v150 = &v146 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v152 = &v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v166 = &v146 - v12;
  v13 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0);
  v155 = *(v13 - 8);
  v156 = v13;
  v14 = *(v155 + 64);
  MEMORY[0x28223BE20](v13);
  v151 = &v146 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSg_ADtMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSg_ADtMR);
  v16 = *(*(v154 - 8) + 64);
  MEMORY[0x28223BE20](v154);
  v157 = &v146 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v153 = &v146 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v158 = &v146 - v22;
  v23 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0);
  v163 = *(v23 - 8);
  v164 = v23;
  v24 = *(v163 + 64);
  MEMORY[0x28223BE20](v23);
  v159 = &v146 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSg_ADtMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSg_ADtMR);
  v26 = *(*(v162 - 8) + 64);
  MEMORY[0x28223BE20](v162);
  v165 = &v146 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v161 = &v146 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v167 = &v146 - v32;
  v168 = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  v33 = *(v168 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v168);
  v160 = &v146 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSg_ADtMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSg_ADtMR);
  v37 = v36 - 8;
  v38 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v40 = &v146 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x28223BE20](v41 - 8);
  v169 = &v146 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v46 = &v146 - v45;
  v47 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  swift_beginAccess();
  v48 = a1 + v47;
  v49 = a1;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v48, v46, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  v50 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  v51 = v170;
  swift_beginAccess();
  v52 = *(v37 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v46, v40, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  v53 = v51;
  v54 = v168;
  v55 = v53 + v50;
  v56 = v53;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v55, &v40[v52], &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  v57 = *(v33 + 48);
  if (v57(v40, 1, v54) == 1)
  {

    outlined destroy of Any?(v46, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
    v58 = v56;
    v59 = v49;
    if (v57(&v40[v52], 1, v54) == 1)
    {
      outlined destroy of Any?(v40, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v60 = &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSg_ADtMd;
    v61 = &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSg_ADtMR;
    v62 = v40;
LABEL_15:
    outlined destroy of Any?(v62, v60, v61);
    goto LABEL_16;
  }

  v59 = v49;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v40, v169, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  if (v57(&v40[v52], 1, v54) == 1)
  {

    outlined destroy of Any?(v46, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v169, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
    goto LABEL_6;
  }

  v63 = v160;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v40[v52], v160, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);

  v64 = v169;
  v65 = specialized static CLP_LogEntry_PrivateData_ReceivedTimeStamp.== infix(_:_:)(v169, v63, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v63, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
  outlined destroy of Any?(v46, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  v66 = v64;
  v58 = v56;
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v66, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
  outlined destroy of Any?(v40, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  if ((v65 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v67 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  swift_beginAccess();
  v68 = v167;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v59 + v67, v167, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  v69 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  swift_beginAccess();
  v70 = *(v162 + 48);
  v71 = v165;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v68, v165, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  v72 = v58 + v69;
  v73 = v71;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v72, v71 + v70, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  v74 = *(v163 + 48);
  v75 = v71;
  v76 = v164;
  if (v74(v75, 1, v164) == 1)
  {
    outlined destroy of Any?(v68, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
    v77 = v74(v73 + v70, 1, v76);
    v78 = v166;
    if (v77 == 1)
    {
      outlined destroy of Any?(v73, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
      goto LABEL_21;
    }

LABEL_13:
    v60 = &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSg_ADtMd;
    v61 = &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSg_ADtMR;
LABEL_14:
    v62 = v73;
    goto LABEL_15;
  }

  v79 = v161;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v73, v161, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  v80 = v74(v73 + v70, 1, v76);
  v78 = v166;
  if (v80 == 1)
  {
    outlined destroy of Any?(v68, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v79, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
    goto LABEL_13;
  }

  v83 = v159;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v73 + v70, v159, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
  v84 = *(v76 + 20);
  v85 = *(v79 + v84);
  v86 = *(v83 + v84);
  if (v85 != v86)
  {

    v87 = closure #1 in static CLP_LogEntry_PrivateData_MeasurementReport.== infix(_:_:)(v85, v86);

    if ((v87 & 1) == 0)
    {
      v109 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport;
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v83, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
      v110 = &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd;
      v111 = &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR;
      outlined destroy of Any?(v167, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
      v112 = v161;
      goto LABEL_27;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v88 = v161;
  v89 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v83, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
  outlined destroy of Any?(v167, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v88, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
  outlined destroy of Any?(v73, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  if ((v89 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_21:
  v90 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svInfo;
  swift_beginAccess();
  v91 = *(v59 + v90);
  v92 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svInfo;
  swift_beginAccess();
  v93 = *(v58 + v92);

  v94 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementV_Tt1g5Tm(v91, v93, type metadata accessor for CLP_LogEntry_PrivateData_SvInfo, type metadata accessor for CLP_LogEntry_PrivateData_SvInfo, closure #1 in static CLP_LogEntry_PrivateData_SvInfo.== infix(_:_:));

  if ((v94 & 1) == 0)
  {
    goto LABEL_16;
  }

  v95 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rxBandCorrections;
  swift_beginAccess();
  v96 = *(v59 + v95);
  v97 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rxBandCorrections;
  swift_beginAccess();
  v98 = *(v58 + v97);

  v99 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf48CLP_LogEntry_PrivateData_ReceiverBandCorrectionsV_Tt1g5(v96, v98);

  if ((v99 & 1) == 0)
  {
    goto LABEL_16;
  }

  v100 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  swift_beginAccess();
  v101 = v158;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v59 + v100, v158, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  v102 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  swift_beginAccess();
  v103 = *(v154 + 48);
  v104 = v157;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v101, v157, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  v105 = v58 + v102;
  v73 = v104;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v105, v104 + v103, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  v106 = *(v155 + 48);
  v107 = v104;
  v108 = v156;
  if (v106(v107, 1, v156) != 1)
  {
    v113 = v153;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v73, v153, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
    if (v106(v73 + v103, 1, v108) == 1)
    {
      outlined destroy of Any?(v158, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v113, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
      goto LABEL_30;
    }

    v114 = v108;
    v115 = v151;
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v73 + v103, v151, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
    v116 = *(v114 + 20);
    v117 = *(v113 + v116);
    v118 = *(v115 + v116);
    if (v117 == v118 || (, , v119 = closure #1 in static CLP_LogEntry_PrivateData_TimeConversionInfo.== infix(_:_:)(v117, v118), , , v119))
    {
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v120 = v153;
      v121 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v115, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
      outlined destroy of Any?(v158, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v120, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
      outlined destroy of Any?(v73, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
      if ((v121 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_34;
    }

    v109 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo;
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v115, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
    v110 = &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd;
    v111 = &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR;
    outlined destroy of Any?(v158, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
    v112 = v153;
LABEL_27:
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v112, v109);
    v62 = v73;
    v60 = v110;
    v61 = v111;
    goto LABEL_15;
  }

  outlined destroy of Any?(v101, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  if (v106(v73 + v103, 1, v108) != 1)
  {
LABEL_30:
    v60 = &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSg_ADtMd;
    v61 = &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSg_ADtMR;
    goto LABEL_14;
  }

  outlined destroy of Any?(v73, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
LABEL_34:
  v122 = v59 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeMachContinuousSec;
  swift_beginAccess();
  v123 = *v122;
  v124 = *(v122 + 8);
  v125 = v58 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeMachContinuousSec;
  swift_beginAccess();
  v126 = *(v125 + 8);
  if (v124)
  {
    v127 = v152;
    if ((*(v125 + 8) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v127 = v152;
    if ((*(v125 + 8) & 1) != 0 || v123 != *v125)
    {
      goto LABEL_16;
    }
  }

  v128 = v59 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeUncertaintySec;
  swift_beginAccess();
  v129 = *v128;
  v130 = *(v128 + 8);
  v131 = v58 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeUncertaintySec;
  swift_beginAccess();
  v132 = *(v131 + 8);
  if (v130)
  {
    if ((*(v131 + 8) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((*(v131 + 8) & 1) != 0 || v129 != *v131)
  {
    goto LABEL_16;
  }

  v133 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v59 + v133, v78, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  v134 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  swift_beginAccess();
  v135 = *(v147 + 48);
  v136 = v150;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v78, v150, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v58 + v134, v136 + v135, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  v137 = v149;
  v138 = *(v148 + 48);
  if (v138(v136, 1, v149) == 1)
  {
    outlined destroy of Any?(v78, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
    if (v138(v136 + v135, 1, v137) == 1)
    {
      outlined destroy of Any?(v136, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
LABEL_52:
      v142 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__apcSvOffset;
      swift_beginAccess();
      v143 = *(v59 + v142);
      v144 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__apcSvOffset;
      swift_beginAccess();
      v145 = *(v58 + v144);

      v81 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf51CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffsetV_Tt1g5(v143, v145);

      return v81 & 1;
    }

    goto LABEL_50;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v136, v127, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  if (v138(v136 + v135, 1, v137) == 1)
  {
    outlined destroy of Any?(v78, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v127, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
LABEL_50:
    v60 = &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSg_ADtMd;
    v61 = &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSg_ADtMR;
    v62 = v136;
    goto LABEL_15;
  }

  v139 = v136 + v135;
  v140 = v146;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v139, v146, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
  v141 = specialized static CLP_LogEntry_PrivateData_KlobucharModelParameters.== infix(_:_:)(v127, v140);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v140, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
  outlined destroy of Any?(v78, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v127, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
  outlined destroy of Any?(v136, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  if (v141)
  {
    goto LABEL_52;
  }

LABEL_16:

  v81 = 0;
  return v81 & 1;
}

Swift::Int CLP_LogEntry_PrivateData_GlonassSlotInfo.hashValue.getter(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementReportCallbackContents and conformance CLP_LogEntry_PrivateData_MeasurementReportCallbackContents, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementReportCallbackContents and conformance CLP_LogEntry_PrivateData_MeasurementReportCallbackContents, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementReportCallbackContents and conformance CLP_LogEntry_PrivateData_MeasurementReportCallbackContents, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSd_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf46CLP_LogEntry_PrivateData_SignalCorrelationPeakV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v105 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v4 = *(v105 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v105);
  v99 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v100 = &v92 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSg_ADtMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSg_ADtMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v92 - v12;
  v106 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  v14 = *(v106 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v106);
  v101 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v102 = &v92 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSg_ADtMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSg_ADtMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v92 - v22;
  v108 = type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0);
  v24 = *(*(v108 - 1) + 64);
  v25 = MEMORY[0x28223BE20](v108);
  v109 = &v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v92 - v28;
  v30 = *(a1 + 16);
  if (v30 != *(a2 + 16))
  {
LABEL_71:
    v87 = 0;
    return v87 & 1;
  }

  if (!v30 || a1 == a2)
  {
    v87 = 1;
    return v87 & 1;
  }

  v31 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v32 = a1 + v31;
  v97 = v13;
  v98 = (v14 + 48);
  v33 = a2 + v31;
  v95 = (v4 + 48);
  v96 = v10;
  v93 = *(v27 + 72);
  v94 = v23;
  v34 = v106;
  v92 = v20;
  v107 = &v92 - v28;
  while (1)
  {
    v104 = v32;
    v35 = v29;
    result = outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v32, v29, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak);
    if (!v30)
    {
      break;
    }

    v37 = v109;
    v103 = v33;
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v33, v109, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak);
    v38 = v108[5];
    v39 = *(v20 + 48);
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(&v35[v38], v23, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v37 + v38, &v23[v39], &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
    v40 = *v98;
    if ((*v98)(v23, 1, v34) == 1)
    {
      if (v40(&v23[v39], 1, v34) != 1)
      {
        goto LABEL_64;
      }

      outlined destroy of Any?(v23, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
      v41 = v97;
    }

    else
    {
      v42 = v102;
      outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v23, v102, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
      if (v40(&v23[v39], 1, v34) == 1)
      {
        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v42, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
LABEL_64:
        v89 = &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSg_ADtMd;
        v90 = &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSg_ADtMR;
LABEL_65:
        v91 = v23;
        goto LABEL_69;
      }

      v43 = v101;
      outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v23[v39], v101, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
      v44 = v34[5];
      v45 = (v42 + v44);
      v46 = *(v42 + v44 + 8);
      v47 = (v43 + v44);
      v48 = *(v43 + v44 + 8);
      if (v46)
      {
        v41 = v97;
        if (!v48)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (*v45 != *v47)
        {
          LOBYTE(v48) = 1;
        }

        v41 = v97;
        if (v48)
        {
LABEL_61:
          outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v43, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
          outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v42, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
          v89 = &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd;
          v90 = &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR;
          goto LABEL_65;
        }
      }

      v49 = v34[6];
      v50 = (v42 + v49);
      v51 = *(v42 + v49 + 8);
      v52 = (v43 + v49);
      v53 = *(v43 + v49 + 8);
      if (v51)
      {
        if (!v53)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (*v50 != *v52)
        {
          LOBYTE(v53) = 1;
        }

        if (v53)
        {
          goto LABEL_61;
        }
      }

      v54 = v34[7];
      v55 = *(v42 + v54);
      v56 = *(v43 + v54);
      if (v55 == 2)
      {
        if (v56 != 2)
        {
          goto LABEL_61;
        }
      }

      else if (v56 == 2 || ((v55 ^ v56) & 1) != 0)
      {
        goto LABEL_61;
      }

      type metadata accessor for UnknownStorage();
      v57 = v42;
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v58 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v43, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v57, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
      outlined destroy of Any?(v23, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
      if ((v58 & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    v59 = v108[6];
    v60 = *(v96 + 48);
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(&v107[v59], v41, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v109 + v59, v41 + v60, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
    v61 = *v95;
    v62 = v105;
    if ((*v95)(v41, 1, v105) == 1)
    {
      if (v61(v41 + v60, 1, v62) != 1)
      {
        goto LABEL_67;
      }

      outlined destroy of Any?(v41, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
      v34 = v106;
      v23 = v94;
    }

    else
    {
      v63 = v100;
      outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v41, v100, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
      if (v61(v41 + v60, 1, v62) == 1)
      {
        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v63, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
LABEL_67:
        v89 = &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSg_ADtMd;
        v90 = &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSg_ADtMR;
LABEL_68:
        v91 = v41;
LABEL_69:
        outlined destroy of Any?(v91, v89, v90);
LABEL_70:
        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v109, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak);
        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v107, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak);
        goto LABEL_71;
      }

      v64 = v99;
      outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v41 + v60, v99, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
      v65 = v62[5];
      v66 = (v63 + v65);
      v67 = *(v63 + v65 + 8);
      v68 = (v64 + v65);
      v69 = *(v64 + v65 + 8);
      if (v67)
      {
        v34 = v106;
        v23 = v94;
        if (!v69)
        {
          goto LABEL_62;
        }
      }

      else
      {
        if (*v66 != *v68)
        {
          LOBYTE(v69) = 1;
        }

        v34 = v106;
        v23 = v94;
        if (v69)
        {
LABEL_62:
          outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v64, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
          outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v63, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
          v89 = &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd;
          v90 = &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR;
          goto LABEL_68;
        }
      }

      v70 = v62[6];
      v71 = (v63 + v70);
      v72 = *(v63 + v70 + 8);
      v73 = (v64 + v70);
      v74 = *(v64 + v70 + 8);
      if (v72)
      {
        if (!v74)
        {
          goto LABEL_62;
        }
      }

      else
      {
        if (*v71 != *v73)
        {
          LOBYTE(v74) = 1;
        }

        if (v74)
        {
          goto LABEL_62;
        }
      }

      v75 = v62[7];
      v76 = *(v63 + v75);
      v77 = *(v64 + v75);
      if (v76 == 2)
      {
        if (v77 != 2)
        {
          goto LABEL_62;
        }
      }

      else if (v77 == 2 || ((v76 ^ v77) & 1) != 0)
      {
        goto LABEL_62;
      }

      type metadata accessor for UnknownStorage();
      v78 = v63;
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v79 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v64, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v78, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
      outlined destroy of Any?(v41, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
      if ((v79 & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    v80 = v108[7];
    v81 = &v107[v80];
    v82 = v107[v80 + 4];
    v83 = (v109 + v80);
    v84 = *(v109 + v80 + 4);
    if (v82)
    {
      if (!v84)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (*v81 != *v83)
      {
        LOBYTE(v84) = 1;
      }

      if (v84)
      {
        goto LABEL_70;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v85 = v107;
    v86 = v109;
    v87 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v86, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v85, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak);
    if (v87)
    {
      v20 = v92;
      v33 = v103 + v93;
      v32 = v104 + v93;
      v88 = v30-- == 1;
      v29 = v107;
      if (!v88)
      {
        continue;
      }
    }

    return v87 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf41CLP_LogEntry_PrivateData_SvPositionAtTimeV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v64 = type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0);
  v4 = *(v64 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v64);
  v61 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v63 = &v56 - v9;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSg_ADtMR);
  v10 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v12 = &v56 - v11;
  v13 = type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v65 = &v56 - v19;
  v20 = *(a1 + 16);
  if (v20 != *(a2 + 16))
  {
    goto LABEL_42;
  }

  if (!v20 || a1 == a2)
  {
    v52 = 1;
    return v52 & 1;
  }

  v21 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v22 = a1 + v21;
  v62 = a2 + v21;
  v58 = v13;
  v59 = (v4 + 48);
  v57 = *(v18 + 72);
  while (1)
  {
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v22, v65, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v62, v17, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);
    v23 = *(v13 + 20);
    v24 = (v65 + v23);
    v25 = *(v65 + v23 + 8);
    v26 = &v17[v23];
    v27 = v26[8];
    if (v25)
    {
      if ((v26[8] & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else if ((v26[8] & 1) != 0 || *v24 != *v26)
    {
      goto LABEL_38;
    }

    v28 = *(v13 + 24);
    v29 = *(v60 + 48);
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v65 + v28, v12, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMR);
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(&v17[v28], &v12[v29], &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMR);
    v30 = *v59;
    if ((*v59)(v12, 1, v64) == 1)
    {
      break;
    }

    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v12, v63, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMR);
    if (v30(&v12[v29], 1, v64) == 1)
    {
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v17, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v65, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);
      v53 = type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef;
      v54 = v63;
      goto LABEL_41;
    }

    v31 = &v12[v29];
    v32 = v61;
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v31, v61, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
    v33 = v64[5];
    v34 = (v63 + v33);
    v35 = *(v63 + v33 + 8);
    v36 = (v32 + v33);
    v37 = *(v32 + v33 + 8);
    if (v35)
    {
      if (!v37)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (*v34 != *v36)
      {
        LOBYTE(v37) = 1;
      }

      if (v37)
      {
LABEL_37:
        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v61, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v63, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
        outlined destroy of Any?(v12, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMR);
LABEL_38:
        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v17, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);
        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v65, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);
        goto LABEL_42;
      }
    }

    v38 = v64[6];
    v39 = (v63 + v38);
    v40 = *(v63 + v38 + 8);
    v41 = (v61 + v38);
    v42 = *(v61 + v38 + 8);
    if (v40)
    {
      if (!v42)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (*v39 != *v41)
      {
        LOBYTE(v42) = 1;
      }

      if (v42)
      {
        goto LABEL_37;
      }
    }

    v43 = v64[7];
    v44 = (v63 + v43);
    v45 = *(v63 + v43 + 8);
    v46 = (v61 + v43);
    v47 = *(v61 + v43 + 8);
    if (v45)
    {
      if (!v47)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (*v44 != *v46)
      {
        LOBYTE(v47) = 1;
      }

      if (v47)
      {
        goto LABEL_37;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v48 = v63;
    v56 = v20;
    v49 = v61;
    v50 = dispatch thunk of static Equatable.== infix(_:_:)();
    v20 = v56;
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v49, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v48, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
    outlined destroy of Any?(v12, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMR);
    if ((v50 & 1) == 0)
    {
      goto LABEL_38;
    }

LABEL_33:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v51 = v65;
    v52 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v17, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v51, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);
    if (v52)
    {
      v13 = v58;
      v62 += v57;
      v22 += v57;
      if (--v20)
      {
        continue;
      }
    }

    return v52 & 1;
  }

  if (v30(&v12[v29], 1, v64) == 1)
  {
    outlined destroy of Any?(v12, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMR);
    goto LABEL_33;
  }

  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v17, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);
  v54 = v65;
  v53 = type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime;
LABEL_41:
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v54, v53);
  outlined destroy of Any?(v12, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSg_ADtMR);
LABEL_42:
  v52 = 0;
  return v52 & 1;
}