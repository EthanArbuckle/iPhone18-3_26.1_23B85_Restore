uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_DaemonLocation(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation and conformance CLP_LogEntry_PrivateData_DaemonLocation, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_DaemonLocation(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation and conformance CLP_LogEntry_PrivateData_DaemonLocation, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_DaemonLocation(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation and conformance CLP_LogEntry_PrivateData_DaemonLocation, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_MapMatcherData.decodeMessage<A>(decoder:)()
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
        v1 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0) + 28);
        goto LABEL_3;
      }

      if (result == 4)
      {
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0) + 32);
LABEL_3:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }
    }

    else if (result == 1)
    {
      v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0) + 20);
LABEL_14:
      v0 = 0;
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }

    else if (result == 2)
    {
      v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0) + 24);
      goto LABEL_14;
    }
  }
}

uint64_t CLP_LogEntry_PrivateData_MapMatcherData.traverse<A>(visitor:)()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
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

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_MapMatcherData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapMatcherData and conformance CLP_LogEntry_PrivateData_MapMatcherData, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_MapMatcherData(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapMatcherData and conformance CLP_LogEntry_PrivateData_MapMatcherData, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MapMatcherData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapMatcherData and conformance CLP_LogEntry_PrivateData_MapMatcherData, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_ClientLocationCoordinate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v8 & 1) != 0)
    {
      return result;
    }

    if (result == 1)
    {
      v6 = *(a4(0) + 20);
      goto LABEL_3;
    }

    if (result == 2)
    {
      v9 = *(a4(0) + 24);
LABEL_3:
      v4 = 0;
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }
}

uint64_t CLP_LogEntry_PrivateData_ClientLocationCoordinate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_PressureSample(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PressureSample and conformance CLP_LogEntry_PrivateData_PressureSample, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_PressureSample(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PressureSample and conformance CLP_LogEntry_PrivateData_PressureSample, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_PressureSample(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PressureSample and conformance CLP_LogEntry_PrivateData_PressureSample, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_ClientSatelliteInfo.decodeMessage<A>(decoder:)()
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

      if (result > 4)
      {
        if (result <= 6)
        {
          v5 = v0;
          if (result == 5)
          {
            v11 = *(type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0) + 36);
          }

          else
          {
            v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0) + 40);
          }

          goto LABEL_5;
        }

        if (result == 7)
        {
          v8 = v0;
          v12 = *(type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0) + 44);
        }

        else
        {
          if (result != 8)
          {
            goto LABEL_6;
          }

          v8 = v0;
          v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0) + 48);
        }

        v0 = v8;
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else
      {
        if (result > 2)
        {
          v5 = v0;
          if (result == 3)
          {
            v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0) + 28);
          }

          else
          {
            v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0) + 32);
          }

LABEL_5:
          v0 = v5;
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
          goto LABEL_6;
        }

        if (result == 1)
        {
          v10 = *(type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0) + 20);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_ClientSatelliteConstellation and conformance CLP_LogEntry_PrivateData_ClientSatelliteConstellation();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }

        else if (result == 2)
        {
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0) + 24);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
  v10 = result;
  if (*(v5 + *(result + 20)) == 7)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v17 = *(v5 + *(result + 20));
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_ClientSatelliteConstellation and conformance CLP_LogEntry_PrivateData_ClientSatelliteConstellation();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  v11 = (v5 + v10[6]);
  if ((v11[1] & 1) == 0)
  {
    v12 = *v11;
    dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  v13 = v5 + v10[7];
  if ((*(v13 + 4) & 1) == 0)
  {
    v14 = *v13;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  v15 = v5 + v10[8];
  if ((*(v15 + 4) & 1) == 0)
  {
    v16 = *v15;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  closure #5 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo);
  closure #6 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo);
  closure #7 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo);
  closure #8 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_ClientSatelliteInfo@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 7;
  v6 = a2 + v5;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
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
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_ClientSatelliteInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientSatelliteInfo and conformance CLP_LogEntry_PrivateData_ClientSatelliteInfo, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_ClientSatelliteInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientSatelliteInfo and conformance CLP_LogEntry_PrivateData_ClientSatelliteInfo, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_ClientSatelliteInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientSatelliteInfo and conformance CLP_LogEntry_PrivateData_ClientSatelliteInfo, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCoordinate, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialCoordinate, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCoordinate, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__satelliteVisibilityReport);

  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocationPrivate.decodeMessage<A>(decoder:)()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v6);

    *(v2 + v3) = v10;
  }

  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v1 || (v12 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 12:
      case 20:
      case 21:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 32:
      case 33:
      case 36:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 44:
      case 45:
      case 50:
      case 51:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        goto LABEL_26;
      case 6:
      case 7:
      case 8:
      case 18:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularFloatField(value:)();
        goto LABEL_26;
      case 9:
      case 15:
      case 23:
      case 31:
      case 34:
      case 43:
      case 53:
      case 56:
      case 57:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        goto LABEL_26;
      case 10:
        swift_beginAccess();
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType();
        goto LABEL_25;
      case 11:
      case 19:
      case 35:
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
        v13 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientLocationCoordinate and conformance CLP_LogEntry_PrivateData_ClientLocationCoordinate;
        v14 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate;
        goto LABEL_19;
      case 13:
      case 14:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        goto LABEL_26;
      case 16:
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_PressureSample(0);
        v13 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PressureSample and conformance CLP_LogEntry_PrivateData_PressureSample;
        v14 = type metadata accessor for CLP_LogEntry_PrivateData_PressureSample;
        goto LABEL_19;
      case 17:
        swift_beginAccess();
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType();
        goto LABEL_25;
      case 22:
        swift_beginAccess();
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType();
        goto LABEL_25;
      case 24:
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
        v13 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapMatcherData and conformance CLP_LogEntry_PrivateData_MapMatcherData;
        v14 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData;
        goto LABEL_19;
      case 37:
        swift_beginAccess();
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType and conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType();
        goto LABEL_25;
      case 46:
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientSatelliteInfo and conformance CLP_LogEntry_PrivateData_ClientSatelliteInfo, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        goto LABEL_26;
      case 47:
        swift_beginAccess();
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent();
        goto LABEL_25;
      case 48:
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
        v13 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo;
        v14 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo;
LABEL_19:
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(v13, v14);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        goto LABEL_26;
      case 49:
        swift_beginAccess();
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType();
        goto LABEL_25;
      case 52:
        swift_beginAccess();
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType();
        goto LABEL_25;
      case 54:
        swift_beginAccess();
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy();
        goto LABEL_25;
      case 55:
        swift_beginAccess();
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_BatchedLocationFixType and conformance CLP_LogEntry_PrivateData_BatchedLocationFixType();
LABEL_25:
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
LABEL_26:
        swift_endAccess();
        break;
      default:
        continue;
    }
  }
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20));
  result = swift_beginAccess();
  if ((*(v9 + 24) & 1) == 0)
  {
    v11 = *(v9 + 16);
    result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if (!v4)
  {
    swift_beginAccess();
    if ((*(v9 + 40) & 1) == 0)
    {
      v12 = *(v9 + 32);
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    swift_beginAccess();
    if ((*(v9 + 56) & 1) == 0)
    {
      v13 = *(v9 + 48);
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    swift_beginAccess();
    if ((*(v9 + 72) & 1) == 0)
    {
      v14 = *(v9 + 64);
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    closure #5 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(v9);
    closure #6 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(v9);
    closure #7 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(v9);
    closure #8 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(v9);
    closure #9 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(v9);
    closure #10 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(v9);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(v9, a1, a2, a3);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCourse);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchFormOfWay, 13, MEMORY[0x277D21848]);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchRoadClass, 14, MEMORY[0x277D21848]);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchShifted);
    closure #16 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(v9, a1, a2, a3);
    closure #17 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulationModel, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType);
    closure #12 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulation);
    closure #19 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(v9, a1, a2, a3);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialHorizontalAccuracy);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__machContinuousTime);
    closure #18 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__originDevice, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isMatcherPropagatedCoordinates);
    closure #24 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(v9, a1, a2, a3);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__slope);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__maxAbsSlope);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitude);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitudeUncertainty);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitude);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitudeUncertainty);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isSimulatedOrSpoofed);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawHorizontalAccuracy);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourseAccuracy);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFused);
    closure #35 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(v9, a1, a2, a3);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedHorizontalAccuracy);
    closure #18 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedReferenceFrame, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType and conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourse);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourseAccuracy);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedWorstCaseError);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingAltitude);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingVerticalAccuracy);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFusedWithVl);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedAltitude);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedVerticalAccuracy);
    v15 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__satelliteVisibilityReport;
    swift_beginAccess();
    if (*(*(v9 + v15) + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientSatelliteInfo and conformance CLP_LogEntry_PrivateData_ClientSatelliteInfo, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    closure #18 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__gnssContent, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent);
    closure #47 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(v9, a1, a2, a3);
    closure #18 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextState, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityIndoor);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityOutdoor);
    closure #17 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherType, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isRouteHintsTriggeredMapMatching);
    closure #18 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__loiLocationSourceAccuracy, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy);
    closure #17 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__batchedLocationFixType, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_BatchedLocationFixType and conformance CLP_LogEntry_PrivateData_BatchedLocationFixType);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isWifiFixWithAssociatedAp);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isGnssFromRavenEstimators);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #5 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 88) & 1) == 0)
  {
    v3 = *(a1 + 80);
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #9 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 113) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #10 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 114) != 4)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #11 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCoordinate;
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

uint64_t closure #16 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_PressureSample(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PressureSample and conformance CLP_LogEntry_PrivateData_PressureSample, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
}

uint64_t closure #19 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialCoordinate;
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

uint64_t closure #24 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapMatcherData and conformance CLP_LogEntry_PrivateData_MapMatcherData, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);
}

uint64_t closure #35 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCoordinate;
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

uint64_t closure #47 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);
}

uint64_t closure #17 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t))
{
  v8 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v8) != 4)
  {
    v10 = *(a1 + v8);
    a6(result);
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #17 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t))
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

uint64_t closure #1 in static CLP_LogEntry_PrivateData_DaemonLocationPrivate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v413 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
  v411 = *(v413 - 8);
  v4 = *(v411 + 64);
  MEMORY[0x28223BE20](v413);
  v412 = &v396 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v408 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSg_AFtMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSg_AFtMR);
  v6 = *(*(v408 - 8) + 64);
  MEMORY[0x28223BE20](v408);
  v414 = &v396 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v410 = &v396 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v409 = &v396 - v12;
  v403 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
  v401 = *(v403 - 8);
  v13 = *(v401 + 64);
  MEMORY[0x28223BE20](v403);
  v402 = &v396 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v398 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSg_ADtMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSg_ADtMR);
  v15 = *(*(v398 - 8) + 64);
  MEMORY[0x28223BE20](v398);
  v404 = &v396 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v400 = &v396 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v399 = &v396 - v21;
  v22 = type metadata accessor for CLP_LogEntry_PrivateData_PressureSample(0);
  v419 = *(v22 - 8);
  v23 = *(v419 + 64);
  MEMORY[0x28223BE20](v22);
  v418 = &v396 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSg_ADtMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSg_ADtMR);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v420 = &v396 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v32 = &v396 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v396 - v33;
  v35 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v423 = *(v35 - 8);
  v424 = v35;
  v36 = *(v423 + 64);
  MEMORY[0x28223BE20](v35);
  v421 = &v396 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v422 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSg_ADtMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSg_ADtMR);
  v38 = *(*(v422 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v422);
  v407 = &v396 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v417 = &v396 - v42;
  MEMORY[0x28223BE20](v41);
  v44 = &v396 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x28223BE20](v45 - 8);
  v406 = &v396 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v405 = &v396 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v415 = &v396 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v416 = &v396 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v57 = &v396 - v56;
  MEMORY[0x28223BE20](v55);
  v59 = &v396 - v58;
  swift_beginAccess();
  v60 = *(a1 + 16);
  v425 = a1;
  LOBYTE(a1) = *(a1 + 24);
  swift_beginAccess();
  v61 = *(a2 + 24);
  if (a1)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v60 != *(a2 + 16))
    {
      v61 = 1;
    }

    if (v61)
    {
      return 0;
    }
  }

  v426 = a2;
  v62 = v425;
  swift_beginAccess();
  v63 = *(v62 + 32);
  v64 = *(v62 + 40);
  swift_beginAccess();
  v65 = *(v426 + 40);
  if (v64)
  {
    if (!*(v426 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (v63 != *(v426 + 32))
    {
      v65 = 1;
    }

    if (v65)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v66 = *(v62 + 48);
  v67 = *(v62 + 56);
  swift_beginAccess();
  v68 = *(v426 + 56);
  if (v67)
  {
    if (!*(v426 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (v66 != *(v426 + 48))
    {
      v68 = 1;
    }

    if (v68)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v69 = *(v62 + 64);
  v70 = *(v62 + 72);
  swift_beginAccess();
  v71 = *(v426 + 72);
  if (v70)
  {
    if (!*(v426 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (v69 != *(v426 + 64))
    {
      v71 = 1;
    }

    if (v71)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v72 = *(v62 + 80);
  v73 = *(v62 + 88);
  swift_beginAccess();
  v74 = *(v426 + 88);
  if (v73)
  {
    if (!*(v426 + 88))
    {
      return 0;
    }
  }

  else
  {
    if (v72 != *(v426 + 80))
    {
      v74 = 1;
    }

    if (v74)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v75 = *(v62 + 92);
  v76 = *(v62 + 96);
  v397 = (v426 + 92);
  swift_beginAccess();
  v77 = *(v426 + 96);
  if (v76)
  {
    if (!*(v426 + 96))
    {
      return 0;
    }
  }

  else
  {
    if (v75 != *v397)
    {
      v77 = 1;
    }

    if (v77)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v78 = *(v62 + 100);
  v79 = *(v62 + 104);
  v397 = (v426 + 100);
  swift_beginAccess();
  v80 = *(v426 + 104);
  if (v79)
  {
    if (!*(v426 + 104))
    {
      return 0;
    }
  }

  else
  {
    if (v78 != *v397)
    {
      v80 = 1;
    }

    if (v80)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v81 = *(v62 + 108);
  v82 = *(v62 + 112);
  v397 = (v426 + 108);
  swift_beginAccess();
  v83 = *(v426 + 112);
  if (v82)
  {
    if (!*(v426 + 112))
    {
      return 0;
    }
  }

  else
  {
    if (v81 != *v397)
    {
      v83 = 1;
    }

    if (v83)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v84 = *(v62 + 113);
  swift_beginAccess();
  v85 = *(v426 + 113);
  if (v84 == 2)
  {
    if (v85 != 2)
    {
      return 0;
    }
  }

  else if (v85 == 2 || ((v84 ^ v85) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v86 = *(v62 + 114);
  swift_beginAccess();
  v87 = *(v426 + 114);
  if (v86 == 4)
  {
    if (v87 != 4)
    {
      return 0;
    }

LABEL_59:
    v89 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCoordinate;
    v90 = v425;
    swift_beginAccess();
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v90 + v89, v59, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
    v397 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCoordinate;
    v91 = v426;
    swift_beginAccess();
    v92 = *(v422 + 48);
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v59, v44, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
    v93 = v397 + v91;
    v397 = v92;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v93, v92 + v44, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
    v95 = v423 + 48;
    v94 = *(v423 + 48);
    if (v94(v44, 1, v424) == 1)
    {

      v96 = v426;

      outlined destroy of Any?(v59, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
      v97 = v94(v397 + v44, 1, v424);
      v98 = v425;
      if (v97 == 1)
      {
        v396 = v94;
        v423 = v95;
        outlined destroy of Any?(v44, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
        goto LABEL_67;
      }
    }

    else
    {
      outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v44, v57, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
      if (v94(v397 + v44, 1, v424) != 1)
      {
        v396 = v94;
        v423 = v95;
        v99 = v421;
        outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v397 + v44, v421, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);

        v100 = v426;

        LODWORD(v397) = specialized static CLP_LogEntry_PrivateData_GEOLocationCoordinate2D.== infix(_:_:)(v57, v99, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
        outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v99, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
        outlined destroy of Any?(v59, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
        v101 = v57;
        v96 = v100;
        v98 = v425;
        outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v101, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
        outlined destroy of Any?(v44, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
        if ((v397 & 1) == 0)
        {
          goto LABEL_94;
        }

LABEL_67:
        v102 = v98 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCourse;
        swift_beginAccess();
        v103 = *v102;
        v104 = *(v102 + 8);
        v105 = v96 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCourse;
        swift_beginAccess();
        v106 = *(v105 + 8);
        if (v104)
        {
          if ((*(v105 + 8) & 1) == 0)
          {
            goto LABEL_94;
          }
        }

        else if ((*(v105 + 8) & 1) != 0 || v103 != *v105)
        {
          goto LABEL_94;
        }

        v107 = (v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchFormOfWay);
        swift_beginAccess();
        v108 = *v107;
        v109 = *(v107 + 4);
        v110 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchFormOfWay;
        swift_beginAccess();
        v111 = *(v110 + 4);
        if (v109)
        {
          if ((*(v110 + 4) & 1) == 0)
          {
            goto LABEL_94;
          }
        }

        else if ((*(v110 + 4) & 1) != 0 || v108 != *v110)
        {
          goto LABEL_94;
        }

        v112 = (v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchRoadClass);
        swift_beginAccess();
        v113 = *v112;
        v114 = *(v112 + 4);
        v115 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchRoadClass;
        swift_beginAccess();
        v116 = *(v115 + 4);
        if (v114)
        {
          if ((*(v115 + 4) & 1) == 0)
          {
            goto LABEL_94;
          }
        }

        else if ((*(v115 + 4) & 1) != 0 || v113 != *v115)
        {
          goto LABEL_94;
        }

        v117 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchShifted;
        v118 = v425;
        swift_beginAccess();
        v119 = *(v118 + v117);
        v120 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchShifted;
        v121 = v426;
        swift_beginAccess();
        v122 = *(v121 + v120);
        if (v119 == 2)
        {
          if (v122 != 2)
          {
            goto LABEL_94;
          }
        }

        else if (v122 == 2 || ((v119 ^ v122) & 1) != 0)
        {
          goto LABEL_94;
        }

        v123 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure;
        v124 = v425;
        swift_beginAccess();
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v124 + v123, v34, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
        v125 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure;
        v126 = v426;
        swift_beginAccess();
        v127 = *(v25 + 48);
        v128 = v420;
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v34, v420, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v126 + v125, v128 + v127, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
        v129 = *(v419 + 48);
        if (v129(v128, 1, v22) == 1)
        {
          outlined destroy of Any?(v34, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
          if (v129(v420 + v127, 1, v22) == 1)
          {
            outlined destroy of Any?(v420, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
            goto LABEL_98;
          }
        }

        else
        {
          v130 = v420;
          outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v420, v32, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
          if (v129(v130 + v127, 1, v22) != 1)
          {
            v134 = v420;
            v135 = v418;
            outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v420 + v127, v418, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
            v136 = specialized static CLP_LogEntry_PrivateData_GEOLocationCoordinate2D.== infix(_:_:)(v32, v135, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
            outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v135, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
            outlined destroy of Any?(v34, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
            outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v32, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
            outlined destroy of Any?(v134, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
            if ((v136 & 1) == 0)
            {
              goto LABEL_94;
            }

LABEL_98:
            v137 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulationModel;
            v138 = v425;
            swift_beginAccess();
            v139 = *(v138 + v137);
            v140 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulationModel;
            v141 = v426;
            swift_beginAccess();
            v142 = *(v141 + v140);
            if (v139 == 4)
            {
              if (v142 != 4)
              {
                goto LABEL_94;
              }
            }

            else if (v142 == 4 || v139 != v142)
            {
              goto LABEL_94;
            }

            v143 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulation;
            swift_beginAccess();
            v144 = *v143;
            v145 = *(v143 + 4);
            v146 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulation;
            swift_beginAccess();
            v147 = *(v146 + 4);
            if (v145)
            {
              if ((*(v146 + 4) & 1) == 0)
              {
                goto LABEL_94;
              }
            }

            else if ((*(v146 + 4) & 1) != 0 || v144 != *v146)
            {
              goto LABEL_94;
            }

            v148 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialCoordinate;
            v149 = v425;
            swift_beginAccess();
            v150 = v416;
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v149 + v148, v416, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
            v151 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialCoordinate;
            v152 = v426;
            swift_beginAccess();
            v153 = *(v422 + 48);
            v154 = v150;
            v155 = v417;
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v154, v417, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v152 + v151, v155 + v153, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
            if (v396(v155, 1, v424) == 1)
            {
              outlined destroy of Any?(v416, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
              if (v396(v417 + v153, 1, v424) == 1)
              {
                outlined destroy of Any?(v417, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
                goto LABEL_115;
              }
            }

            else
            {
              v156 = v417;
              outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v417, v415, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
              if (v396(v156 + v153, 1, v424) != 1)
              {
                v157 = v417;
                v158 = v417 + v153;
                v159 = v421;
                outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v158, v421, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
                v160 = v415;
                v161 = specialized static CLP_LogEntry_PrivateData_GEOLocationCoordinate2D.== infix(_:_:)(v415, v159, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
                outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v159, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
                outlined destroy of Any?(v416, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
                outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v160, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
                outlined destroy of Any?(v157, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
                if ((v161 & 1) == 0)
                {
                  goto LABEL_94;
                }

LABEL_115:
                v162 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialHorizontalAccuracy;
                swift_beginAccess();
                v163 = *v162;
                v164 = *(v162 + 8);
                v165 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialHorizontalAccuracy;
                swift_beginAccess();
                v166 = *(v165 + 8);
                if (v164)
                {
                  if ((*(v165 + 8) & 1) == 0)
                  {
                    goto LABEL_94;
                  }
                }

                else if ((*(v165 + 8) & 1) != 0 || v163 != *v165)
                {
                  goto LABEL_94;
                }

                v167 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__machContinuousTime;
                swift_beginAccess();
                v168 = *v167;
                v169 = *(v167 + 8);
                v170 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__machContinuousTime;
                swift_beginAccess();
                v171 = *(v170 + 8);
                if (v169)
                {
                  if ((*(v170 + 8) & 1) == 0)
                  {
                    goto LABEL_94;
                  }
                }

                else if ((*(v170 + 8) & 1) != 0 || v168 != *v170)
                {
                  goto LABEL_94;
                }

                v172 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__originDevice;
                v173 = v425;
                swift_beginAccess();
                v174 = *(v173 + v172);
                v175 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__originDevice;
                v176 = v426;
                swift_beginAccess();
                v177 = *(v176 + v175);
                if (v174 == 3)
                {
                  if (v177 != 3)
                  {
                    goto LABEL_94;
                  }
                }

                else if (v177 == 3 || v174 != v177)
                {
                  goto LABEL_94;
                }

                v178 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isMatcherPropagatedCoordinates;
                v179 = v425;
                swift_beginAccess();
                v180 = *(v179 + v178);
                v181 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isMatcherPropagatedCoordinates;
                v182 = v426;
                swift_beginAccess();
                v183 = *(v182 + v181);
                if (v180 == 2)
                {
                  if (v183 != 2)
                  {
                    goto LABEL_94;
                  }
                }

                else if (v183 == 2 || ((v180 ^ v183) & 1) != 0)
                {
                  goto LABEL_94;
                }

                v184 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData;
                v185 = v425;
                swift_beginAccess();
                v186 = v399;
                outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v185 + v184, v399, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
                v187 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData;
                v188 = v426;
                swift_beginAccess();
                v189 = *(v398 + 48);
                v190 = v186;
                v191 = v404;
                outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v190, v404, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
                outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v188 + v187, v191 + v189, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
                v192 = *(v401 + 48);
                if (v192(v191, 1, v403) == 1)
                {
                  outlined destroy of Any?(v399, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
                  if (v192(v404 + v189, 1, v403) == 1)
                  {
                    outlined destroy of Any?(v404, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
                    goto LABEL_142;
                  }
                }

                else
                {
                  v193 = v404;
                  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v404, v400, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
                  if (v192(v193 + v189, 1, v403) != 1)
                  {
                    v194 = v404;
                    v195 = v404 + v189;
                    v196 = v402;
                    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v195, v402, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);
                    v197 = v400;
                    v198 = specialized static CLP_LogEntry_PrivateData_MapMatcherData.== infix(_:_:)(v400, v196);
                    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v196, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);
                    outlined destroy of Any?(v399, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
                    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v197, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);
                    outlined destroy of Any?(v194, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
                    if ((v198 & 1) == 0)
                    {
                      goto LABEL_94;
                    }

LABEL_142:
                    v199 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__slope;
                    swift_beginAccess();
                    v200 = *v199;
                    v201 = *(v199 + 8);
                    v202 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__slope;
                    swift_beginAccess();
                    v203 = *(v202 + 8);
                    if (v201)
                    {
                      if ((*(v202 + 8) & 1) == 0)
                      {
                        goto LABEL_94;
                      }
                    }

                    else if ((*(v202 + 8) & 1) != 0 || v200 != *v202)
                    {
                      goto LABEL_94;
                    }

                    v204 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__maxAbsSlope;
                    swift_beginAccess();
                    v205 = *v204;
                    v206 = *(v204 + 8);
                    v207 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__maxAbsSlope;
                    swift_beginAccess();
                    v208 = *(v207 + 8);
                    if (v206)
                    {
                      if ((*(v207 + 8) & 1) == 0)
                      {
                        goto LABEL_94;
                      }
                    }

                    else if ((*(v207 + 8) & 1) != 0 || v205 != *v207)
                    {
                      goto LABEL_94;
                    }

                    v209 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitude;
                    swift_beginAccess();
                    v210 = *v209;
                    v211 = *(v209 + 8);
                    v212 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitude;
                    swift_beginAccess();
                    v213 = *(v212 + 8);
                    if (v211)
                    {
                      if ((*(v212 + 8) & 1) == 0)
                      {
                        goto LABEL_94;
                      }
                    }

                    else if ((*(v212 + 8) & 1) != 0 || v210 != *v212)
                    {
                      goto LABEL_94;
                    }

                    v214 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitudeUncertainty;
                    swift_beginAccess();
                    v215 = *v214;
                    v216 = *(v214 + 8);
                    v217 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitudeUncertainty;
                    swift_beginAccess();
                    v218 = *(v217 + 8);
                    if (v216)
                    {
                      if ((*(v217 + 8) & 1) == 0)
                      {
                        goto LABEL_94;
                      }
                    }

                    else if ((*(v217 + 8) & 1) != 0 || v215 != *v217)
                    {
                      goto LABEL_94;
                    }

                    v219 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitude;
                    swift_beginAccess();
                    v220 = *v219;
                    v221 = *(v219 + 8);
                    v222 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitude;
                    swift_beginAccess();
                    v223 = *(v222 + 8);
                    if (v221)
                    {
                      if ((*(v222 + 8) & 1) == 0)
                      {
                        goto LABEL_94;
                      }
                    }

                    else if ((*(v222 + 8) & 1) != 0 || v220 != *v222)
                    {
                      goto LABEL_94;
                    }

                    v224 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitudeUncertainty;
                    swift_beginAccess();
                    v225 = *v224;
                    v226 = *(v224 + 8);
                    v227 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitudeUncertainty;
                    swift_beginAccess();
                    v228 = *(v227 + 8);
                    if (v226)
                    {
                      if ((*(v227 + 8) & 1) == 0)
                      {
                        goto LABEL_94;
                      }
                    }

                    else if ((*(v227 + 8) & 1) != 0 || v225 != *v227)
                    {
                      goto LABEL_94;
                    }

                    v229 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isSimulatedOrSpoofed;
                    v230 = v425;
                    swift_beginAccess();
                    v231 = *(v230 + v229);
                    v232 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isSimulatedOrSpoofed;
                    v233 = v426;
                    swift_beginAccess();
                    v234 = *(v233 + v232);
                    if (v231 == 2)
                    {
                      if (v234 != 2)
                      {
                        goto LABEL_94;
                      }
                    }

                    else if (v234 == 2 || ((v231 ^ v234) & 1) != 0)
                    {
                      goto LABEL_94;
                    }

                    v235 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawHorizontalAccuracy;
                    swift_beginAccess();
                    v236 = *v235;
                    v237 = *(v235 + 8);
                    v238 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawHorizontalAccuracy;
                    swift_beginAccess();
                    v239 = *(v238 + 8);
                    if (v237)
                    {
                      if ((*(v238 + 8) & 1) == 0)
                      {
                        goto LABEL_94;
                      }
                    }

                    else if ((*(v238 + 8) & 1) != 0 || v236 != *v238)
                    {
                      goto LABEL_94;
                    }

                    v240 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourseAccuracy;
                    swift_beginAccess();
                    v241 = *v240;
                    v242 = *(v240 + 8);
                    v243 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourseAccuracy;
                    swift_beginAccess();
                    v244 = *(v243 + 8);
                    if (v242)
                    {
                      if ((*(v243 + 8) & 1) == 0)
                      {
                        goto LABEL_94;
                      }
                    }

                    else if ((*(v243 + 8) & 1) != 0 || v241 != *v243)
                    {
                      goto LABEL_94;
                    }

                    v245 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFused;
                    v246 = v425;
                    swift_beginAccess();
                    v247 = *(v246 + v245);
                    v248 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFused;
                    v249 = v426;
                    swift_beginAccess();
                    v250 = *(v249 + v248);
                    if (v247 == 2)
                    {
                      if (v250 != 2)
                      {
                        goto LABEL_94;
                      }
                    }

                    else if (v250 == 2 || ((v247 ^ v250) & 1) != 0)
                    {
                      goto LABEL_94;
                    }

                    v251 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCoordinate;
                    v252 = v425;
                    swift_beginAccess();
                    v253 = v405;
                    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v252 + v251, v405, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
                    v254 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCoordinate;
                    v255 = v426;
                    swift_beginAccess();
                    v256 = *(v422 + 48);
                    v257 = v253;
                    v258 = v407;
                    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v257, v407, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
                    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v255 + v254, v258 + v256, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
                    if (v396(v258, 1, v424) == 1)
                    {
                      outlined destroy of Any?(v405, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
                      if (v396(v407 + v256, 1, v424) == 1)
                      {
                        outlined destroy of Any?(v407, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
LABEL_199:
                        v265 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedHorizontalAccuracy;
                        swift_beginAccess();
                        v266 = *v265;
                        v267 = *(v265 + 8);
                        v268 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedHorizontalAccuracy;
                        swift_beginAccess();
                        v269 = *(v268 + 8);
                        if (v267)
                        {
                          if ((*(v268 + 8) & 1) == 0)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if ((*(v268 + 8) & 1) != 0 || v266 != *v268)
                        {
                          goto LABEL_94;
                        }

                        v270 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedReferenceFrame;
                        v271 = v425;
                        swift_beginAccess();
                        v272 = *(v271 + v270);
                        v273 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedReferenceFrame;
                        v274 = v426;
                        swift_beginAccess();
                        v275 = *(v274 + v273);
                        if (v272 == 3)
                        {
                          if (v275 != 3)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if (v275 == 3 || v272 != v275)
                        {
                          goto LABEL_94;
                        }

                        v276 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourse;
                        swift_beginAccess();
                        v277 = *v276;
                        v278 = *(v276 + 8);
                        v279 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourse;
                        swift_beginAccess();
                        v280 = *(v279 + 8);
                        if (v278)
                        {
                          if ((*(v279 + 8) & 1) == 0)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if ((*(v279 + 8) & 1) != 0 || v277 != *v279)
                        {
                          goto LABEL_94;
                        }

                        v281 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourseAccuracy;
                        swift_beginAccess();
                        v282 = *v281;
                        v283 = *(v281 + 8);
                        v284 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourseAccuracy;
                        swift_beginAccess();
                        v285 = *(v284 + 8);
                        if (v283)
                        {
                          if ((*(v284 + 8) & 1) == 0)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if ((*(v284 + 8) & 1) != 0 || v282 != *v284)
                        {
                          goto LABEL_94;
                        }

                        v286 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedWorstCaseError;
                        swift_beginAccess();
                        v287 = *v286;
                        v288 = *(v286 + 8);
                        v289 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedWorstCaseError;
                        swift_beginAccess();
                        v290 = *(v289 + 8);
                        if (v288)
                        {
                          if ((*(v289 + 8) & 1) == 0)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if ((*(v289 + 8) & 1) != 0 || v287 != *v289)
                        {
                          goto LABEL_94;
                        }

                        v291 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingAltitude;
                        swift_beginAccess();
                        v292 = *v291;
                        v293 = *(v291 + 8);
                        v294 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingAltitude;
                        swift_beginAccess();
                        v295 = *(v294 + 8);
                        if (v293)
                        {
                          if ((*(v294 + 8) & 1) == 0)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if ((*(v294 + 8) & 1) != 0 || v292 != *v294)
                        {
                          goto LABEL_94;
                        }

                        v296 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingVerticalAccuracy;
                        swift_beginAccess();
                        v297 = *v296;
                        v298 = *(v296 + 8);
                        v299 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingVerticalAccuracy;
                        swift_beginAccess();
                        v300 = *(v299 + 8);
                        if (v298)
                        {
                          if ((*(v299 + 8) & 1) == 0)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if ((*(v299 + 8) & 1) != 0 || v297 != *v299)
                        {
                          goto LABEL_94;
                        }

                        v301 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFusedWithVl;
                        v302 = v425;
                        swift_beginAccess();
                        v303 = *(v302 + v301);
                        v304 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFusedWithVl;
                        v305 = v426;
                        swift_beginAccess();
                        v306 = *(v305 + v304);
                        if (v303 == 2)
                        {
                          if (v306 != 2)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if (v306 == 2 || ((v303 ^ v306) & 1) != 0)
                        {
                          goto LABEL_94;
                        }

                        v307 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedAltitude;
                        swift_beginAccess();
                        v308 = *v307;
                        v309 = *(v307 + 8);
                        v310 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedAltitude;
                        swift_beginAccess();
                        v311 = *(v310 + 8);
                        if (v309)
                        {
                          if ((*(v310 + 8) & 1) == 0)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if ((*(v310 + 8) & 1) != 0 || v308 != *v310)
                        {
                          goto LABEL_94;
                        }

                        v312 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedVerticalAccuracy;
                        swift_beginAccess();
                        v313 = *v312;
                        v314 = *(v312 + 8);
                        v315 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedVerticalAccuracy;
                        swift_beginAccess();
                        v316 = *(v315 + 8);
                        if (v314)
                        {
                          if ((*(v315 + 8) & 1) == 0)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if ((*(v315 + 8) & 1) != 0 || v313 != *v315)
                        {
                          goto LABEL_94;
                        }

                        v317 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__satelliteVisibilityReport;
                        v318 = v425;
                        swift_beginAccess();
                        v319 = *(v318 + v317);
                        v320 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__satelliteVisibilityReport;
                        v321 = v426;
                        swift_beginAccess();
                        v322 = *(v321 + v320);

                        LOBYTE(v321) = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSectionV_Tt1g5Tm(v319, v322, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo, specialized static CLP_LogEntry_PrivateData_ClientSatelliteInfo.== infix(_:_:));

                        if ((v321 & 1) == 0)
                        {
                          goto LABEL_94;
                        }

                        v323 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__gnssContent;
                        v324 = v425;
                        swift_beginAccess();
                        v325 = *(v324 + v323);
                        v326 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__gnssContent;
                        v327 = v426;
                        swift_beginAccess();
                        v328 = *(v327 + v326);
                        if (v325 == 3)
                        {
                          if (v328 != 3)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if (v328 == 3 || v325 != v328)
                        {
                          goto LABEL_94;
                        }

                        v329 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude;
                        v330 = v425;
                        swift_beginAccess();
                        v331 = v409;
                        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v330 + v329, v409, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
                        v332 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude;
                        v333 = v426;
                        swift_beginAccess();
                        v334 = *(v408 + 48);
                        v335 = v331;
                        v336 = v414;
                        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v335, v414, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
                        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v333 + v332, v336 + v334, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
                        v337 = *(v411 + 48);
                        if (v337(v336, 1, v413) == 1)
                        {
                          outlined destroy of Any?(v409, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
                          if (v337(v414 + v334, 1, v413) == 1)
                          {
                            outlined destroy of Any?(v414, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
LABEL_262:
                            v344 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextState;
                            v345 = v425;
                            swift_beginAccess();
                            v346 = *(v345 + v344);
                            v347 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextState;
                            v348 = v426;
                            swift_beginAccess();
                            v349 = *(v348 + v347);
                            if (v346 == 3)
                            {
                              if (v349 != 3)
                              {
                                goto LABEL_94;
                              }
                            }

                            else if (v349 == 3 || v346 != v349)
                            {
                              goto LABEL_94;
                            }

                            v350 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityIndoor;
                            swift_beginAccess();
                            v351 = *v350;
                            v352 = *(v350 + 8);
                            v353 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityIndoor;
                            swift_beginAccess();
                            v354 = *(v353 + 8);
                            if (v352)
                            {
                              if ((*(v353 + 8) & 1) == 0)
                              {
                                goto LABEL_94;
                              }
                            }

                            else if ((*(v353 + 8) & 1) != 0 || v351 != *v353)
                            {
                              goto LABEL_94;
                            }

                            v355 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityOutdoor;
                            swift_beginAccess();
                            v356 = *v355;
                            v357 = *(v355 + 8);
                            v358 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityOutdoor;
                            swift_beginAccess();
                            v359 = *(v358 + 8);
                            if (v357)
                            {
                              if ((*(v358 + 8) & 1) == 0)
                              {
                                goto LABEL_94;
                              }
                            }

                            else if ((*(v358 + 8) & 1) != 0 || v356 != *v358)
                            {
                              goto LABEL_94;
                            }

                            v360 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherType;
                            v361 = v425;
                            swift_beginAccess();
                            v362 = *(v361 + v360);
                            v363 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherType;
                            v364 = v426;
                            swift_beginAccess();
                            v365 = *(v364 + v363);
                            if (v362 == 4)
                            {
                              if (v365 != 4)
                              {
                                goto LABEL_94;
                              }
                            }

                            else if (v365 == 4 || v362 != v365)
                            {
                              goto LABEL_94;
                            }

                            v366 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isRouteHintsTriggeredMapMatching;
                            v367 = v425;
                            swift_beginAccess();
                            v368 = *(v367 + v366);
                            v369 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isRouteHintsTriggeredMapMatching;
                            v370 = v426;
                            swift_beginAccess();
                            v371 = *(v370 + v369);
                            if (v368 == 2)
                            {
                              if (v371 != 2)
                              {
                                goto LABEL_94;
                              }
                            }

                            else if (v371 == 2 || ((v368 ^ v371) & 1) != 0)
                            {
                              goto LABEL_94;
                            }

                            v372 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__loiLocationSourceAccuracy;
                            v373 = v425;
                            swift_beginAccess();
                            v374 = *(v373 + v372);
                            v375 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__loiLocationSourceAccuracy;
                            v376 = v426;
                            swift_beginAccess();
                            v377 = *(v376 + v375);
                            if (v374 == 3)
                            {
                              if (v377 != 3)
                              {
                                goto LABEL_94;
                              }
                            }

                            else if (v377 == 3 || v374 != v377)
                            {
                              goto LABEL_94;
                            }

                            v378 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__batchedLocationFixType;
                            v379 = v425;
                            swift_beginAccess();
                            v380 = *(v379 + v378);
                            v381 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__batchedLocationFixType;
                            v382 = v426;
                            swift_beginAccess();
                            v383 = *(v382 + v381);
                            if (v380 == 5)
                            {
                              if (v383 != 5)
                              {
                                goto LABEL_94;
                              }
                            }

                            else if (v383 == 5 || v380 != v383)
                            {
                              goto LABEL_94;
                            }

                            v384 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isWifiFixWithAssociatedAp;
                            v385 = v425;
                            swift_beginAccess();
                            v386 = *(v385 + v384);
                            v387 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isWifiFixWithAssociatedAp;
                            v388 = v426;
                            swift_beginAccess();
                            v389 = *(v388 + v387);
                            if (v386 != 2)
                            {
                              if (v389 == 2 || ((v386 ^ v389) & 1) != 0)
                              {
                                goto LABEL_94;
                              }

LABEL_302:
                              v390 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isGnssFromRavenEstimators;
                              v391 = v425;
                              swift_beginAccess();
                              v392 = *(v391 + v390);

                              v393 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isGnssFromRavenEstimators;
                              v394 = v426;
                              swift_beginAccess();
                              v395 = *(v394 + v393);

                              if (v392 == 2)
                              {
                                if (v395 != 2)
                                {
                                  return 0;
                                }
                              }

                              else if (v395 == 2 || ((v392 ^ v395) & 1) != 0)
                              {
                                return 0;
                              }

                              return 1;
                            }

                            if (v389 == 2)
                            {
                              goto LABEL_302;
                            }

LABEL_94:

                            return 0;
                          }
                        }

                        else
                        {
                          v338 = v414;
                          outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v414, v410, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
                          if (v337(v338 + v334, 1, v413) != 1)
                          {
                            v339 = v414;
                            v340 = v414 + v334;
                            v341 = v412;
                            outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v340, v412, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);
                            v342 = v410;
                            v343 = specialized static CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo.== infix(_:_:)(v410, v341);
                            outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v341, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);
                            outlined destroy of Any?(v409, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
                            outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v342, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);
                            outlined destroy of Any?(v339, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
                            if ((v343 & 1) == 0)
                            {
                              goto LABEL_94;
                            }

                            goto LABEL_262;
                          }

                          outlined destroy of Any?(v409, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
                          outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v410, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);
                        }

                        v131 = &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSg_AFtMd;
                        v132 = &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSg_AFtMR;
                        v133 = v414;
LABEL_93:
                        outlined destroy of Any?(v133, v131, v132);
                        goto LABEL_94;
                      }
                    }

                    else
                    {
                      v259 = v407;
                      outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v407, v406, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
                      if (v396(v259 + v256, 1, v424) != 1)
                      {
                        v260 = v407;
                        v261 = v407 + v256;
                        v262 = v421;
                        outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v261, v421, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
                        v263 = v406;
                        v264 = specialized static CLP_LogEntry_PrivateData_GEOLocationCoordinate2D.== infix(_:_:)(v406, v262, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
                        outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v262, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
                        outlined destroy of Any?(v405, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
                        outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v263, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
                        outlined destroy of Any?(v260, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
                        if ((v264 & 1) == 0)
                        {
                          goto LABEL_94;
                        }

                        goto LABEL_199;
                      }

                      outlined destroy of Any?(v405, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
                      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v406, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
                    }

                    v131 = &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSg_ADtMd;
                    v132 = &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSg_ADtMR;
                    v133 = v407;
                    goto LABEL_93;
                  }

                  outlined destroy of Any?(v399, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
                  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v400, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);
                }

                v131 = &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSg_ADtMd;
                v132 = &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSg_ADtMR;
                v133 = v404;
                goto LABEL_93;
              }

              outlined destroy of Any?(v416, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
              outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v415, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
            }

            v131 = &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSg_ADtMd;
            v132 = &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSg_ADtMR;
            v133 = v417;
            goto LABEL_93;
          }

          outlined destroy of Any?(v34, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
          outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v32, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
        }

        v131 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSg_ADtMd;
        v132 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSg_ADtMR;
        v133 = v420;
        goto LABEL_93;
      }

      outlined destroy of Any?(v59, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v57, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    }

    outlined destroy of Any?(v44, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSg_ADtMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSg_ADtMR);
    goto LABEL_94;
  }

  result = 0;
  if (v87 != 4 && v86 == v87)
  {
    goto LABEL_59;
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t *CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo.protoMessageName;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo.decodeMessage<A>(decoder:)()
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
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0) + 28);
LABEL_5:
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_6;
        }

        if (result == 4)
        {
          v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0) + 32);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          v3 = v0;
          v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0) + 20);
          goto LABEL_5;
        }

        if (result == 2)
        {
          v3 = v0;
          v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0) + 24);
          goto LABEL_5;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo.traverse<A>(visitor:)()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
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

  v8 = (v0 + v3[7]);
  if ((v8[1] & 1) == 0)
  {
    v9 = *v8;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if (*(v0 + v3[8]) != 4)
  {
    v10 = *(v0 + v3[8]);
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  *(a2 + v8) = 4;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_TechnologyStatus.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0) + 20);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_LocationType and conformance CLP_LogEntry_PrivateData_LocationType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0) + 24);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_TechnologyStatus.traverse<A>(visitor:)()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  v3 = result;
  if (*(v0 + *(result + 20)) == 14)
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v4 = *(v0 + *(result + 20));
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_LocationType and conformance CLP_LogEntry_PrivateData_LocationType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  if (*(v0 + *(v3 + 24)) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_TechnologyStatus(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TechnologyStatus and conformance CLP_LogEntry_PrivateData_TechnologyStatus, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_TechnologyStatus(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TechnologyStatus and conformance CLP_LogEntry_PrivateData_TechnologyStatus, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_TechnologyStatus(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TechnologyStatus and conformance CLP_LogEntry_PrivateData_TechnologyStatus, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_VehicleSpeed(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_VehicleSpeed and conformance CLP_LogEntry_PrivateData_VehicleSpeed, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_VehicleSpeed(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_VehicleSpeed and conformance CLP_LogEntry_PrivateData_VehicleSpeed, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_VehicleSpeed(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_VehicleSpeed and conformance CLP_LogEntry_PrivateData_VehicleSpeed, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_VehicleHeading(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_VehicleHeading and conformance CLP_LogEntry_PrivateData_VehicleHeading, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_VehicleHeading(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_VehicleHeading and conformance CLP_LogEntry_PrivateData_VehicleHeading, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_VehicleHeading(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_VehicleHeading and conformance CLP_LogEntry_PrivateData_VehicleHeading, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_XtraFileAvailable.decodeMessage<A>(decoder:)()
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
      v1 = *(type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0) + 20);
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }

    else if (result == 2)
    {
      v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0) + 24);
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_XtraFileAvailable.traverse<A>(visitor:)()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
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
  if (v6[1])
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_XtraFileAvailable@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = *(a1 + 24);
  v6 = a2 + *(a1 + 20);
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_XtraFileAvailable(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_XtraFileAvailable and conformance CLP_LogEntry_PrivateData_XtraFileAvailable, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_XtraFileAvailable(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_XtraFileAvailable and conformance CLP_LogEntry_PrivateData_XtraFileAvailable, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_XtraFileAvailable(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_XtraFileAvailable and conformance CLP_LogEntry_PrivateData_XtraFileAvailable, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_TimeStamp.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_LocationDerivedSpeed(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationDerivedSpeed and conformance CLP_LogEntry_PrivateData_LocationDerivedSpeed, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_LocationDerivedSpeed(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationDerivedSpeed and conformance CLP_LogEntry_PrivateData_LocationDerivedSpeed, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_LocationDerivedSpeed(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationDerivedSpeed and conformance CLP_LogEntry_PrivateData_LocationDerivedSpeed, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_Location._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v92 = &v77 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v91 = &v77 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v90 = &v77 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v89 = &v77 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v88 = &v77 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v84 = &v77 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v80 = &v77 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v77 - v26;
  v28 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v29 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v29 - 8) + 56))(v1 + v28, 1, 1, v29);
  v30 = v1 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  *v30 = 0;
  *(v30 + 4) = 1;
  v31 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location;
  v32 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0);
  (*(*(v32 - 8) + 56))(v1 + v31, 1, 1, v32);
  v33 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  v77 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  v34 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0);
  (*(*(v34 - 8) + 56))(v1 + v33, 1, 1, v34);
  v35 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  v78 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  v36 = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  (*(*(v36 - 8) + 56))(v1 + v35, 1, 1, v36);
  v79 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__active;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__active) = 2;
  v37 = v1 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__odometer;
  *v37 = 0;
  *(v37 + 8) = 1;
  v81 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalQuality;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalQuality) = 3;
  v38 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  v82 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  v39 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
  (*(*(v39 - 8) + 56))(v1 + v38, 1, 1, v39);
  v40 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  v83 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  v41 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0);
  (*(*(v41 - 8) + 56))(v1 + v40, 1, 1, v41);
  v42 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  v85 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  v43 = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
  (*(*(v43 - 8) + 56))(v1 + v42, 1, 1, v43);
  v86 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__motionDetected;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__motionDetected) = 3;
  v44 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  v87 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  v45 = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
  (*(*(v45 - 8) + 56))(v1 + v44, 1, 1, v45);
  v46 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v46, v27, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v27, v1 + v28, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_endAccess();
  v47 = a1 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  LODWORD(v28) = *v47;
  LOBYTE(v47) = *(v47 + 4);
  swift_beginAccess();
  *v30 = v28;
  *(v30 + 4) = v47;
  v48 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location;
  swift_beginAccess();
  v49 = v80;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v48, v80, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v49, v1 + v31, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
  swift_endAccess();
  v50 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  swift_beginAccess();
  v51 = v84;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v50, v84, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
  v52 = v77;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v51, v1 + v52, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
  swift_endAccess();
  v53 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  swift_beginAccess();
  v54 = v88;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v53, v88, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
  v55 = v78;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v54, v1 + v55, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
  swift_endAccess();
  v56 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__active;
  swift_beginAccess();
  LOBYTE(v56) = *(a1 + v56);
  v57 = v79;
  swift_beginAccess();
  *(v1 + v57) = v56;
  v58 = (a1 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__odometer);
  swift_beginAccess();
  v59 = *v58;
  LOBYTE(v58) = *(v58 + 8);
  swift_beginAccess();
  *v37 = v59;
  *(v37 + 8) = v58;
  v60 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalQuality;
  swift_beginAccess();
  LOBYTE(v60) = *(a1 + v60);
  v61 = v81;
  swift_beginAccess();
  *(v1 + v61) = v60;
  v62 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  swift_beginAccess();
  v63 = v89;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v62, v89, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
  v64 = v82;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v63, v1 + v64, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
  swift_endAccess();
  v65 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  swift_beginAccess();
  v66 = v90;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v65, v90, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
  v67 = v83;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v66, v1 + v67, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
  swift_endAccess();
  v68 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  swift_beginAccess();
  v69 = v91;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v68, v91, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
  v70 = v85;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v69, v1 + v70, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
  swift_endAccess();
  v71 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__motionDetected;
  swift_beginAccess();
  LOBYTE(v71) = *(a1 + v71);
  v72 = v86;
  swift_beginAccess();
  *(v1 + v72) = v71;
  v73 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  swift_beginAccess();
  v74 = v92;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v73, v92, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);

  v75 = v87;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v74, v1 + v75, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
  swift_endAccess();
  return v1;
}

uint64_t CLP_LogEntry_PrivateData_Location._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t CLP_LogEntry_PrivateData_Location.decodeMessage<A>(decoder:)()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    CLP_LogEntry_PrivateData_Location._StorageClass.init(copying:)(v6);
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
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp;
          goto LABEL_21;
        case 2:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_22;
        case 3:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation and conformance CLP_LogEntry_PrivateData_DaemonLocation;
          goto LABEL_21;
        case 4:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate;
          goto LABEL_21;
        case 5:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TechnologyStatus and conformance CLP_LogEntry_PrivateData_TechnologyStatus;
          goto LABEL_21;
        case 6:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_22;
        case 7:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_22;
        case 8:
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_Location.SignalQualityType and conformance CLP_LogEntry_PrivateData_Location.SignalQualityType();
          goto LABEL_15;
        case 9:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_VehicleSpeed and conformance CLP_LogEntry_PrivateData_VehicleSpeed;
          goto LABEL_21;
        case 10:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_VehicleHeading and conformance CLP_LogEntry_PrivateData_VehicleHeading;
          goto LABEL_21;
        case 11:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_XtraFileAvailable and conformance CLP_LogEntry_PrivateData_XtraFileAvailable;
          goto LABEL_21;
        case 12:
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_Location.MotionDetectedType and conformance CLP_LogEntry_PrivateData_Location.MotionDetectedType();
LABEL_15:
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_22;
        case 13:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationDerivedSpeed and conformance CLP_LogEntry_PrivateData_LocationDerivedSpeed;
LABEL_21:
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(v14, v13);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_22:
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

uint64_t CLP_LogEntry_PrivateData_Location.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  result = closure #1 in closure #1 in CLP_LogEntry_PrivateData_Location.traverse<A>(visitor:)(v8, a1, a2, a3);
  if (!v4)
  {
    v10 = (v8 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client);
    swift_beginAccess();
    if ((v10[1] & 1) == 0)
    {
      v11 = *v10;
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    closure #3 in closure #1 in CLP_LogEntry_PrivateData_Location.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #4 in closure #1 in CLP_LogEntry_PrivateData_Location.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #5 in closure #1 in CLP_LogEntry_PrivateData_Location.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__active);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__odometer);
    closure #18 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalQuality, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_Location.SignalQualityType and conformance CLP_LogEntry_PrivateData_Location.SignalQualityType);
    closure #9 in closure #1 in CLP_LogEntry_PrivateData_Location.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #10 in closure #1 in CLP_LogEntry_PrivateData_Location.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_Location.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #18 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__motionDetected, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_Location.MotionDetectedType and conformance CLP_LogEntry_PrivateData_Location.MotionDetectedType);
    closure #13 in closure #1 in CLP_LogEntry_PrivateData_Location.traverse<A>(visitor:)(v8, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in CLP_LogEntry_PrivateData_Location.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t closure #3 in closure #1 in CLP_LogEntry_PrivateData_Location.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation and conformance CLP_LogEntry_PrivateData_DaemonLocation, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
}

uint64_t closure #4 in closure #1 in CLP_LogEntry_PrivateData_Location.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
}

uint64_t closure #5 in closure #1 in CLP_LogEntry_PrivateData_Location.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TechnologyStatus and conformance CLP_LogEntry_PrivateData_TechnologyStatus, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
}

uint64_t closure #9 in closure #1 in CLP_LogEntry_PrivateData_Location.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_VehicleSpeed and conformance CLP_LogEntry_PrivateData_VehicleSpeed, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
}

uint64_t closure #10 in closure #1 in CLP_LogEntry_PrivateData_Location.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_VehicleHeading and conformance CLP_LogEntry_PrivateData_VehicleHeading, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
}

uint64_t closure #11 in closure #1 in CLP_LogEntry_PrivateData_Location.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_XtraFileAvailable and conformance CLP_LogEntry_PrivateData_XtraFileAvailable, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
}

uint64_t closure #13 in closure #1 in CLP_LogEntry_PrivateData_Location.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationDerivedSpeed and conformance CLP_LogEntry_PrivateData_LocationDerivedSpeed, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
}

BOOL closure #1 in static CLP_LogEntry_PrivateData_Location.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v275 = a2;
  v229 = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
  v226 = *(v229 - 8);
  v3 = *(v226 + 64);
  MEMORY[0x28223BE20](v229);
  v223 = &v223 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSg_ADtMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSg_ADtMR);
  v5 = *(*(v224 - 8) + 64);
  MEMORY[0x28223BE20](v224);
  v230 = &v223 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v225 = &v223 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v228 = &v223 - v11;
  v238 = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
  v234 = *(v238 - 8);
  v12 = *(v234 + 64);
  MEMORY[0x28223BE20](v238);
  v227 = &v223 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSg_ADtMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSg_ADtMR);
  v14 = *(*(v232 - 8) + 64);
  MEMORY[0x28223BE20](v232);
  v242 = &v223 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v233 = &v223 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v237 = &v223 - v20;
  v21 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0);
  v240 = *(v21 - 8);
  v241 = v21;
  v22 = *(v240 + 64);
  MEMORY[0x28223BE20](v21);
  v231 = &v223 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSg_ADtMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSg_ADtMR);
  v24 = *(*(v239 - 8) + 64);
  MEMORY[0x28223BE20](v239);
  v245 = &v223 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v235 = &v223 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v244 = &v223 - v30;
  v31 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
  v247 = *(v31 - 8);
  v248 = v31;
  v32 = *(v247 + 64);
  MEMORY[0x28223BE20](v31);
  v236 = &v223 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSg_ADtMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSg_ADtMR);
  v34 = *(*(v246 - 8) + 64);
  MEMORY[0x28223BE20](v246);
  v249 = &v223 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36 - 8);
  v243 = &v223 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v257 = &v223 - v40;
  v41 = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  v254 = *(v41 - 8);
  v255 = v41;
  v42 = *(v254 + 64);
  MEMORY[0x28223BE20](v41);
  v250 = &v223 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSg_ADtMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSg_ADtMR);
  v44 = *(*(v253 - 8) + 64);
  MEMORY[0x28223BE20](v253);
  v256 = &v223 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x28223BE20](v46 - 8);
  v251 = &v223 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v258 = &v223 - v50;
  v51 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0);
  v262 = *(v51 - 8);
  v263 = v51;
  v52 = *(v262 + 64);
  MEMORY[0x28223BE20](v51);
  v252 = &v223 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSg_ADtMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSg_ADtMR);
  v54 = *(*(v261 - 8) + 64);
  MEMORY[0x28223BE20](v261);
  v264 = &v223 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
  v57 = *(*(v56 - 8) + 64);
  v58 = MEMORY[0x28223BE20](v56 - 8);
  v260 = &v223 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v265 = &v223 - v60;
  v61 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0);
  v268 = *(v61 - 8);
  v269 = v61;
  v62 = *(v268 + 64);
  MEMORY[0x28223BE20](v61);
  v259 = &v223 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSg_ADtMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSg_ADtMR);
  v64 = *(*(v267 - 8) + 64);
  MEMORY[0x28223BE20](v267);
  v270 = &v223 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
  v67 = *(*(v66 - 8) + 64);
  v68 = MEMORY[0x28223BE20](v66 - 8);
  v266 = &v223 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68);
  v272 = &v223 - v70;
  v274 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v71 = *(v274 - 8);
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v274);
  v271 = &v223 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v75 = v74 - 8;
  v76 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v78 = &v223 - v77;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v80 = *(*(v79 - 8) + 64);
  v81 = MEMORY[0x28223BE20](v79 - 8);
  v273 = &v223 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v81);
  v84 = &v223 - v83;
  v85 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v85, v84, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v86 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v87 = v275;
  swift_beginAccess();
  v88 = *(v75 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v84, v78, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v89 = v87 + v86;
  v90 = v274;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v89, &v78[v88], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v91 = *(v71 + 48);
  if (v91(v78, 1, v90) == 1)
  {

    outlined destroy of Any?(v84, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    if (v91(&v78[v88], 1, v90) == 1)
    {
      outlined destroy of Any?(v78, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_11;
    }

LABEL_6:
    v93 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd;
    v94 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR;
    v95 = v78;
LABEL_7:
    outlined destroy of Any?(v95, v93, v94);
    goto LABEL_8;
  }

  v92 = v273;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v78, v273, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v91(&v78[v88], 1, v90) == 1)
  {

    outlined destroy of Any?(v84, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v92, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  v97 = v271;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v78[v88], v271, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

  v98 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v92, v97, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v97, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v84, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v92, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v78, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v98 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v99 = (a1 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client);
  swift_beginAccess();
  v100 = *v99;
  v101 = *(v99 + 4);
  v102 = v87 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  v103 = *(v102 + 4);
  if (v101)
  {
    v104 = v272;
    if ((*(v102 + 4) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v104 = v272;
    if ((*(v102 + 4) & 1) != 0 || v100 != *v102)
    {
      goto LABEL_8;
    }
  }

  v105 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v105, v104, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
  v106 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location;
  swift_beginAccess();
  v107 = *(v267 + 48);
  v108 = v270;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v104, v270, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v87 + v106, v108 + v107, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
  v109 = v269;
  v110 = *(v268 + 48);
  if (v110(v108, 1, v269) == 1)
  {
    outlined destroy of Any?(v104, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
    if (v110(v108 + v107, 1, v109) == 1)
    {
      outlined destroy of Any?(v108, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
      goto LABEL_25;
    }

LABEL_21:
    v93 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSg_ADtMd;
    v94 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSg_ADtMR;
LABEL_31:
    v95 = v108;
    goto LABEL_7;
  }

  v111 = v266;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v108, v266, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
  if (v110(v108 + v107, 1, v109) == 1)
  {
    outlined destroy of Any?(v272, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v111, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
    goto LABEL_21;
  }

  v112 = v109;
  v113 = v259;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v108 + v107, v259, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
  v114 = *(v112 + 20);
  v115 = *(v111 + v114);
  v116 = *(v113 + v114);
  if (v115 != v116)
  {

    v117 = closure #1 in static CLP_LogEntry_PrivateData_DaemonLocation.== infix(_:_:)(v115, v116);

    if ((v117 & 1) == 0)
    {
      v148 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation;
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v113, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
      v149 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd;
      v150 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR;
      outlined destroy of Any?(v272, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
      v151 = v266;
LABEL_48:
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v151, v148);
      v95 = v108;
      v93 = v149;
      v94 = v150;
      goto LABEL_7;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v118 = v266;
  v119 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v113, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
  outlined destroy of Any?(v272, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v118, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
  outlined destroy of Any?(v108, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
  if ((v119 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_25:
  v120 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  swift_beginAccess();
  v121 = v265;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v120, v265, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
  v122 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  swift_beginAccess();
  v123 = *(v261 + 48);
  v124 = v264;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v121, v264, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
  v125 = v87 + v122;
  v108 = v124;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v125, v124 + v123, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
  v126 = *(v262 + 48);
  v127 = v124;
  v128 = v263;
  if (v126(v127, 1, v263) == 1)
  {
    outlined destroy of Any?(v121, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
    if (v126(v108 + v123, 1, v128) == 1)
    {
      outlined destroy of Any?(v108, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  v129 = v260;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v108, v260, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
  if (v126(v108 + v123, 1, v128) == 1)
  {
    outlined destroy of Any?(v265, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v129, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
LABEL_30:
    v93 = &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSg_ADtMd;
    v94 = &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSg_ADtMR;
    goto LABEL_31;
  }

  v130 = v128;
  v131 = v252;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v108 + v123, v252, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
  v132 = *(v130 + 20);
  v133 = *(v129 + v132);
  v134 = *(v131 + v132);
  if (v133 != v134)
  {

    v135 = closure #1 in static CLP_LogEntry_PrivateData_DaemonLocationPrivate.== infix(_:_:)(v133, v134);

    if ((v135 & 1) == 0)
    {
      v148 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate;
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v131, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
      v149 = &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd;
      v150 = &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR;
      outlined destroy of Any?(v265, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
      v151 = v260;
      goto LABEL_48;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v136 = v260;
  v137 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v131, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
  outlined destroy of Any?(v265, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v136, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
  outlined destroy of Any?(v108, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
  if ((v137 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_35:
  v138 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  swift_beginAccess();
  v139 = v258;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v138, v258, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
  v140 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  swift_beginAccess();
  v141 = *(v253 + 48);
  v142 = v256;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v139, v256, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
  v143 = v142;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v87 + v140, v142 + v141, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
  v144 = v255;
  v145 = *(v254 + 48);
  if (v145(v142, 1, v255) == 1)
  {
    outlined destroy of Any?(v139, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
    v146 = v145(v142 + v141, 1, v144);
    v147 = v257;
    if (v146 == 1)
    {
      outlined destroy of Any?(v142, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
      goto LABEL_44;
    }

LABEL_41:
    v93 = &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSg_ADtMd;
    v94 = &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSg_ADtMR;
LABEL_42:
    v95 = v143;
    goto LABEL_7;
  }

  v152 = v251;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v142, v251, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
  v153 = v145(v142 + v141, 1, v144);
  v147 = v257;
  if (v153 == 1)
  {
    outlined destroy of Any?(v258, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v152, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
    goto LABEL_41;
  }

  v154 = v142 + v141;
  v155 = v250;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v154, v250, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
  v156 = specialized static CLP_LogEntry_PrivateData_TechnologyStatus.== infix(_:_:)(v152, v155);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v155, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
  outlined destroy of Any?(v258, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v152, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
  outlined destroy of Any?(v142, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
  if ((v156 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_44:
  v157 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__active;
  swift_beginAccess();
  v158 = *(a1 + v157);
  v159 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__active;
  swift_beginAccess();
  v160 = *(v87 + v159);
  if (v158 == 2)
  {
    if (v160 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (v160 == 2 || ((v158 ^ v160) & 1) != 0)
  {
    goto LABEL_8;
  }

  v161 = a1 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__odometer;
  swift_beginAccess();
  v162 = *v161;
  v163 = *(v161 + 8);
  v164 = v87 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__odometer;
  swift_beginAccess();
  v165 = *(v164 + 8);
  if (v163)
  {
    if ((*(v164 + 8) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((*(v164 + 8) & 1) != 0 || v162 != *v164)
  {
    goto LABEL_8;
  }

  v166 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalQuality;
  swift_beginAccess();
  v167 = *(a1 + v166);
  v168 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalQuality;
  swift_beginAccess();
  v169 = *(v87 + v168);
  if (v167 == 3)
  {
    if (v169 != 3)
    {
      goto LABEL_8;
    }
  }

  else if (v169 == 3 || v167 != v169)
  {
    goto LABEL_8;
  }

  v170 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v170, v147, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
  v171 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  swift_beginAccess();
  v172 = *(v246 + 48);
  v173 = v249;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v147, v249, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
  v143 = v173;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v87 + v171, v173 + v172, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
  v174 = v248;
  v175 = *(v247 + 48);
  if (v175(v173, 1, v248) == 1)
  {
    outlined destroy of Any?(v147, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
    if (v175(v173 + v172, 1, v174) == 1)
    {
      outlined destroy of Any?(v173, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
      v177 = v244;
      v176 = v245;
      goto LABEL_68;
    }

    goto LABEL_66;
  }

  v178 = v243;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v173, v243, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
  if (v175(v173 + v172, 1, v174) == 1)
  {
    outlined destroy of Any?(v147, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v178, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
LABEL_66:
    v93 = &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSg_ADtMd;
    v94 = &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSg_ADtMR;
    goto LABEL_42;
  }

  v179 = v173 + v172;
  v180 = v236;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v179, v236, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
  v181 = specialized static CLP_LogEntry_PrivateData_VehicleSpeed.== infix(_:_:)(v178, v180, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v180, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
  outlined destroy of Any?(v147, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v178, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
  outlined destroy of Any?(v173, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
  v177 = v244;
  v176 = v245;
  if ((v181 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_68:
  v182 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v182, v177, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
  v183 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  swift_beginAccess();
  v184 = *(v239 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v177, v176, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v87 + v183, v176 + v184, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
  v185 = v241;
  v186 = *(v240 + 48);
  if (v186(v176, 1, v241) == 1)
  {
    outlined destroy of Any?(v177, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
    if (v186(v176 + v184, 1, v185) == 1)
    {
      outlined destroy of Any?(v176, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
      goto LABEL_75;
    }

    goto LABEL_73;
  }

  v187 = v235;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v176, v235, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
  if (v186(v176 + v184, 1, v185) == 1)
  {
    outlined destroy of Any?(v177, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v187, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
LABEL_73:
    v93 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSg_ADtMd;
    v94 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSg_ADtMR;
    v95 = v176;
    goto LABEL_7;
  }

  v188 = v176 + v184;
  v189 = v231;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v188, v231, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
  v190 = specialized static CLP_LogEntry_PrivateData_GEOLocationCoordinate2D.== infix(_:_:)(v187, v189, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v189, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
  outlined destroy of Any?(v177, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v187, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
  outlined destroy of Any?(v176, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
  if ((v190 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_75:
  v191 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  swift_beginAccess();
  v192 = a1;
  v193 = a1 + v191;
  v194 = v237;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v193, v237, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
  v195 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  swift_beginAccess();
  v196 = *(v232 + 48);
  v197 = v242;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v194, v242, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
  v198 = v87;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v87 + v195, v197 + v196, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
  v199 = *(v234 + 48);
  if (v199(v197, 1, v238) == 1)
  {
    outlined destroy of Any?(v237, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
    if (v199(v242 + v196, 1, v238) == 1)
    {
      outlined destroy of Any?(v242, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
      goto LABEL_83;
    }

LABEL_80:
    outlined destroy of Any?(v242, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSg_ADtMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSg_ADtMR);
    goto LABEL_8;
  }

  v200 = v242;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v242, v233, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
  if (v199(v200 + v196, 1, v238) == 1)
  {
    outlined destroy of Any?(v237, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v233, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
    goto LABEL_80;
  }

  v201 = v242;
  v202 = v242 + v196;
  v203 = v227;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v202, v227, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
  v204 = v233;
  v205 = specialized static CLP_LogEntry_PrivateData_XtraFileAvailable.== infix(_:_:)(v233, v203);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v203, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
  outlined destroy of Any?(v237, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v204, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
  outlined destroy of Any?(v201, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
  if ((v205 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_83:
  v206 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__motionDetected;
  swift_beginAccess();
  v207 = *(v192 + v206);
  v208 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__motionDetected;
  swift_beginAccess();
  v209 = *(v198 + v208);
  if (v207 == 3)
  {
    if (v209 == 3)
    {
      goto LABEL_88;
    }

LABEL_8:

    return 0;
  }

  if (v209 == 3 || v207 != v209)
  {
    goto LABEL_8;
  }

LABEL_88:
  v210 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  swift_beginAccess();
  v211 = v228;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v192 + v210, v228, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
  v212 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  swift_beginAccess();
  v213 = *(v224 + 48);
  v214 = v211;
  v215 = v230;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v214, v230, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v198 + v212, v215 + v213, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
  v216 = *(v226 + 48);
  if (v216(v215, 1, v229) != 1)
  {
    v217 = v230;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v230, v225, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
    if (v216(v217 + v213, 1, v229) == 1)
    {

      outlined destroy of Any?(v228, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v225, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
      goto LABEL_93;
    }

    v218 = v230;
    v219 = v230 + v213;
    v220 = v223;
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v219, v223, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
    v221 = v225;
    v222 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v225, v220, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);

    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v220, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
    outlined destroy of Any?(v228, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v221, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
    outlined destroy of Any?(v218, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
    return (v222 & 1) != 0;
  }

  outlined destroy of Any?(v228, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
  if (v216(v230 + v213, 1, v229) != 1)
  {
LABEL_93:
    outlined destroy of Any?(v230, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSg_ADtMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSg_ADtMR);
    return 0;
  }

  outlined destroy of Any?(v230, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
  return 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_Location(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location and conformance CLP_LogEntry_PrivateData_Location, type metadata accessor for CLP_LogEntry_PrivateData_Location);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_Location(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location and conformance CLP_LogEntry_PrivateData_Location, type metadata accessor for CLP_LogEntry_PrivateData_Location);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_Location(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location and conformance CLP_LogEntry_PrivateData_Location, type metadata accessor for CLP_LogEntry_PrivateData_Location);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_BatchedLocations.decodeMessage<A>(decoder:)()
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

      if (result == 1)
      {
        break;
      }

      if (result == 2)
      {
        v3 = v0;
        type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v3 = v0;
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0);
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation and conformance CLP_LogEntry_PrivateData_DaemonLocation, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
LABEL_5:
    v0 = v3;
    dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
    goto LABEL_6;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_BatchedLocations.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0), lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation and conformance CLP_LogEntry_PrivateData_DaemonLocation, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    if (!*(v0[1] + 16) || (type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0), lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
    {
      v3 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BatchedLocations(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t static CLP_LogEntry_PrivateData_BatchedLocations.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationV_Tt1g5Tm(*a1, *a2, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation, closure #1 in static CLP_LogEntry_PrivateData_DaemonLocation.== infix(_:_:)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationV_Tt1g5Tm(a1[1], a2[1], type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate, closure #1 in static CLP_LogEntry_PrivateData_DaemonLocationPrivate.== infix(_:_:)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_BatchedLocations(0) + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_BatchedLocations@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v2;
  v3 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance CLP_LogEntry_PrivateData_BatchedLocations(uint64_t a1, uint64_t a2))()
{
  result = ALFWiFiScanResultsRequester.query(options:callback:start:end:);
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_BatchedLocations(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchedLocations and conformance CLP_LogEntry_PrivateData_BatchedLocations, type metadata accessor for CLP_LogEntry_PrivateData_BatchedLocations);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_BatchedLocations(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchedLocations and conformance CLP_LogEntry_PrivateData_BatchedLocations, type metadata accessor for CLP_LogEntry_PrivateData_BatchedLocations);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_BatchedLocations(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchedLocations and conformance CLP_LogEntry_PrivateData_BatchedLocations, type metadata accessor for CLP_LogEntry_PrivateData_BatchedLocations);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CLP_LogEntry_PrivateData_BatchedLocations(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationV_Tt1g5Tm(*a1, *a2, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation, closure #1 in static CLP_LogEntry_PrivateData_DaemonLocation.== infix(_:_:)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationV_Tt1g5Tm(a1[1], a2[1], type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate, closure #1 in static CLP_LogEntry_PrivateData_DaemonLocationPrivate.== infix(_:_:)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate.decodeMessage<A>(decoder:)()
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
        break;
      }

      switch(result)
      {
        case 3:
          v7 = v0;
          v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0) + 28);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_RhythmicGnssWakeMode and conformance CLP_LogEntry_PrivateData_RhythmicGnssWakeMode();
LABEL_18:
          v0 = v7;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        case 4:
          v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0) + 32);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 5:
          v4 = v0;
          v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0) + 36);
LABEL_15:
          v0 = v4;
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result != 1)
    {
      if (result != 2)
      {
        goto LABEL_5;
      }

      v4 = v0;
      v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0) + 24);
      goto LABEL_15;
    }

    v7 = v0;
    v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0) + 20);
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GnssModeOfOperation and conformance CLP_LogEntry_PrivateData_GnssModeOfOperation();
    goto LABEL_18;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
  v10 = result;
  if (*(v5 + *(result + 20)) == 3)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v13 = *(v5 + *(result + 20));
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GnssModeOfOperation and conformance CLP_LogEntry_PrivateData_GnssModeOfOperation();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(v5 + v10[6]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v5 + v10[7]) != 5)
  {
    v14 = *(v5 + v10[7]);
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_RhythmicGnssWakeMode and conformance CLP_LogEntry_PrivateData_RhythmicGnssWakeMode();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  v11 = (v5 + v10[8]);
  if ((v11[1] & 1) == 0)
  {
    v12 = *v11;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #5 in CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 3;
  *(a2 + v5) = 2;
  v6 = a1[8];
  *(a2 + a1[7]) = 5;
  v7 = a2 + v6;
  *v7 = 0;
  *(v7 + 4) = 1;
  *(a2 + a1[9]) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate and conformance CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate, type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate and conformance CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate, type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate and conformance CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate, type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_RhythmicStreamingControl.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_RhythmicStreamingControl(0) + 20);
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_RhythmicStreamingControl.traverse<A>(visitor:)()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicStreamingControl(0);
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

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_RhythmicStreamingControl@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  *(a2 + *(a1 + 20)) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_RhythmicStreamingControl(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RhythmicStreamingControl and conformance CLP_LogEntry_PrivateData_RhythmicStreamingControl, type metadata accessor for CLP_LogEntry_PrivateData_RhythmicStreamingControl);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_RhythmicStreamingControl(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RhythmicStreamingControl and conformance CLP_LogEntry_PrivateData_RhythmicStreamingControl, type metadata accessor for CLP_LogEntry_PrivateData_RhythmicStreamingControl);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_RhythmicStreamingControl(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RhythmicStreamingControl and conformance CLP_LogEntry_PrivateData_RhythmicStreamingControl, type metadata accessor for CLP_LogEntry_PrivateData_RhythmicStreamingControl);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_MotionActivity.decodeMessage<A>(decoder:)()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_MotionActivity._StorageClass.init(copying:)(v6);

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
        case 12:
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DominantMotionModeType and conformance CLP_LogEntry_PrivateData_DominantMotionModeType();
          goto LABEL_16;
        case 2:
        case 4:
        case 13:
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType();
          goto LABEL_16;
        case 3:
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionActivity.MountedStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.MountedStateType();
          goto LABEL_16;
        case 5:
        case 8:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_17;
        case 6:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
          goto LABEL_17;
        case 7:
        case 10:
        case 11:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_17;
        case 9:
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType();
          goto LABEL_16;
        case 14:
        case 15:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_17;
        case 16:
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType();
LABEL_16:
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
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

uint64_t CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 16) == 72)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DominantMotionModeType and conformance CLP_LogEntry_PrivateData_DominantMotionModeType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (*(v9 + 17) != 4)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  swift_beginAccess();
  if (*(v9 + 18) != 3)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionActivity.MountedStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.MountedStateType();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  swift_beginAccess();
  if (*(v9 + 19) != 4)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  swift_beginAccess();
  if (*(v9 + 20) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v9 + 28) & 1) == 0)
  {
    v11 = *(v9 + 24);
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  closure #7 in closure #1 in CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(v9);
  closure #8 in closure #1 in CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(v9);
  closure #9 in closure #1 in CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(v9);
  closure #10 in closure #1 in CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(v9);
  closure #11 in closure #1 in CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(v9);
  closure #12 in closure #1 in CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(v9);
  closure #13 in closure #1 in CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(v9);
  closure #14 in closure #1 in CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #15 in closure #1 in CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #16 in closure #1 in CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(v9);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #7 in closure #1 in CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 40) & 1) == 0)
  {
    v3 = *(a1 + 32);
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #8 in closure #1 in CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 41) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #9 in closure #1 in CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 42) != 4)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #10 in closure #1 in CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 56) & 1) == 0)
  {
    v3 = *(a1 + 48);
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #11 in closure #1 in CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 72) & 1) == 0)
  {
    v3 = *(a1 + 64);
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #12 in closure #1 in CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 73) != 72)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DominantMotionModeType and conformance CLP_LogEntry_PrivateData_DominantMotionModeType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #13 in closure #1 in CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 74) != 4)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #14 in closure #1 in CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t closure #15 in closure #1 in CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t closure #16 in closure #1 in CLP_LogEntry_PrivateData_MotionActivity.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicularConfidence;
  result = swift_beginAccess();
  if (*(a1 + v2) != 6)
  {
    v4 = *(a1 + v2);
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

BOOL closure #1 in static CLP_LogEntry_PrivateData_MotionActivity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  v80 = v4;
  v81 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v78 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v79 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v75 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v75 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v75 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v75 - v25;
  swift_beginAccess();
  v27 = *(a1 + 16);
  swift_beginAccess();
  v28 = *(a2 + 16);
  if (v27 == 72)
  {
    if (v28 != 72)
    {
      return 0;
    }
  }

  else if (v28 == 72 || qword_23D1C6DD8[v27] != qword_23D1C6DD8[v28])
  {
    return 0;
  }

  swift_beginAccess();
  v29 = *(a1 + 17);
  swift_beginAccess();
  v30 = *(a2 + 17);
  if (v29 == 4)
  {
    if (v30 != 4)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v30 == 4 || v29 != v30)
    {
      return result;
    }
  }

  swift_beginAccess();
  v32 = *(a1 + 18);
  swift_beginAccess();
  v33 = *(a2 + 18);
  if (v32 == 3)
  {
    if (v33 != 3)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v33 == 3 || v32 != v33)
    {
      return result;
    }
  }

  swift_beginAccess();
  v34 = *(a1 + 19);
  swift_beginAccess();
  v35 = *(a2 + 19);
  if (v34 == 4)
  {
    if (v35 != 4)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v35 == 4 || v34 != v35)
    {
      return result;
    }
  }

  swift_beginAccess();
  v36 = *(a1 + 20);
  swift_beginAccess();
  v37 = *(a2 + 20);
  if (v36 == 2)
  {
    if (v37 != 2)
    {
      return 0;
    }
  }

  else if (v37 == 2 || ((v36 ^ v37) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v38 = *(a1 + 24);
  v39 = *(a1 + 28);
  v77 = (a2 + 24);
  swift_beginAccess();
  v40 = *(a2 + 28);
  if (v39)
  {
    if (!*(a2 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (v38 != *v77)
    {
      v40 = 1;
    }

    if (v40)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v41 = *(a1 + 32);
  v42 = *(a1 + 40);
  swift_beginAccess();
  v43 = *(a2 + 40);
  if (v42)
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (v41 != *(a2 + 32))
    {
      v43 = 1;
    }

    if (v43)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v44 = *(a1 + 41);
  swift_beginAccess();
  v45 = *(a2 + 41);
  if (v44 == 2)
  {
    if (v45 != 2)
    {
      return 0;
    }
  }

  else if (v45 == 2 || ((v44 ^ v45) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v46 = *(a1 + 42);
  swift_beginAccess();
  v47 = *(a2 + 42);
  if (v46 == 4)
  {
    if (v47 != 4)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v47 == 4 || v46 != v47)
    {
      return result;
    }
  }

  swift_beginAccess();
  v48 = *(a1 + 48);
  v49 = *(a1 + 56);
  swift_beginAccess();
  v50 = *(a2 + 56);
  if (v49)
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (v48 != *(a2 + 48))
    {
      v50 = 1;
    }

    if (v50)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v51 = *(a1 + 64);
  v52 = *(a1 + 72);
  swift_beginAccess();
  v53 = *(a2 + 72);
  if (v52)
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (v51 != *(a2 + 64))
    {
      v53 = 1;
    }

    if (v53)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v54 = *(a1 + 73);
  swift_beginAccess();
  v55 = *(a2 + 73);
  if (v54 == 72)
  {
    if (v55 != 72)
    {
      return 0;
    }
  }

  else if (v55 == 72 || qword_23D1C6DD8[v54] != qword_23D1C6DD8[v55])
  {
    return 0;
  }

  swift_beginAccess();
  v56 = *(a1 + 74);
  swift_beginAccess();
  v57 = *(a2 + 74);
  if (v56 == 4)
  {
    if (v57 != 4)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v57 == 4 || v56 != v57)
    {
      return result;
    }
  }

  v58 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v58, v26, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v77 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  v59 = *(v8 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v26, v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v76 = v59;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v77 + a2, &v13[v59], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v60 = *(v81 + 48);
  v81 += 48;
  v77 = v60;
  if ((v60)(v13, 1, v80) == 1)
  {

    outlined destroy of Any?(v26, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    if ((v77)(&v13[v76], 1, v80) == 1)
    {
      outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_77;
    }

LABEL_75:
    v61 = v13;
LABEL_83:
    outlined destroy of Any?(v61, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
    goto LABEL_84;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v13, v24, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v77)(&v13[v76], 1, v80) == 1)
  {

    outlined destroy of Any?(v26, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v24, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_75;
  }

  v62 = v78;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v13[v76], v78, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

  LODWORD(v76) = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v24, v62, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v62, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v26, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v24, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v76 & 1) == 0)
  {
    goto LABEL_84;
  }

LABEL_77:
  v63 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v63, v21, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v64 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  swift_beginAccess();
  v65 = *(v8 + 48);
  v66 = v79;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v21, v79, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v64, v66 + v65, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v77)(v66, 1, v80) != 1)
  {
    v67 = v79;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v79, v18, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    if ((v77)(v67 + v65, 1, v80) == 1)
    {
      outlined destroy of Any?(v21, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v18, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      goto LABEL_82;
    }

    v68 = v78;
    v69 = v79;
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v79 + v65, v78, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    v70 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v18, v68, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v68, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    outlined destroy of Any?(v21, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v18, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    outlined destroy of Any?(v69, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    if (v70)
    {
      goto LABEL_88;
    }

LABEL_84:

    return 0;
  }

  outlined destroy of Any?(v21, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v77)(v79 + v65, 1, v80) != 1)
  {
LABEL_82:
    v61 = v79;
    goto LABEL_83;
  }

  outlined destroy of Any?(v79, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
LABEL_88:
  v71 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicularConfidence;
  swift_beginAccess();
  v72 = *(a1 + v71);

  v73 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicularConfidence;
  swift_beginAccess();
  v74 = *(a2 + v73);

  if (v72 == 6)
  {
    return v74 == 6;
  }

  result = 0;
  if (v74 != 6 && v72 == v74)
  {
    return 1;
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_MotionActivity(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity and conformance CLP_LogEntry_PrivateData_MotionActivity, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_MotionActivity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity and conformance CLP_LogEntry_PrivateData_MotionActivity, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MotionActivity(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity and conformance CLP_LogEntry_PrivateData_MotionActivity, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_MotionState.decodeMessage<A>(decoder:)()
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
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionState(0) + 24);
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        goto LABEL_5;
      }

      if (result == 1)
      {
        v4 = v0;
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionState(0) + 20);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
        v7 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp;
LABEL_12:
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(v7, v6);
        v0 = v4;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v4 = v0;
    v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionState(0) + 28);
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity;
    v7 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity and conformance CLP_LogEntry_PrivateData_MotionActivity;
    goto LABEL_12;
  }

  return result;
}

uint64_t closure #3 in CLP_LogEntry_PrivateData_MotionState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_MotionState(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 28), v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity and conformance CLP_LogEntry_PrivateData_MotionActivity, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_MotionState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionState and conformance CLP_LogEntry_PrivateData_MotionState, type metadata accessor for CLP_LogEntry_PrivateData_MotionState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_MotionState(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionState and conformance CLP_LogEntry_PrivateData_MotionState, type metadata accessor for CLP_LogEntry_PrivateData_MotionState);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MotionState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionState and conformance CLP_LogEntry_PrivateData_MotionState, type metadata accessor for CLP_LogEntry_PrivateData_MotionState);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_WorkoutUpdate.decodeMessage<A>(decoder:)()
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
          v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0) + 28);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 4)
        {
          v5 = v0;
          v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0) + 32);
LABEL_15:
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DominantMotionModeType and conformance CLP_LogEntry_PrivateData_DominantMotionModeType();
          v0 = v5;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          v5 = v0;
          v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0) + 20);
          goto LABEL_15;
        }

        if (result == 2)
        {
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0) + 24);
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_WorkoutUpdate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  v10 = result;
  if (*(v5 + *(result + 20)) == 72)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v13 = *(v5 + *(result + 20));
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DominantMotionModeType and conformance CLP_LogEntry_PrivateData_DominantMotionModeType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  v11 = v5 + *(v10 + 24);
  if ((*(v11 + 8) & 1) == 0)
  {
    v12 = *v11;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  closure #3 in CLP_LogEntry_PrivateData_WorkoutUpdate.traverse<A>(visitor:)(v5, a1, a2, a3);
  if (*(v5 + *(v10 + 32)) != 72)
  {
    v14 = *(v5 + *(v10 + 32));
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DominantMotionModeType and conformance CLP_LogEntry_PrivateData_DominantMotionModeType();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #3 in CLP_LogEntry_PrivateData_WorkoutUpdate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 28), v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_WorkoutUpdate@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  *(a2 + a1[5]) = 72;
  v5 = a2 + v4;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a1[7];
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  *(a2 + a1[8]) = 72;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_WorkoutUpdate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutUpdate and conformance CLP_LogEntry_PrivateData_WorkoutUpdate, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_WorkoutUpdate(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutUpdate and conformance CLP_LogEntry_PrivateData_WorkoutUpdate, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_WorkoutUpdate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutUpdate and conformance CLP_LogEntry_PrivateData_WorkoutUpdate, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_MotionStateObserver.decodeMessage<A>(decoder:)()
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
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver(0) + 24);
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        goto LABEL_5;
      }

      if (result == 1)
      {
        v4 = v0;
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver(0) + 20);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
        v7 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp;
LABEL_12:
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(v7, v6);
        v0 = v4;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v4 = v0;
    v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver(0) + 28);
    type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate;
    v7 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutUpdate and conformance CLP_LogEntry_PrivateData_WorkoutUpdate;
    goto LABEL_12;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_MotionState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v6;
  result = closure #1 in CLP_LogEntry_PrivateData_AccelSample.traverse<A>(visitor:)(v10, a1, a2, a3, a4);
  if (!v7)
  {
    v15 = (v10 + *(a5(0) + 24));
    if ((v15[1] & 1) == 0)
    {
      v16 = *v15;
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    a6(v10, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #3 in CLP_LogEntry_PrivateData_MotionStateObserver.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 28), v8, &_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutUpdate and conformance CLP_LogEntry_PrivateData_WorkoutUpdate, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_MotionState@<X0>(int *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  UnknownStorage.init()();
  v6 = a1[5];
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v7 - 8) + 56))(a3 + v6, 1, 1, v7);
  v8 = a1[6];
  v9 = a1[7];
  v10 = a3 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a2(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a3 + v9, 1, 1, v11);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_MotionStateObserver(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionStateObserver and conformance CLP_LogEntry_PrivateData_MotionStateObserver, type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_MotionStateObserver(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionStateObserver and conformance CLP_LogEntry_PrivateData_MotionStateObserver, type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MotionStateObserver(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionStateObserver and conformance CLP_LogEntry_PrivateData_MotionStateObserver, type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_WorkoutSettings.decodeMessage<A>(decoder:)()
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
          v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 20);
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_6;
          }

          v6 = v0;
          v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 24);
        }

        v0 = v6;
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      else
      {
        switch(result)
        {
          case 3:
            v3 = v0;
            v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 28);
            lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType();
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 4:
            v3 = v0;
            v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 32);
            lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType();
            goto LABEL_5;
          case 5:
            v3 = v0;
            v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 36);
            lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode();
            goto LABEL_5;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_WorkoutSettings.traverse<A>(visitor:)()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  v3 = result;
  v4 = (v0 + *(result + 20));
  if (v4[1])
  {
    v5 = *v4;
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  else if (v1)
  {
    return result;
  }

  v6 = (v0 + v3[6]);
  if (v6[1])
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (*(v0 + v3[7]) != 67)
  {
    v8 = *(v0 + v3[7]);
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  if (*(v0 + v3[8]) != 5)
  {
    v9 = *(v0 + v3[8]);
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  closure #5 in CLP_LogEntry_PrivateData_WorkoutSettings.traverse<A>(visitor:)(v0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #5 in CLP_LogEntry_PrivateData_WorkoutSettings.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  if (*(a1 + *(result + 36)) != 3)
  {
    v3 = *(a1 + *(result + 36));
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_WorkoutSettings@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  *(a2 + a1[7]) = 67;
  *(a2 + v8) = 5;
  *(a2 + a1[9]) = 3;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_WorkoutSettings(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings and conformance CLP_LogEntry_PrivateData_WorkoutSettings, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_WorkoutSettings(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings and conformance CLP_LogEntry_PrivateData_WorkoutSettings, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_WorkoutSettings(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings and conformance CLP_LogEntry_PrivateData_WorkoutSettings, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_WorkoutEvent.decodeMessage<A>(decoder:)()
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
          v4 = v0;
          v10 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0) + 20);
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

          v4 = v0;
          v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0) + 24);
        }
      }

      else
      {
        if (result == 3)
        {
          v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0) + 28);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WorkoutEvent.EventType and conformance CLP_LogEntry_PrivateData_WorkoutEvent.EventType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_5;
        }

        if (result != 4)
        {
          if (result != 5)
          {
            goto LABEL_5;
          }

          v4 = v0;
          v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0) + 36);
          type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
          v6 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings;
          v7 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings and conformance CLP_LogEntry_PrivateData_WorkoutSettings;
          goto LABEL_18;
        }

        v4 = v0;
        v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0) + 32);
      }

      type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
      v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
      v7 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp;
LABEL_18:
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(v7, v6);
      v0 = v4;
      dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_WorkoutEvent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in CLP_LogEntry_PrivateData_AccelSample.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
  if (!v4)
  {
    closure #2 in CLP_LogEntry_PrivateData_WorkoutEvent.traverse<A>(visitor:)(v5, a1, a2, a3);
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
    if (*(v5 + *(v10 + 28)) != 19)
    {
      v11 = *(v5 + *(v10 + 28));
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WorkoutEvent.EventType and conformance CLP_LogEntry_PrivateData_WorkoutEvent.EventType();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    closure #4 in CLP_LogEntry_PrivateData_WorkoutEvent.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent, 4);
    closure #5 in CLP_LogEntry_PrivateData_WorkoutEvent.traverse<A>(visitor:)(v5, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #2 in CLP_LogEntry_PrivateData_WorkoutEvent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
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

uint64_t closure #5 in CLP_LogEntry_PrivateData_WorkoutEvent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 36), v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings and conformance CLP_LogEntry_PrivateData_WorkoutSettings, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_WorkoutEvent@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v6 = *(*(v5 - 8) + 56);
  v6(a2 + v4, 1, 1, v5);
  v6(a2 + a1[6], 1, 1, v5);
  v7 = a1[8];
  *(a2 + a1[7]) = 19;
  v6(a2 + v7, 1, 1, v5);
  v8 = a1[9];
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a2 + v8, 1, 1, v9);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_WorkoutEvent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutEvent and conformance CLP_LogEntry_PrivateData_WorkoutEvent, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_WorkoutEvent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutEvent and conformance CLP_LogEntry_PrivateData_WorkoutEvent, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_WorkoutEvent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutEvent and conformance CLP_LogEntry_PrivateData_WorkoutEvent, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - v9;
  v11 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  v13 = v1 + OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
  v15 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v16, v10, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v10, v1 + v11, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_endAccess();
  v17 = (a1 + OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client);
  swift_beginAccess();
  v18 = *v17;
  LOBYTE(v11) = *(v17 + 4);
  swift_beginAccess();
  *v13 = v18;
  *(v13 + 4) = v11;
  v19 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v19, v6, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);

  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v1 + v14, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
  swift_endAccess();
  return v1;
}

uint64_t CLP_LogEntry_PrivateData_MotionActivity._StorageClass.__deallocating_deinit(void *a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  outlined destroy of Any?(v4 + *a1, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined destroy of Any?(v4 + *a2, a3, a4);
  v8 = *(*v4 + 48);
  v9 = *(*v4 + 52);

  return MEMORY[0x2821FE8D8](v4, v8, v9);
}

uint64_t CLP_LogEntry_PrivateData_MotionStateMediator.decodeMessage<A>(decoder:)()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass.init(copying:)(v6);
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

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        goto LABEL_7;
      }

      if (result == 1)
      {
        v13 = v1;
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        v14 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
        v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp;
        goto LABEL_15;
      }

LABEL_8:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v13 = v1;
    swift_beginAccess();
    type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
    v14 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent;
    v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutEvent and conformance CLP_LogEntry_PrivateData_WorkoutEvent;
LABEL_15:
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(v15, v14);
    v1 = v13;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_7:
    swift_endAccess();
    goto LABEL_8;
  }

  return result;
}

uint64_t closure #1 in closure #1 in CLP_LogEntry_PrivateData_MotionStateMediator.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t closure #3 in closure #1 in CLP_LogEntry_PrivateData_MotionStateMediator.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutEvent and conformance CLP_LogEntry_PrivateData_WorkoutEvent, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
}

BOOL closure #1 in static CLP_LogEntry_PrivateData_MotionStateMediator.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v65 = a2;
  v59 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  v58 = *(v59 - 8);
  v3 = *(v58 + 64);
  MEMORY[0x28223BE20](v59);
  v56 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSg_ADtMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSg_ADtMR);
  v5 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v60 = &v55 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v63 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v62 = &v55 - v11;
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v61 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v55 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v64 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v55 - v25;
  v27 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  v28 = a1 + v27;
  v29 = v65;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v28, v26, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v30 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  v31 = *(v17 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v26, v20, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v29 + v30, &v20[v31], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v32 = *(v13 + 48);
  if (v32(v20, 1, v12) == 1)
  {

    outlined destroy of Any?(v26, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    v33 = v32(&v20[v31], 1, v12);
    v34 = a1;
    if (v33 == 1)
    {
      outlined destroy of Any?(v20, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_11;
    }

LABEL_6:
    outlined destroy of Any?(v20, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
    goto LABEL_7;
  }

  v35 = a1;
  v36 = v64;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v20, v64, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v32(&v20[v31], 1, v12) == 1)
  {

    outlined destroy of Any?(v26, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v36, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  v38 = v61;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v20[v31], v61, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

  v39 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v36, v38, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v38, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v26, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v36, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v34 = v35;
  outlined destroy of Any?(v20, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v39 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  v40 = (v34 + OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client);
  swift_beginAccess();
  v41 = *v40;
  v42 = *(v40 + 4);
  v43 = v29 + OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  v44 = *(v43 + 4);
  if ((v42 & 1) == 0)
  {
    v45 = v63;
    v46 = v62;
    if ((*(v43 + 4) & 1) == 0 && v41 == *v43)
    {
      goto LABEL_16;
    }

LABEL_7:

    return 0;
  }

  v45 = v63;
  v46 = v62;
  if ((*(v43 + 4) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  v47 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v34 + v47, v46, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
  v48 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
  swift_beginAccess();
  v49 = *(v57 + 48);
  v50 = v60;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v46, v60, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v29 + v48, v50 + v49, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
  v51 = *(v58 + 48);
  v52 = v59;
  if (v51(v50, 1, v59) == 1)
  {

    outlined destroy of Any?(v46, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
    if (v51(v50 + v49, 1, v52) == 1)
    {
      outlined destroy of Any?(v50, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
      return 1;
    }

    goto LABEL_21;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v50, v45, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
  if (v51(v50 + v49, 1, v52) == 1)
  {

    outlined destroy of Any?(v46, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v45, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
LABEL_21:
    outlined destroy of Any?(v50, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSg_ADtMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSg_ADtMR);
    return 0;
  }

  v53 = v56;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v50 + v49, v56, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
  v54 = specialized static CLP_LogEntry_PrivateData_WorkoutEvent.== infix(_:_:)(v45, v53);

  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v53, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
  outlined destroy of Any?(v46, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v45, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
  outlined destroy of Any?(v50, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
  return (v54 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_MotionStateMediator(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionStateMediator and conformance CLP_LogEntry_PrivateData_MotionStateMediator, type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_MotionStateMediator(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionStateMediator and conformance CLP_LogEntry_PrivateData_MotionStateMediator, type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MotionStateMediator(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionStateMediator and conformance CLP_LogEntry_PrivateData_MotionStateMediator, type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_MediatedMotionActivity.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0) + 28);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 2:
          v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0) + 24);
          type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity and conformance CLP_LogEntry_PrivateData_MotionActivity, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
        case 1:
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0) + 20);
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_MediatedMotionActivity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0);
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
    result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  closure #2 in CLP_LogEntry_PrivateData_MediatedMotionActivity.traverse<A>(visitor:)(v5, a1, a2, a3);
  if (*(v5 + *(v10 + 28)) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #2 in CLP_LogEntry_PrivateData_MediatedMotionActivity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 24), v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity and conformance CLP_LogEntry_PrivateData_MotionActivity, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_MediatedMotionActivity@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
  result = (*(*(v6 - 8) + 56))(a2 + v4, 1, 1, v6);
  *(a2 + a1[7]) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_MediatedMotionActivity(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MediatedMotionActivity and conformance CLP_LogEntry_PrivateData_MediatedMotionActivity, type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_MediatedMotionActivity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MediatedMotionActivity and conformance CLP_LogEntry_PrivateData_MediatedMotionActivity, type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MediatedMotionActivity(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MediatedMotionActivity and conformance CLP_LogEntry_PrivateData_MediatedMotionActivity, type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_BodyMetrics.decodeMessage<A>(decoder:)()
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

      if (result <= 5)
      {
        if (result > 2)
        {
          if (result == 3)
          {
            v4 = v0;
            v13 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 28);
          }

          else
          {
            v4 = v0;
            if (result == 4)
            {
              v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 32);
            }

            else
            {
              v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 36);
            }
          }

          goto LABEL_5;
        }

        if (result == 1)
        {
          v9 = v0;
          v10 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 20);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType and conformance CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType();
LABEL_27:
          v0 = v9;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_6;
        }

        if (result == 2)
        {
          v4 = v0;
          v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 24);
          goto LABEL_5;
        }
      }

      else
      {
        if (result <= 8)
        {
          if (result == 6)
          {
            v4 = v0;
            v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 40);
          }

          else
          {
            v4 = v0;
            if (result == 7)
            {
              v11 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 44);
            }

            else
            {
              v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 48);
            }
          }

          goto LABEL_5;
        }

        switch(result)
        {
          case 9:
            v4 = v0;
            v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 52);
            goto LABEL_5;
          case 10:
            v9 = v0;
            v12 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 56);
            lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType and conformance CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType();
            goto LABEL_27;
          case 11:
            v4 = v0;
            v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 60);
LABEL_5:
            v0 = v4;
            dispatch thunk of Decoder.decodeSingularFloatField(value:)();
            break;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_BodyMetrics.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v10 = result;
  if (*(v5 + *(result + 20)) == 3)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v17 = *(v5 + *(result + 20));
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType and conformance CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  v11 = v5 + v10[6];
  if ((*(v11 + 4) & 1) == 0)
  {
    v12 = *v11;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  v13 = v5 + v10[7];
  if ((*(v13 + 4) & 1) == 0)
  {
    v14 = *v13;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  v15 = v5 + v10[8];
  if ((*(v15 + 4) & 1) == 0)
  {
    v16 = *v15;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  closure #5 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
  closure #6 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
  closure #7 in CLP_LogEntry_PrivateData_BodyMetrics.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
  closure #8 in CLP_LogEntry_PrivateData_BodyMetrics.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
  closure #9 in CLP_LogEntry_PrivateData_BodyMetrics.traverse<A>(visitor:)(v5);
  closure #10 in CLP_LogEntry_PrivateData_BodyMetrics.traverse<A>(visitor:)(v5);
  closure #11 in CLP_LogEntry_PrivateData_BodyMetrics.traverse<A>(visitor:)(v5);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #5 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
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

uint64_t closure #6 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 40));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #9 in CLP_LogEntry_PrivateData_BodyMetrics.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v3 = (a1 + *(result + 52));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #10 in CLP_LogEntry_PrivateData_BodyMetrics.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  if (*(a1 + *(result + 56)) != 8)
  {
    v3 = *(a1 + *(result + 56));
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType and conformance CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #11 in CLP_LogEntry_PrivateData_BodyMetrics.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v3 = (a1 + *(result + 60));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_BodyMetrics@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 3;
  v6 = a2 + v5;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1[10];
  v11 = a2 + a1[9];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1[12];
  v14 = a2 + a1[11];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a2 + v13;
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a1[14];
  v17 = a2 + a1[13];
  *v17 = 0;
  *(v17 + 4) = 1;
  *(a2 + v16) = 8;
  v18 = a2 + a1[15];
  *v18 = 0;
  *(v18 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_BodyMetrics(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics and conformance CLP_LogEntry_PrivateData_BodyMetrics, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_BodyMetrics(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics and conformance CLP_LogEntry_PrivateData_BodyMetrics, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_BodyMetrics(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics and conformance CLP_LogEntry_PrivateData_BodyMetrics, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_Natalimetry.decodeMessage<A>(decoder:)()
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
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry(0) + 24);
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        goto LABEL_5;
      }

      if (result == 1)
      {
        v4 = v0;
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry(0) + 20);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
        v7 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp;
LABEL_12:
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(v7, v6);
        v0 = v4;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v4 = v0;
    v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry(0) + 28);
    type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics;
    v7 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics and conformance CLP_LogEntry_PrivateData_BodyMetrics;
    goto LABEL_12;
  }

  return result;
}

uint64_t closure #3 in CLP_LogEntry_PrivateData_Natalimetry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 28), v8, &_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics and conformance CLP_LogEntry_PrivateData_BodyMetrics, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_Natalimetry(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Natalimetry and conformance CLP_LogEntry_PrivateData_Natalimetry, type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_Natalimetry(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Natalimetry and conformance CLP_LogEntry_PrivateData_Natalimetry, type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_Natalimetry(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Natalimetry and conformance CLP_LogEntry_PrivateData_Natalimetry, type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_Timer(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Timer and conformance CLP_LogEntry_PrivateData_Timer, type metadata accessor for CLP_LogEntry_PrivateData_Timer);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_Timer(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Timer and conformance CLP_LogEntry_PrivateData_Timer, type metadata accessor for CLP_LogEntry_PrivateData_Timer);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_Timer(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Timer and conformance CLP_LogEntry_PrivateData_Timer, type metadata accessor for CLP_LogEntry_PrivateData_Timer);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_DigitalElevationModel.decodeMessage<A>(decoder:)()
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
          v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0) + 20);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else
        {
          if (result == 2)
          {
            v6 = v0;
            v11 = *(type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0) + 24);
          }

          else
          {
            if (result != 3)
            {
              goto LABEL_6;
            }

            v6 = v0;
            v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0) + 28);
          }

          v0 = v6;
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        }
      }

      else
      {
        if (result <= 5)
        {
          v4 = v0;
          if (result == 4)
          {
            v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0) + 32);
          }

          else
          {
            v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0) + 36);
          }

          goto LABEL_5;
        }

        if (result == 6)
        {
          v4 = v0;
          v10 = *(type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0) + 40);
LABEL_5:
          v0 = v4;
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
          goto LABEL_6;
        }

        if (result == 7)
        {
          v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0) + 44);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_DigitalElevationModel.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in CLP_LogEntry_PrivateData_AccelSample.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel);
  if (!v4)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
    v11 = v5 + v10[6];
    if ((*(v11 + 8) & 1) == 0)
    {
      v12 = *v11;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v13 = v5 + v10[7];
    if ((*(v13 + 8) & 1) == 0)
    {
      v14 = *v13;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v15 = v5 + v10[8];
    if ((*(v15 + 4) & 1) == 0)
    {
      v16 = *v15;
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    }

    closure #5 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel);
    closure #6 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel);
    closure #7 in CLP_LogEntry_PrivateData_DigitalElevationModel.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_DigitalElevationModel@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = a2 + a1[6];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a1[9];
  v11 = a2 + a1[8];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1[11];
  v14 = a2 + a1[10];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a2 + v13;
  *v15 = 0;
  *(v15 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_DigitalElevationModel(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DigitalElevationModel and conformance CLP_LogEntry_PrivateData_DigitalElevationModel, type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_DigitalElevationModel(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DigitalElevationModel and conformance CLP_LogEntry_PrivateData_DigitalElevationModel, type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_DigitalElevationModel(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DigitalElevationModel and conformance CLP_LogEntry_PrivateData_DigitalElevationModel, type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_DirectionOfTravel.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 20);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
        case 2:
          v11 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 24);
          goto LABEL_5;
        case 3:
          v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 28);
          goto LABEL_5;
        case 4:
          v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 32);
          goto LABEL_5;
        case 5:
          v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 36);
          goto LABEL_5;
        case 6:
          v12 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 40);
          goto LABEL_5;
        case 7:
          v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 44);
          goto LABEL_5;
        case 8:
          v10 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 48);
          goto LABEL_5;
        case 9:
          v16 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 52);
          goto LABEL_5;
        case 10:
          v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 56);
LABEL_5:
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          break;
        case 11:
          v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 60);
          goto LABEL_21;
        case 12:
          v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 64);
          goto LABEL_21;
        case 13:
          v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 68);
          goto LABEL_21;
        case 14:
          v13 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 72);
LABEL_21:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        default:
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in CLP_LogEntry_PrivateData_AccelSample.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
  if (!v4)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
    v11 = v5 + v10[6];
    if ((*(v11 + 8) & 1) == 0)
    {
      v12 = *v11;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v13 = v5 + v10[7];
    if ((*(v13 + 8) & 1) == 0)
    {
      v14 = *v13;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v15 = v5 + v10[8];
    if ((*(v15 + 8) & 1) == 0)
    {
      v16 = *v15;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    closure #5 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
    closure #6 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
    closure #7 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
    closure #8 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
    closure #9 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(v5);
    closure #10 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(v5);
    closure #11 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(v5);
    closure #12 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(v5);
    closure #13 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(v5);
    closure #14 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(v5);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #9 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v3 = (a1 + *(result + 52));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #10 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v3 = (a1 + *(result + 56));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #11 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  if (*(a1 + *(result + 60)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #12 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  if (*(a1 + *(result + 64)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #13 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  if (*(a1 + *(result + 68)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #14 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  if (*(a1 + *(result + 72)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_DirectionOfTravel@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = a2 + a1[6];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a1[9];
  v11 = a2 + a1[8];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a1[11];
  v14 = a2 + a1[10];
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = a2 + v13;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = a1[13];
  v17 = a2 + a1[12];
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = a2 + v16;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = a1[15];
  v20 = a2 + a1[14];
  *v20 = 0;
  *(v20 + 8) = 1;
  *(a2 + v19) = 2;
  v21 = a1[17];
  *(a2 + a1[16]) = 2;
  *(a2 + v21) = 2;
  *(a2 + a1[18]) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_DirectionOfTravel(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DirectionOfTravel and conformance CLP_LogEntry_PrivateData_DirectionOfTravel, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_DirectionOfTravel(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DirectionOfTravel and conformance CLP_LogEntry_PrivateData_DirectionOfTravel, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_DirectionOfTravel(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DirectionOfTravel and conformance CLP_LogEntry_PrivateData_DirectionOfTravel, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_MapVector._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - v9;
  v11 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  v13 = v1 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__dotData;
  v15 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v16, v10, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v10, v1 + v11, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_endAccess();
  v17 = (a1 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client);
  swift_beginAccess();
  v18 = *v17;
  LOBYTE(v11) = *(v17 + 4);
  swift_beginAccess();
  *v13 = v18;
  *(v13 + 4) = v11;
  v19 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__dotData;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v19, v6, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);

  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v1 + v14, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
  swift_endAccess();
  return v1;
}

uint64_t CLP_LogEntry_PrivateData_MapVector.decodeMessage<A>(decoder:)()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapVector(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_MapVector._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    CLP_LogEntry_PrivateData_MapVector._StorageClass.init(copying:)(v6);
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

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        goto LABEL_7;
      }

      if (result == 1)
      {
        v13 = v1;
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        v14 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
        v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp;
        goto LABEL_15;
      }

LABEL_8:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v13 = v1;
    swift_beginAccess();
    type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
    v14 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel;
    v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DirectionOfTravel and conformance CLP_LogEntry_PrivateData_DirectionOfTravel;
LABEL_15:
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(v15, v14);
    v1 = v13;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_7:
    swift_endAccess();
    goto LABEL_8;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_MotionStateMediator.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), void *a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v15 = *(v7 + *(a4(0) + 20));
  result = a5(v15, a1, a2, a3);
  if (!v8)
  {
    v17 = (v15 + *a6);
    swift_beginAccess();
    if ((v17[1] & 1) == 0)
    {
      v18 = *v17;
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    a7(v15, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in CLP_LogEntry_PrivateData_MapVector.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t closure #3 in closure #1 in CLP_LogEntry_PrivateData_MapVector.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__dotData;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DirectionOfTravel and conformance CLP_LogEntry_PrivateData_DirectionOfTravel, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
}

BOOL closure #1 in static CLP_LogEntry_PrivateData_MapVector.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v65 = a2;
  v59 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v58 = *(v59 - 8);
  v3 = *(v58 + 64);
  MEMORY[0x28223BE20](v59);
  v56 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSg_ADtMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSg_ADtMR);
  v5 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v60 = &v55 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v63 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v62 = &v55 - v11;
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v61 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v55 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v64 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v55 - v25;
  v27 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  v28 = a1 + v27;
  v29 = v65;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v28, v26, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v30 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  v31 = *(v17 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v26, v20, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v29 + v30, &v20[v31], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v32 = *(v13 + 48);
  if (v32(v20, 1, v12) == 1)
  {

    outlined destroy of Any?(v26, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    v33 = v32(&v20[v31], 1, v12);
    v34 = a1;
    if (v33 == 1)
    {
      outlined destroy of Any?(v20, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_11;
    }

LABEL_6:
    outlined destroy of Any?(v20, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
    goto LABEL_7;
  }

  v35 = a1;
  v36 = v64;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v20, v64, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v32(&v20[v31], 1, v12) == 1)
  {

    outlined destroy of Any?(v26, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v36, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  v38 = v61;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v20[v31], v61, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

  v39 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v36, v38, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v38, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v26, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v36, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v34 = v35;
  outlined destroy of Any?(v20, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v39 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  v40 = (v34 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client);
  swift_beginAccess();
  v41 = *v40;
  v42 = *(v40 + 4);
  v43 = v29 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  v44 = *(v43 + 4);
  if ((v42 & 1) == 0)
  {
    v45 = v63;
    v46 = v62;
    if ((*(v43 + 4) & 1) == 0 && v41 == *v43)
    {
      goto LABEL_16;
    }

LABEL_7:

    return 0;
  }

  v45 = v63;
  v46 = v62;
  if ((*(v43 + 4) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  v47 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__dotData;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v34 + v47, v46, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
  v48 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__dotData;
  swift_beginAccess();
  v49 = *(v57 + 48);
  v50 = v60;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v46, v60, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v29 + v48, v50 + v49, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
  v51 = *(v58 + 48);
  v52 = v59;
  if (v51(v50, 1, v59) == 1)
  {

    outlined destroy of Any?(v46, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
    if (v51(v50 + v49, 1, v52) == 1)
    {
      outlined destroy of Any?(v50, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
      return 1;
    }

    goto LABEL_21;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v50, v45, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
  if (v51(v50 + v49, 1, v52) == 1)
  {

    outlined destroy of Any?(v46, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v45, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
LABEL_21:
    outlined destroy of Any?(v50, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSg_ADtMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSg_ADtMR);
    return 0;
  }

  v53 = v56;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v50 + v49, v56, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
  v54 = specialized static CLP_LogEntry_PrivateData_DirectionOfTravel.== infix(_:_:)(v45, v53);

  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v53, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
  outlined destroy of Any?(v46, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v45, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
  outlined destroy of Any?(v50, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
  return (v54 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_MapVector(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapVector and conformance CLP_LogEntry_PrivateData_MapVector, type metadata accessor for CLP_LogEntry_PrivateData_MapVector);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_MapVector(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapVector and conformance CLP_LogEntry_PrivateData_MapVector, type metadata accessor for CLP_LogEntry_PrivateData_MapVector);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MapVector(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapVector and conformance CLP_LogEntry_PrivateData_MapVector, type metadata accessor for CLP_LogEntry_PrivateData_MapVector);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_TunnelBridgeAssistance.decodeMessage<A>(decoder:)()
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

      if (result > 4)
      {
        if (result <= 6)
        {
          v6 = v0;
          if (result == 5)
          {
            v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 36);
          }

          else
          {
            v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 40);
          }

          goto LABEL_5;
        }

        if (result == 7)
        {
          v6 = v0;
          v12 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 44);
          goto LABEL_5;
        }

        if (result == 8)
        {
          v6 = v0;
          v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 48);
LABEL_5:
          v0 = v6;
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else
      {
        if (result > 2)
        {
          v4 = v0;
          if (result == 3)
          {
            v11 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 28);
          }

          else
          {
            v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 32);
          }
        }

        else
        {
          if (result == 1)
          {
            v10 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 20);
            type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
            lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            goto LABEL_6;
          }

          if (result != 2)
          {
            goto LABEL_6;
          }

          v4 = v0;
          v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 24);
        }

        v0 = v4;
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_TunnelBridgeAssistance.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in CLP_LogEntry_PrivateData_AccelSample.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
  if (!v4)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
    v11 = v5 + v10[6];
    if ((*(v11 + 8) & 1) == 0)
    {
      v12 = *v11;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v13 = v5 + v10[7];
    if ((*(v13 + 8) & 1) == 0)
    {
      v14 = *v13;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v15 = v5 + v10[8];
    if ((*(v15 + 8) & 1) == 0)
    {
      v16 = *v15;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    closure #5 in CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
    closure #6 in CLP_LogEntry_PrivateData_TunnelBridgeAssistance.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
    closure #7 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
    closure #8 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #5 in CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 36)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #7 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 44)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #8 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 48)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_TunnelBridgeAssistance@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = a2 + a1[6];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a1[9];
  v11 = a2 + a1[8];
  *v11 = 0;
  *(v11 + 8) = 1;
  *(a2 + v10) = 2;
  v12 = a1[11];
  *(a2 + a1[10]) = 2;
  *(a2 + v12) = 2;
  *(a2 + a1[12]) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_TunnelBridgeAssistance(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TunnelBridgeAssistance and conformance CLP_LogEntry_PrivateData_TunnelBridgeAssistance, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_TunnelBridgeAssistance(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TunnelBridgeAssistance and conformance CLP_LogEntry_PrivateData_TunnelBridgeAssistance, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_TunnelBridgeAssistance(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TunnelBridgeAssistance and conformance CLP_LogEntry_PrivateData_TunnelBridgeAssistance, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_TunnelBridgeNotification.decodeMessage<A>(decoder:)()
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
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification(0) + 24);
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        goto LABEL_5;
      }

      if (result == 1)
      {
        v4 = v0;
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification(0) + 20);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
        v7 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp;
LABEL_12:
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(v7, v6);
        v0 = v4;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v4 = v0;
    v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification(0) + 28);
    type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance;
    v7 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TunnelBridgeAssistance and conformance CLP_LogEntry_PrivateData_TunnelBridgeAssistance;
    goto LABEL_12;
  }

  return result;
}

uint64_t closure #3 in CLP_LogEntry_PrivateData_TunnelBridgeNotification.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 28), v8, &_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TunnelBridgeAssistance and conformance CLP_LogEntry_PrivateData_TunnelBridgeAssistance, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_TunnelBridgeNotification(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TunnelBridgeNotification and conformance CLP_LogEntry_PrivateData_TunnelBridgeNotification, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_TunnelBridgeNotification(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TunnelBridgeNotification and conformance CLP_LogEntry_PrivateData_TunnelBridgeNotification, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_TunnelBridgeNotification(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TunnelBridgeNotification and conformance CLP_LogEntry_PrivateData_TunnelBridgeNotification, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_TunnelEndPointAssistance._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t CLP_LogEntry_PrivateData_TunnelEndPointAssistance.decodeMessage<A>(decoder:)()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_TunnelEndPointAssistance._StorageClass.init(copying:)(v6);

    *(v2 + v3) = v10;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v1)
  {
    v13 = &unk_27E273000;
    v14 = &unk_27E273000;
    v15 = &unk_27E273000;
    while ((v12 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          v16 = v14;
          v17 = v13;
          v18 = v13[284];
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          swift_endAccess();
          v13 = v17;
          v14 = v16;
          v15 = &unk_27E273000;
          break;
        case 2:
          v20 = v14[285];
          goto LABEL_13;
        case 3:
          v19 = v15[286];
          goto LABEL_13;
        case 4:
        case 5:
        case 6:
        case 8:
        case 9:
        case 10:
        case 12:
        case 13:
        case 14:
        case 15:
LABEL_13:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_14;
        case 7:
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType and conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_14;
        case 11:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
LABEL_14:
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

uint64_t CLP_LogEntry_PrivateData_TunnelEndPointAssistance.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20));
  result = closure #1 in closure #1 in CLP_LogEntry_PrivateData_TunnelEndPointAssistance.traverse<A>(visitor:)(v8, a1, a2, a3);
  if (!v4)
  {
    v10 = v8 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__latitudeDeg;
    swift_beginAccess();
    if ((*(v10 + 8) & 1) == 0)
    {
      v11 = *v10;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v12 = v8 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__longitudeDeg;
    swift_beginAccess();
    if ((*(v12 + 8) & 1) == 0)
    {
      v13 = *v12;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v14 = v8 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalUncM;
    swift_beginAccess();
    if ((*(v14 + 8) & 1) == 0)
    {
      v15 = *v14;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v16 = v8 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitudeM;
    swift_beginAccess();
    if ((*(v16 + 8) & 1) == 0)
    {
      v17 = *v16;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v18 = v8 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalUncM;
    swift_beginAccess();
    if ((*(v18 + 8) & 1) == 0)
    {
      v19 = *v18;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    closure #18 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType and conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitDeg);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitUncDeg);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelWidthAtExitM);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isTunnelCurved);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLatitudeDeg);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLongitudeDeg);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelLengthM);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__endPointDistanceFromCurrentSolutionM);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in CLP_LogEntry_PrivateData_TunnelEndPointAssistance.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t closure #18 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t))
{
  v8 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v8) != 3)
  {
    v10 = *(a1 + v8);
    a6(result);
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #1 in static CLP_LogEntry_PrivateData_TunnelEndPointAssistance.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v102 = a2;
  v103 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v3 = *(v103 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v103);
  v100 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v99 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v101 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v99 - v15;
  v17 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime;
  swift_beginAccess();
  v18 = a1 + v17;
  v19 = v102;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v18, v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v20 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime;
  swift_beginAccess();
  v21 = *(v7 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16, v10, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v22 = v19 + v20;
  v23 = v103;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v22, &v10[v21], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v24 = *(v3 + 48);
  if (v24(v10, 1, v23) == 1)
  {

    outlined destroy of Any?(v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    v25 = a1;
    if (v24(&v10[v21], 1, v23) == 1)
    {
      outlined destroy of Any?(v10, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_10;
    }

LABEL_6:
    outlined destroy of Any?(v10, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
    goto LABEL_7;
  }

  v25 = a1;
  v26 = v101;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v10, v101, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v24(&v10[v21], 1, v23) == 1)
  {

    outlined destroy of Any?(v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v26, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  v28 = v100;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v10[v21], v100, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

  LODWORD(v103) = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v26, v28, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v28, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v26, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v10, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v103 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_10:
  v29 = v25 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__latitudeDeg;
  swift_beginAccess();
  v30 = *v29;
  v31 = *(v29 + 8);
  v32 = v19 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__latitudeDeg;
  swift_beginAccess();
  v33 = *(v32 + 8);
  if (v31)
  {
    if ((*(v32 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v32 + 8) & 1) != 0 || v30 != *v32)
  {
    goto LABEL_7;
  }

  v34 = v25 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__longitudeDeg;
  swift_beginAccess();
  v35 = *v34;
  v36 = *(v34 + 8);
  v37 = v19 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__longitudeDeg;
  swift_beginAccess();
  v38 = *(v37 + 8);
  if (v36)
  {
    if ((*(v37 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v37 + 8) & 1) != 0 || v35 != *v37)
  {
    goto LABEL_7;
  }

  v39 = v25 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalUncM;
  swift_beginAccess();
  v40 = *v39;
  v41 = *(v39 + 8);
  v42 = v19 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalUncM;
  swift_beginAccess();
  v43 = *(v42 + 8);
  if (v41)
  {
    if ((*(v42 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v42 + 8) & 1) != 0 || v40 != *v42)
  {
    goto LABEL_7;
  }

  v44 = v25 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitudeM;
  swift_beginAccess();
  v45 = *v44;
  v46 = *(v44 + 8);
  v47 = v19 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitudeM;
  swift_beginAccess();
  v48 = *(v47 + 8);
  if (v46)
  {
    if ((*(v47 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v47 + 8) & 1) != 0 || v45 != *v47)
  {
    goto LABEL_7;
  }

  v49 = v25 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalUncM;
  swift_beginAccess();
  v50 = *v49;
  v51 = *(v49 + 8);
  v52 = v19 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalUncM;
  swift_beginAccess();
  v53 = *(v52 + 8);
  if (v51)
  {
    if ((*(v52 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v52 + 8) & 1) != 0 || v50 != *v52)
  {
    goto LABEL_7;
  }

  v54 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame;
  swift_beginAccess();
  v55 = *(v25 + v54);
  v56 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame;
  swift_beginAccess();
  v57 = *(v19 + v56);
  if (v55 == 3)
  {
    if (v57 != 3)
    {
      goto LABEL_7;
    }
  }

  else if (v57 == 3 || v55 != v57)
  {
    goto LABEL_7;
  }

  v58 = v25 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitDeg;
  swift_beginAccess();
  v59 = *v58;
  v60 = *(v58 + 8);
  v61 = v19 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitDeg;
  swift_beginAccess();
  v62 = *(v61 + 8);
  if (v60)
  {
    if ((*(v61 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v61 + 8) & 1) != 0 || v59 != *v61)
  {
    goto LABEL_7;
  }

  v63 = v25 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitUncDeg;
  swift_beginAccess();
  v64 = *v63;
  v65 = *(v63 + 8);
  v66 = v19 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitUncDeg;
  swift_beginAccess();
  v67 = *(v66 + 8);
  if (v65)
  {
    if ((*(v66 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v66 + 8) & 1) != 0 || v64 != *v66)
  {
    goto LABEL_7;
  }

  v68 = v25 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelWidthAtExitM;
  swift_beginAccess();
  v69 = *v68;
  v70 = *(v68 + 8);
  v71 = v19 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelWidthAtExitM;
  swift_beginAccess();
  v72 = *(v71 + 8);
  if (v70)
  {
    if (*(v71 + 8))
    {
      goto LABEL_55;
    }

LABEL_7:

    return 0;
  }

  if ((*(v71 + 8) & 1) != 0 || v69 != *v71)
  {
    goto LABEL_7;
  }

LABEL_55:
  v73 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isTunnelCurved;
  swift_beginAccess();
  v74 = *(v25 + v73);
  v75 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isTunnelCurved;
  swift_beginAccess();
  v76 = *(v19 + v75);
  if (v74 == 2)
  {
    if (v76 != 2)
    {
      goto LABEL_7;
    }
  }

  else if (v76 == 2 || ((v74 ^ v76) & 1) != 0)
  {
    goto LABEL_7;
  }

  v77 = v25 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLatitudeDeg;
  swift_beginAccess();
  v78 = *v77;
  v79 = *(v77 + 8);
  v80 = v19 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLatitudeDeg;
  swift_beginAccess();
  v81 = *(v80 + 8);
  if (v79)
  {
    if ((*(v80 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v80 + 8) & 1) != 0 || v78 != *v80)
  {
    goto LABEL_7;
  }

  v82 = v25 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLongitudeDeg;
  swift_beginAccess();
  v83 = *v82;
  v84 = *(v82 + 8);
  v85 = v19 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLongitudeDeg;
  swift_beginAccess();
  v86 = *(v85 + 8);
  if (v84)
  {
    if ((*(v85 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v85 + 8) & 1) != 0 || v83 != *v85)
  {
    goto LABEL_7;
  }

  v87 = v25 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelLengthM;
  swift_beginAccess();
  v88 = *v87;
  v89 = *(v87 + 8);
  v90 = v19 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelLengthM;
  swift_beginAccess();
  v91 = *(v90 + 8);
  if (v89)
  {
    if ((*(v90 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v90 + 8) & 1) != 0 || v88 != *v90)
  {
    goto LABEL_7;
  }

  v92 = v25 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__endPointDistanceFromCurrentSolutionM;
  swift_beginAccess();
  v93 = *v92;
  v94 = *(v92 + 8);

  v95 = v19 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__endPointDistanceFromCurrentSolutionM;
  swift_beginAccess();
  v96 = *v95;
  v97 = *(v95 + 8);

  if (v94)
  {
    if (!v97)
    {
      return 0;
    }
  }

  else
  {
    if (v93 == v96)
    {
      v98 = v97;
    }

    else
    {
      v98 = 1;
    }

    if (v98)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_TunnelEndPointAssistance(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TunnelEndPointAssistance and conformance CLP_LogEntry_PrivateData_TunnelEndPointAssistance, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_TunnelEndPointAssistance(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TunnelEndPointAssistance and conformance CLP_LogEntry_PrivateData_TunnelEndPointAssistance, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_TunnelEndPointAssistance(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TunnelEndPointAssistance and conformance CLP_LogEntry_PrivateData_TunnelEndPointAssistance, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_TunnelEndPoint.decodeMessage<A>(decoder:)()
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
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint(0) + 24);
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        goto LABEL_5;
      }

      if (result == 1)
      {
        v4 = v0;
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint(0) + 20);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
        v7 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp;
LABEL_12:
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(v7, v6);
        v0 = v4;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v4 = v0;
    v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint(0) + 28);
    type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0);
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance;
    v7 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TunnelEndPointAssistance and conformance CLP_LogEntry_PrivateData_TunnelEndPointAssistance;
    goto LABEL_12;
  }

  return result;
}

uint64_t closure #3 in CLP_LogEntry_PrivateData_TunnelEndPoint.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 28), v8, &_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TunnelEndPointAssistance and conformance CLP_LogEntry_PrivateData_TunnelEndPointAssistance, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_TunnelEndPoint(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TunnelEndPoint and conformance CLP_LogEntry_PrivateData_TunnelEndPoint, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_TunnelEndPoint(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TunnelEndPoint and conformance CLP_LogEntry_PrivateData_TunnelEndPoint, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_TunnelEndPoint(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TunnelEndPoint and conformance CLP_LogEntry_PrivateData_TunnelEndPoint, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_MapsRouteHintData.decodeMessage<A>(decoder:)()
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
        v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0) + 20);
        dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
      }

      else if (result == 2)
      {
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0) + 24);
        goto LABEL_3;
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          v1 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0) + 28);
          goto LABEL_3;
        case 4:
          v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0) + 32);
LABEL_3:
          v0 = 0;
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          break;
        case 5:
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0) + 36);
          goto LABEL_3;
      }
    }
  }
}

uint64_t CLP_LogEntry_PrivateData_MapsRouteHintData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0);
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
  if ((*(v13 + 8) & 1) == 0)
  {
    v14 = *v13;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
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

  closure #5 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #5 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 36));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_MapsRouteHintData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapsRouteHintData and conformance CLP_LogEntry_PrivateData_MapsRouteHintData, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_MapsRouteHintData(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapsRouteHintData and conformance CLP_LogEntry_PrivateData_MapsRouteHintData, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MapsRouteHintData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapsRouteHintData and conformance CLP_LogEntry_PrivateData_MapsRouteHintData, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_MapMatchingRouteHint.decodeMessage<A>(decoder:)()
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
          v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0) + 24);
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_6;
          }

          v5 = v0;
          v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0) + 28);
        }

        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
        v0 = v5;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else
      {
        switch(result)
        {
          case 3:
            v3 = v0;
            v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0) + 32);
LABEL_5:
            lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType and conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType();
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 4:
            v3 = v0;
            v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0) + 36);
            goto LABEL_5;
          case 5:
            type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0);
            lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapsRouteHintData and conformance CLP_LogEntry_PrivateData_MapsRouteHintData, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData);
            dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
            break;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_MapMatchingRouteHint.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in CLP_LogEntry_PrivateData_MapMatchingRouteHint.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in CLP_LogEntry_PrivateData_MapMatchingRouteHint.traverse<A>(visitor:)(v3, a1, a2, a3);
    v9 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0);
    v10 = v9;
    if (*(v3 + *(v9 + 32)) != 7)
    {
      v12 = *(v3 + *(v9 + 32));
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType and conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    if (*(v3 + *(v10 + 36)) != 7)
    {
      v13 = *(v3 + *(v10 + 36));
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType and conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    if (*(*v3 + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0);
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapsRouteHintData and conformance CLP_LogEntry_PrivateData_MapsRouteHintData, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v11 = v3 + *(v10 + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CLP_LogEntry_PrivateData_MapMatchingRouteHint.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0);
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

uint64_t closure #2 in CLP_LogEntry_PrivateData_MapMatchingRouteHint.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 28), v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = &a2[a1[5]];
  UnknownStorage.init()();
  v5 = a1[6];
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v7 = *(*(v6 - 8) + 56);
  v7(&a2[v5], 1, 1, v6);
  result = (v7)(&a2[a1[7]], 1, 1, v6);
  v9 = a1[9];
  a2[a1[8]] = 7;
  a2[v9] = 7;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapMatchingRouteHint and conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint, type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapMatchingRouteHint and conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint, type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapMatchingRouteHint and conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint, type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.decodeMessage<A>(decoder:)()
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
          if (result != 3)
          {
            v4 = v0;
            v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0) + 40);
            lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType();
            goto LABEL_19;
          }

          v10 = v0;
          v11 = *(type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0) + 36);
LABEL_27:
          v0 = v10;
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_5;
        }

        if (result == 1)
        {
          v6 = v0;
          v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0) + 28);
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

          v6 = v0;
          v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0) + 32);
        }

        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
        v0 = v6;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else
      {
        if (result <= 6)
        {
          if (result != 5)
          {
LABEL_25:
            dispatch thunk of Decoder.decodeRepeatedDoubleField(value:)();
            goto LABEL_5;
          }

          v10 = v0;
          v12 = *(type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0) + 44);
          goto LABEL_27;
        }

        switch(result)
        {
          case 7:
            goto LABEL_25;
          case 8:
            v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0) + 48);
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            break;
          case 9:
            v4 = v0;
            v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0) + 52);
            lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType();
LABEL_19:
            v0 = v4;
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #4 in CLP_LogEntry_PrivateData_WorkoutEvent.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification, 2);
    v9 = type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
    v10 = (v3 + v9[9]);
    if ((v10[1] & 1) == 0)
    {
      v11 = *v10;
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    if (*(v3 + v9[10]) != 5)
    {
      v13 = *(v3 + v9[10]);
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    closure #7 in CLP_LogEntry_PrivateData_DigitalElevationModel.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification);
    if (*(*v3 + 16))
    {
      dispatch thunk of Visitor.visitRepeatedDoubleField(value:fieldNumber:)();
    }

    if (*(v3[1] + 16))
    {
      dispatch thunk of Visitor.visitRepeatedDoubleField(value:fieldNumber:)();
    }

    closure #8 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification);
    closure #7 in CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.traverse<A>(visitor:)(v3);
    v12 = v3 + v9[6];
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 28), v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t closure #7 in CLP_LogEntry_PrivateData_DigitalElevationModel.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 44));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #7 in CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
  if (*(a1 + *(result + 52)) != 2)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = v4;
  v5 = &a2[a1[6]];
  UnknownStorage.init()();
  v6 = a1[7];
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v8 = *(*(v7 - 8) + 56);
  v8(&a2[v6], 1, 1, v7);
  result = (v8)(&a2[a1[8]], 1, 1, v7);
  v10 = a1[10];
  v11 = &a2[a1[9]];
  *v11 = 0;
  v11[4] = 1;
  a2[v10] = 5;
  v12 = a1[12];
  v13 = &a2[a1[11]];
  *v13 = 0;
  v13[4] = 1;
  a2[v12] = 2;
  a2[a1[13]] = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification, type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification, type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification, type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_ReachabilityState.decodeMessage<A>(decoder:)()
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
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0) + 28);
LABEL_5:
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_6;
        }

        if (result == 4)
        {
          v3 = v0;
          v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0) + 32);
          goto LABEL_5;
        }
      }

      else
      {
        if (result == 1)
        {
          v5 = v0;
          v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0) + 20);
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_6;
          }

          v5 = v0;
          v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0) + 24);
        }

        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_ReachabilityType and conformance CLP_LogEntry_PrivateData_ReachabilityType();
        v0 = v5;
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_ReachabilityState.traverse<A>(visitor:)()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  v3 = result;
  if (*(v0 + *(result + 20)) == 5)
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v4 = *(v0 + *(result + 20));
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_ReachabilityType and conformance CLP_LogEntry_PrivateData_ReachabilityType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  if (*(v0 + v3[6]) != 5)
  {
    v5 = *(v0 + v3[6]);
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_ReachabilityType and conformance CLP_LogEntry_PrivateData_ReachabilityType();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
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

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_ReachabilityState@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 5;
  *(a2 + v5) = 5;
  v6 = a1[8];
  *(a2 + a1[7]) = 2;
  *(a2 + v6) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_ReachabilityState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReachabilityState and conformance CLP_LogEntry_PrivateData_ReachabilityState, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_ReachabilityState(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReachabilityState and conformance CLP_LogEntry_PrivateData_ReachabilityState, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_ReachabilityState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReachabilityState and conformance CLP_LogEntry_PrivateData_ReachabilityState, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_Battery.decodeMessage<A>(decoder:)()
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
            v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_Battery(0) + 32);
            lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_BatteryChargerType and conformance CLP_LogEntry_PrivateData_BatteryChargerType();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 5:
            v3 = v0;
            v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_Battery(0) + 36);
            goto LABEL_5;
          case 6:
            v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_Battery(0) + 40);
            dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_Battery(0) + 20);
            dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
            break;
          case 2:
            v3 = v0;
            v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_Battery(0) + 24);
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            break;
          case 3:
            v3 = v0;
            v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_Battery(0) + 28);
            goto LABEL_5;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_Battery.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
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
    result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
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

  if (*(v5 + v10[8]) != 5)
  {
    v13 = *(v5 + v10[8]);
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_BatteryChargerType and conformance CLP_LogEntry_PrivateData_BatteryChargerType();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  closure #5 in CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
  closure #6 in CLP_LogEntry_PrivateData_Battery.traverse<A>(visitor:)(v5);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #6 in CLP_LogEntry_PrivateData_Battery.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  v3 = (a1 + *(result + 40));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_Battery@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 1;
  *(a2 + v5) = 2;
  v7 = a1[8];
  *(a2 + a1[7]) = 2;
  *(a2 + v7) = 5;
  v8 = a1[10];
  *(a2 + a1[9]) = 2;
  v9 = a2 + v8;
  *v9 = 0;
  *(v9 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_Battery(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Battery and conformance CLP_LogEntry_PrivateData_Battery, type metadata accessor for CLP_LogEntry_PrivateData_Battery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_Battery(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Battery and conformance CLP_LogEntry_PrivateData_Battery, type metadata accessor for CLP_LogEntry_PrivateData_Battery);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_Battery(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Battery and conformance CLP_LogEntry_PrivateData_Battery, type metadata accessor for CLP_LogEntry_PrivateData_Battery);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_DeviceStatus._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__reachability, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t CLP_LogEntry_PrivateData_DeviceStatus.decodeMessage<A>(decoder:)()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DeviceStatus._StorageClass.init(copying:)(v6);

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
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp;
          goto LABEL_11;
        case 2:
        case 11:
        case 12:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_14;
        case 3:
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DeviceStatus.NotificationType and conformance CLP_LogEntry_PrivateData_DeviceStatus.NotificationType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_14;
        case 4:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReachabilityState and conformance CLP_LogEntry_PrivateData_ReachabilityState;
          goto LABEL_11;
        case 5:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_Battery;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Battery and conformance CLP_LogEntry_PrivateData_Battery;
LABEL_11:
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(v14, v13);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_14;
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 13:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
LABEL_14:
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

uint64_t CLP_LogEntry_PrivateData_DeviceStatus.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20));
  result = closure #1 in closure #1 in CLP_LogEntry_PrivateData_DeviceStatus.traverse<A>(visitor:)(v8, a1, a2, a3);
  if (!v4)
  {
    v10 = (v8 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client);
    swift_beginAccess();
    if ((v10[1] & 1) == 0)
    {
      v11 = *v10;
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    v12 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__notificationData;
    swift_beginAccess();
    if (*(v8 + v12) != 20)
    {
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DeviceStatus.NotificationType and conformance CLP_LogEntry_PrivateData_DeviceStatus.NotificationType();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    closure #4 in closure #1 in CLP_LogEntry_PrivateData_DeviceStatus.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #5 in closure #1 in CLP_LogEntry_PrivateData_DeviceStatus.traverse<A>(visitor:)(v8, a1, a2, a3);
    v13 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__airplaneMode;
    swift_beginAccess();
    if (*(v8 + v13) != 2)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__displayOn);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lockScreen);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isBatterySaverModeEnabled);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushServiceConnected);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__wirelessModemClients, 11, MEMORY[0x277D21848]);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__thermalLevel, 12, MEMORY[0x277D21848]);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__restrictedMode);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in CLP_LogEntry_PrivateData_DeviceStatus.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t closure #4 in closure #1 in CLP_LogEntry_PrivateData_DeviceStatus.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__reachability;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReachabilityState and conformance CLP_LogEntry_PrivateData_ReachabilityState, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);
}

uint64_t closure #5 in closure #1 in CLP_LogEntry_PrivateData_DeviceStatus.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Battery and conformance CLP_LogEntry_PrivateData_Battery, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
}

uint64_t closure #1 in static CLP_LogEntry_PrivateData_DeviceStatus.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v135 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  v122 = *(v3 - 8);
  v123 = v3;
  v4 = *(v122 + 64);
  MEMORY[0x28223BE20](v3);
  v118 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSg_ADtMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSg_ADtMR);
  v6 = *(*(v121 - 8) + 64);
  MEMORY[0x28223BE20](v121);
  v124 = &v117 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v119 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v131 = &v117 - v12;
  v13 = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  v127 = *(v13 - 8);
  v128 = v13;
  v14 = *(v127 + 64);
  MEMORY[0x28223BE20](v13);
  v120 = &v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSg_ADtMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSg_ADtMR);
  v16 = *(*(v126 - 8) + 64);
  MEMORY[0x28223BE20](v126);
  v129 = &v117 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v125 = &v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v132 = &v117 - v22;
  v134 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v23 = *(v134 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v134);
  v130 = &v117 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v27 = v26 - 8;
  v28 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v117 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v133 = &v117 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = &v117 - v35;
  v37 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v37, v36, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v38 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v39 = v135;
  swift_beginAccess();
  v40 = *(v27 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v36, v30, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v41 = v39 + v38;
  v42 = v134;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v41, &v30[v40], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v43 = *(v23 + 48);
  if (v43(v30, 1, v42) == 1)
  {

    outlined destroy of Any?(v36, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    if (v43(&v30[v40], 1, v42) == 1)
    {
      outlined destroy of Any?(v30, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_11;
    }

LABEL_6:
    v45 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd;
    v46 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR;
    v47 = v30;
LABEL_7:
    outlined destroy of Any?(v47, v45, v46);
    goto LABEL_8;
  }

  v44 = v133;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v30, v133, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v43(&v30[v40], 1, v42) == 1)
  {

    outlined destroy of Any?(v36, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v44, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  v49 = v130;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v30[v40], v130, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

  v50 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v44, v49, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v49, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v36, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v44, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v30, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v50 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v51 = (a1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client);
  swift_beginAccess();
  v52 = *v51;
  v53 = *(v51 + 4);
  v54 = v39 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  v55 = *(v54 + 4);
  if (v53)
  {
    v57 = v131;
    v56 = v132;
    if ((*(v54 + 4) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v57 = v131;
    v56 = v132;
    if ((*(v54 + 4) & 1) != 0 || v52 != *v54)
    {
      goto LABEL_8;
    }
  }

  v58 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__notificationData;
  swift_beginAccess();
  v59 = *(a1 + v58);
  v60 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__notificationData;
  swift_beginAccess();
  v61 = *(v39 + v60);
  if (v59 == 20)
  {
    if (v61 != 20)
    {
      goto LABEL_8;
    }
  }

  else if (v61 == 20 || v59 != v61)
  {
    goto LABEL_8;
  }

  v62 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__reachability;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v62, v56, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
  v63 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__reachability;
  swift_beginAccess();
  v64 = *(v126 + 48);
  v65 = v129;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v56, v129, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
  v66 = v65;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v39 + v63, v65 + v64, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
  v67 = v128;
  v68 = *(v127 + 48);
  if (v68(v65, 1, v128) == 1)
  {
    outlined destroy of Any?(v56, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
    if (v68(v65 + v64, 1, v67) == 1)
    {
      outlined destroy of Any?(v65, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
      goto LABEL_28;
    }

LABEL_26:
    v45 = &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSg_ADtMd;
    v46 = &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSg_ADtMR;
LABEL_34:
    v47 = v66;
    goto LABEL_7;
  }

  v69 = v125;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v65, v125, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
  if (v68(v65 + v64, 1, v67) == 1)
  {
    outlined destroy of Any?(v132, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v69, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);
    goto LABEL_26;
  }

  v70 = v65 + v64;
  v71 = v120;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v70, v120, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);
  v72 = specialized static CLP_LogEntry_PrivateData_ReachabilityState.== infix(_:_:)(v69, v71);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v71, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);
  outlined destroy of Any?(v132, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v69, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);
  outlined destroy of Any?(v65, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
  if ((v72 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_28:
  v73 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v73, v57, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
  v74 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery;
  swift_beginAccess();
  v75 = *(v121 + 48);
  v76 = v124;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v57, v124, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
  v66 = v76;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v39 + v74, v76 + v75, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
  v77 = v123;
  v78 = *(v122 + 48);
  if (v78(v76, 1, v123) == 1)
  {
    outlined destroy of Any?(v57, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
    if (v78(v76 + v75, 1, v77) == 1)
    {
      outlined destroy of Any?(v76, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
      goto LABEL_36;
    }

    goto LABEL_33;
  }

  v79 = v119;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v76, v119, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
  if (v78(v76 + v75, 1, v77) == 1)
  {
    outlined destroy of Any?(v57, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v79, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
LABEL_33:
    v45 = &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSg_ADtMd;
    v46 = &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSg_ADtMR;
    goto LABEL_34;
  }

  v80 = v76 + v75;
  v81 = v118;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v80, v118, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
  v82 = specialized static CLP_LogEntry_PrivateData_Battery.== infix(_:_:)(v79, v81);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v81, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
  outlined destroy of Any?(v57, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v79, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
  outlined destroy of Any?(v76, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
  if ((v82 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_36:
  v83 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__airplaneMode;
  swift_beginAccess();
  v84 = *(a1 + v83);
  v85 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__airplaneMode;
  swift_beginAccess();
  v86 = *(v39 + v85);
  if (v84 == 2)
  {
    if (v86 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (v86 == 2 || ((v84 ^ v86) & 1) != 0)
  {
    goto LABEL_8;
  }

  v87 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__displayOn;
  swift_beginAccess();
  v88 = *(a1 + v87);
  v89 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__displayOn;
  swift_beginAccess();
  v90 = *(v39 + v89);
  if (v88 == 2)
  {
    if (v90 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (v90 == 2 || ((v88 ^ v90) & 1) != 0)
  {
    goto LABEL_8;
  }

  v91 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lockScreen;
  swift_beginAccess();
  v92 = *(a1 + v91);
  v93 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lockScreen;
  swift_beginAccess();
  v94 = *(v39 + v93);
  if (v92 == 2)
  {
    if (v94 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (v94 == 2 || ((v92 ^ v94) & 1) != 0)
  {
    goto LABEL_8;
  }

  v95 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isBatterySaverModeEnabled;
  swift_beginAccess();
  v96 = *(a1 + v95);
  v97 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isBatterySaverModeEnabled;
  swift_beginAccess();
  v98 = *(v39 + v97);
  if (v96 == 2)
  {
    if (v98 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (v98 == 2 || ((v96 ^ v98) & 1) != 0)
  {
    goto LABEL_8;
  }

  v99 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushServiceConnected;
  swift_beginAccess();
  v100 = *(a1 + v99);
  v101 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushServiceConnected;
  swift_beginAccess();
  v102 = *(v39 + v101);
  if (v100 == 2)
  {
    if (v102 == 2)
    {
      goto LABEL_61;
    }

LABEL_8:

    return 0;
  }

  if (v102 == 2 || ((v100 ^ v102) & 1) != 0)
  {
    goto LABEL_8;
  }

LABEL_61:
  v103 = (a1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__wirelessModemClients);
  swift_beginAccess();
  v104 = *v103;
  v105 = *(v103 + 4);
  v106 = v39 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__wirelessModemClients;
  swift_beginAccess();
  v107 = *(v106 + 4);
  if (v105)
  {
    if ((*(v106 + 4) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((*(v106 + 4) & 1) != 0 || v104 != *v106)
  {
    goto LABEL_8;
  }

  v108 = (a1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__thermalLevel);
  swift_beginAccess();
  v109 = *v108;
  v110 = *(v108 + 4);
  v111 = v39 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__thermalLevel;
  swift_beginAccess();
  v112 = *(v111 + 4);
  if (v110)
  {
    if ((*(v111 + 4) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((*(v111 + 4) & 1) != 0 || v109 != *v111)
  {
    goto LABEL_8;
  }

  v113 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__restrictedMode;
  swift_beginAccess();
  v114 = *(a1 + v113);

  v115 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__restrictedMode;
  swift_beginAccess();
  v116 = *(v39 + v115);

  if (v114 == 2)
  {
    if (v116 != 2)
    {
      return 0;
    }
  }

  else if (v116 == 2 || ((v114 ^ v116) & 1) != 0)
  {
    return 0;
  }

  return 1;
}