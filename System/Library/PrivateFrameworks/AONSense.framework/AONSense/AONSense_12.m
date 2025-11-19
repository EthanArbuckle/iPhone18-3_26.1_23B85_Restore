uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_DeviceStatus(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceStatus and conformance CLP_LogEntry_PrivateData_DeviceStatus, type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_DeviceStatus(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceStatus and conformance CLP_LogEntry_PrivateData_DeviceStatus, type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_DeviceStatus(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceStatus and conformance CLP_LogEntry_PrivateData_DeviceStatus, type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_SignalEnvironment.decodeMessage<A>(decoder:)()
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
          v4 = v0;
          v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment(0) + 28);
          goto LABEL_15;
        }

        if (result == 4)
        {
          v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment(0) + 32);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment(0) + 20);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 2)
        {
          v4 = v0;
          v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment(0) + 24);
LABEL_15:
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType and conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType();
          v0 = v4;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_SignalEnvironment.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in CLP_LogEntry_PrivateData_AccelSample.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment);
  if (!v4)
  {
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment(0);
    v7 = v6;
    if (*(v3 + *(v6 + 24)) != 8)
    {
      v10 = *(v3 + *(v6 + 24));
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType and conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    if (*(v3 + *(v7 + 28)) != 8)
    {
      v11 = *(v3 + *(v7 + 28));
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType and conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    v8 = (v3 + *(v7 + 32));
    if ((v8[1] & 1) == 0)
    {
      v9 = *v8;
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_SignalEnvironment@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  *(a2 + a1[6]) = 8;
  *(a2 + v7) = 8;
  v8 = a2 + a1[8];
  *v8 = 0;
  *(v8 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_SignalEnvironment(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironment and conformance CLP_LogEntry_PrivateData_SignalEnvironment, type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_SignalEnvironment(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironment and conformance CLP_LogEntry_PrivateData_SignalEnvironment, type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_SignalEnvironment(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironment and conformance CLP_LogEntry_PrivateData_SignalEnvironment, type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_SignalEnvironmentInfo.decodeMessage<A>(decoder:)()
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
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironmentInfo(0) + 24);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel and conformance CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel();
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v3 = v0;
    v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironmentInfo(0) + 20);
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType and conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType();
LABEL_5:
    v0 = v3;
    dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
    goto LABEL_6;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_SignalEnvironmentInfo.traverse<A>(visitor:)()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironmentInfo(0);
  v3 = result;
  if (*(v0 + *(result + 20)) == 8)
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v4 = *(v0 + *(result + 20));
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType and conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  if (*(v0 + *(v3 + 24)) != 4)
  {
    v5 = *(v0 + *(v3 + 24));
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel and conformance CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_SignalEnvironmentInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironmentInfo and conformance CLP_LogEntry_PrivateData_SignalEnvironmentInfo, type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironmentInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_SignalEnvironmentInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironmentInfo and conformance CLP_LogEntry_PrivateData_SignalEnvironmentInfo, type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironmentInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_SignalEnvironmentInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironmentInfo and conformance CLP_LogEntry_PrivateData_SignalEnvironmentInfo, type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironmentInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_AccelSample.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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
          v9 = *(a4(0) + 28);
LABEL_5:
          v4 = v8;
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
          goto LABEL_6;
        }

        if (result == 4)
        {
          v8 = v4;
          v11 = *(a4(0) + 32);
          goto LABEL_5;
        }
      }

      else if (result == 1)
      {
        v12 = *(a4(0) + 20);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        v8 = v4;
        v10 = *(a4(0) + 24);
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_MagSample(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MagSample and conformance CLP_LogEntry_PrivateData_MagSample, type metadata accessor for CLP_LogEntry_PrivateData_MagSample);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_MagSample(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MagSample and conformance CLP_LogEntry_PrivateData_MagSample, type metadata accessor for CLP_LogEntry_PrivateData_MagSample);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MagSample(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MagSample and conformance CLP_LogEntry_PrivateData_MagSample, type metadata accessor for CLP_LogEntry_PrivateData_MagSample);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_Magnetometer.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Magnetometer(0) + 24);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_MagSample(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MagSample and conformance CLP_LogEntry_PrivateData_MagSample, type metadata accessor for CLP_LogEntry_PrivateData_MagSample);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_Magnetometer.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in CLP_LogEntry_PrivateData_Magnetometer.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_MagSample(0);
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MagSample and conformance CLP_LogEntry_PrivateData_MagSample, type metadata accessor for CLP_LogEntry_PrivateData_MagSample);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v8 = v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_Magnetometer(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CLP_LogEntry_PrivateData_Magnetometer.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_Magnetometer(0);
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

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_Magnetometer(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Magnetometer and conformance CLP_LogEntry_PrivateData_Magnetometer, type metadata accessor for CLP_LogEntry_PrivateData_Magnetometer);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_Magnetometer(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Magnetometer and conformance CLP_LogEntry_PrivateData_Magnetometer, type metadata accessor for CLP_LogEntry_PrivateData_Magnetometer);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_Magnetometer(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Magnetometer and conformance CLP_LogEntry_PrivateData_Magnetometer, type metadata accessor for CLP_LogEntry_PrivateData_Magnetometer);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_Timer.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v7 & 1) == 0)
    {
      if (result == 1)
      {
        v8 = *(a4(0) + 20);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_Timer.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = closure #1 in CLP_LogEntry_PrivateData_AccelSample.traverse<A>(visitor:)(v4, a1, a2, a3, a4);
  if (!v5)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_Timer@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  UnknownStorage.init()();
  v6 = *(a1 + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a3 + v6, 1, 1, v7);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_Reset(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Reset and conformance CLP_LogEntry_PrivateData_Reset, type metadata accessor for CLP_LogEntry_PrivateData_Reset);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_Reset(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Reset and conformance CLP_LogEntry_PrivateData_Reset, type metadata accessor for CLP_LogEntry_PrivateData_Reset);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_Reset(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Reset and conformance CLP_LogEntry_PrivateData_Reset, type metadata accessor for CLP_LogEntry_PrivateData_Reset);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_AccelerometerPace(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccelerometerPace and conformance CLP_LogEntry_PrivateData_AccelerometerPace, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_AccelerometerPace(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccelerometerPace and conformance CLP_LogEntry_PrivateData_AccelerometerPace, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_AccelerometerPace(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccelerometerPace and conformance CLP_LogEntry_PrivateData_AccelerometerPace, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_FalseStepDetectorState.decodeMessage<A>(decoder:)()
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
        if (result > 6)
        {
          if (result == 7)
          {
            v3 = v0;
            v11 = *(type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0) + 44);
          }

          else
          {
            if (result != 8)
            {
              goto LABEL_21;
            }

            v3 = v0;
            v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0) + 48);
          }
        }

        else
        {
          v3 = v0;
          if (result == 5)
          {
            v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0) + 36);
          }

          else
          {
            v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0) + 40);
          }
        }
      }

      else if (result > 2)
      {
        v3 = v0;
        if (result == 3)
        {
          v10 = *(type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0) + 28);
        }

        else
        {
          v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0) + 32);
        }
      }

      else if (result == 1)
      {
        v3 = v0;
        v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0) + 20);
      }

      else
      {
        if (result != 2)
        {
          goto LABEL_21;
        }

        v3 = v0;
        v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0) + 24);
      }

      v0 = v3;
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
LABEL_21:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_FalseStepDetectorState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0);
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

  closure #5 in CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
  closure #6 in CLP_LogEntry_PrivateData_TunnelBridgeAssistance.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
  closure #7 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
  closure #8 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #6 in CLP_LogEntry_PrivateData_TunnelBridgeAssistance.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 40)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_FalseStepDetectorState@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_FalseStepDetectorState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FalseStepDetectorState and conformance CLP_LogEntry_PrivateData_FalseStepDetectorState, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_FalseStepDetectorState(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FalseStepDetectorState and conformance CLP_LogEntry_PrivateData_FalseStepDetectorState, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_FalseStepDetectorState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FalseStepDetectorState and conformance CLP_LogEntry_PrivateData_FalseStepDetectorState, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_StepCountEntry._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v115 = &v93 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v112 = &v93 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v93 - v11;
  v13 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v15 = *(*(v14 - 8) + 56);
  v15(v1 + v13, 1, 1, v14);
  v94 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  v15(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime, 1, 1, v14);
  v95 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__firstStepTime;
  v15(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__firstStepTime, 1, 1, v14);
  v16 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__count;
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceM;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawDistanceM;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsAscended;
  v96 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsAscended;
  *v19 = 0;
  *(v19 + 4) = 1;
  v20 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsDescended;
  v97 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsDescended;
  *v20 = 0;
  *(v20 + 4) = 1;
  v21 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentPaceSpm;
  v98 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentPaceSpm;
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentCadence;
  v99 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentCadence;
  *v22 = 0;
  *(v22 + 8) = 1;
  v23 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__activeTime;
  v100 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__activeTime;
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__recordID;
  v101 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__recordID;
  *v24 = 0;
  *(v24 + 4) = 1;
  v25 = (v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__sourceID);
  v102 = (v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__sourceID);
  *v25 = 0;
  v25[1] = 0;
  v103 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerDistance;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerDistance) = 2;
  v26 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerPace;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerPace) = 2;
  v27 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accelerometerPace;
  v104 = v26;
  v105 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accelerometerPace;
  v28 = type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace(0);
  (*(*(v28 - 8) + 56))(v1 + v27, 1, 1, v28);
  v29 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushCount;
  v106 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushCount;
  *v29 = 0;
  *(v29 + 4) = 1;
  v30 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutType;
  v107 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutType;
  *v30 = 0;
  *(v30 + 4) = 1;
  v31 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pedometerArmConstraintedState;
  v108 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pedometerArmConstraintedState;
  *v31 = 0;
  *(v31 + 4) = 1;
  v32 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationAscendedCm;
  v109 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationAscendedCm;
  *v32 = 0;
  *(v32 + 4) = 1;
  v33 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationDescendedCm;
  v110 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationDescendedCm;
  *v33 = 0;
  *(v33 + 4) = 1;
  v34 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepsSuppressed;
  v111 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepsSuppressed;
  *v34 = 0;
  *(v34 + 4) = 1;
  v35 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceSource;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceSource) = 10;
  v36 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepDetectorState;
  v113 = v35;
  v114 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepDetectorState;
  v37 = type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0);
  (*(*(v37 - 8) + 56))(v1 + v36, 1, 1, v37);
  v38 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v38, v12, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v12, v1 + v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_endAccess();
  v39 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v39, v12, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v40 = v94;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v12, v1 + v40, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_endAccess();
  v41 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__firstStepTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v41, v12, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v42 = v95;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v12, v1 + v42, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_endAccess();
  v43 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__count;
  swift_beginAccess();
  LODWORD(v42) = *v43;
  LOBYTE(v43) = *(v43 + 4);
  swift_beginAccess();
  *v16 = v42;
  *(v16 + 4) = v43;
  v44 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceM);
  swift_beginAccess();
  v45 = *v44;
  LOBYTE(v44) = *(v44 + 8);
  swift_beginAccess();
  *v17 = v45;
  *(v17 + 8) = v44;
  v46 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawDistanceM);
  swift_beginAccess();
  v47 = *v46;
  LOBYTE(v46) = *(v46 + 8);
  swift_beginAccess();
  *v18 = v47;
  *(v18 + 8) = v46;
  v48 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsAscended;
  swift_beginAccess();
  LODWORD(v47) = *v48;
  LOBYTE(v48) = *(v48 + 4);
  v49 = v96;
  swift_beginAccess();
  *v49 = v47;
  *(v49 + 4) = v48;
  v50 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsDescended;
  swift_beginAccess();
  LODWORD(v47) = *v50;
  LOBYTE(v50) = *(v50 + 4);
  v51 = v97;
  swift_beginAccess();
  *v51 = v47;
  *(v51 + 4) = v50;
  v52 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentPaceSpm);
  swift_beginAccess();
  v53 = *v52;
  LOBYTE(v52) = *(v52 + 8);
  v54 = v98;
  swift_beginAccess();
  *v54 = v53;
  *(v54 + 8) = v52;
  v55 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentCadence);
  swift_beginAccess();
  v56 = *v55;
  LOBYTE(v55) = *(v55 + 8);
  v57 = v99;
  swift_beginAccess();
  *v57 = v56;
  *(v57 + 8) = v55;
  v58 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__activeTime);
  swift_beginAccess();
  v59 = *v58;
  LOBYTE(v58) = *(v58 + 8);
  v60 = v100;
  swift_beginAccess();
  *v60 = v59;
  *(v60 + 8) = v58;
  v61 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__recordID;
  swift_beginAccess();
  LODWORD(v59) = *v61;
  LOBYTE(v61) = *(v61 + 4);
  v62 = v101;
  swift_beginAccess();
  *v62 = v59;
  *(v62 + 4) = v61;
  v63 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__sourceID);
  swift_beginAccess();
  v65 = *v63;
  v64 = v63[1];
  v66 = v102;
  swift_beginAccess();
  v67 = v66[1];
  *v66 = v65;
  v66[1] = v64;

  v68 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerDistance;
  swift_beginAccess();
  LOBYTE(v68) = *(a1 + v68);
  v69 = v103;
  swift_beginAccess();
  *(v1 + v69) = v68;
  v70 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerPace;
  swift_beginAccess();
  LOBYTE(v70) = *(a1 + v70);
  v71 = v104;
  swift_beginAccess();
  *(v1 + v71) = v70;
  v72 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accelerometerPace;
  swift_beginAccess();
  v73 = v112;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v72, v112, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMR);
  v74 = v105;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v73, v1 + v74, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMR);
  swift_endAccess();
  v75 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushCount;
  swift_beginAccess();
  LODWORD(v71) = *v75;
  LOBYTE(v75) = *(v75 + 4);
  v76 = v106;
  swift_beginAccess();
  *v76 = v71;
  *(v76 + 4) = v75;
  v77 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutType;
  swift_beginAccess();
  LODWORD(v71) = *v77;
  LOBYTE(v77) = *(v77 + 4);
  v78 = v107;
  swift_beginAccess();
  *v78 = v71;
  *(v78 + 4) = v77;
  v79 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pedometerArmConstraintedState;
  swift_beginAccess();
  LODWORD(v71) = *v79;
  LOBYTE(v79) = *(v79 + 4);
  v80 = v108;
  swift_beginAccess();
  *v80 = v71;
  *(v80 + 4) = v79;
  v81 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationAscendedCm;
  swift_beginAccess();
  LODWORD(v71) = *v81;
  LOBYTE(v81) = *(v81 + 4);
  v82 = v109;
  swift_beginAccess();
  *v82 = v71;
  *(v82 + 4) = v81;
  v83 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationDescendedCm;
  swift_beginAccess();
  LODWORD(v71) = *v83;
  LOBYTE(v83) = *(v83 + 4);
  v84 = v110;
  swift_beginAccess();
  *v84 = v71;
  *(v84 + 4) = v83;
  v85 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepsSuppressed;
  swift_beginAccess();
  LODWORD(v71) = *v85;
  LOBYTE(v85) = *(v85 + 4);
  v86 = v111;
  swift_beginAccess();
  *v86 = v71;
  *(v86 + 4) = v85;
  v87 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceSource;
  swift_beginAccess();
  LOBYTE(v87) = *(a1 + v87);
  v88 = v113;
  swift_beginAccess();
  *(v1 + v88) = v87;
  v89 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepDetectorState;
  swift_beginAccess();
  v90 = v115;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v89, v115, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMR);

  v91 = v114;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v90, v1 + v91, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMR);
  swift_endAccess();
  return v1;
}

uint64_t CLP_LogEntry_PrivateData_StepCountEntry._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__firstStepTime, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__sourceID + 8);

  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accelerometerPace, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepDetectorState, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMR);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

uint64_t CLP_LogEntry_PrivateData_StepCountEntry.decodeMessage<A>(decoder:)()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    CLP_LogEntry_PrivateData_StepCountEntry._StorageClass.init(copying:)(v6);
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
        case 3:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp;
          goto LABEL_16;
        case 4:
        case 7:
        case 8:
        case 17:
        case 18:
        case 19:
        case 20:
        case 21:
        case 22:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_17;
        case 5:
        case 6:
        case 9:
        case 10:
        case 11:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_17;
        case 12:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_17;
        case 13:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          goto LABEL_17;
        case 14:
        case 15:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_17;
        case 16:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccelerometerPace and conformance CLP_LogEntry_PrivateData_AccelerometerPace;
          goto LABEL_16;
        case 23:
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType and conformance CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_17;
        case 24:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FalseStepDetectorState and conformance CLP_LogEntry_PrivateData_FalseStepDetectorState;
LABEL_16:
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(v14, v13);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
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

uint64_t CLP_LogEntry_PrivateData_StepCountEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry(0) + 20));
  result = closure #1 in closure #1 in CLP_LogEntry_PrivateData_StepCountEntry.traverse<A>(visitor:)(v8, a1, a2, a3);
  if (!v4)
  {
    closure #2 in closure #1 in CLP_LogEntry_PrivateData_StepCountEntry.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #3 in closure #1 in CLP_LogEntry_PrivateData_StepCountEntry.traverse<A>(visitor:)(v8, a1, a2, a3);
    v10 = (v8 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__count);
    swift_beginAccess();
    if ((v10[1] & 1) == 0)
    {
      v11 = *v10;
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    v12 = v8 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceM;
    swift_beginAccess();
    if ((*(v12 + 8) & 1) == 0)
    {
      v13 = *v12;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawDistanceM);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsAscended, 7, MEMORY[0x277D21860]);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsDescended, 8, MEMORY[0x277D21860]);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentPaceSpm);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentCadence);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__activeTime);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__recordID, 12, MEMORY[0x277D21848]);
    closure #13 in closure #1 in CLP_LogEntry_PrivateData_StepCountEntry.traverse<A>(visitor:)(v8);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerDistance);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerPace);
    closure #16 in closure #1 in CLP_LogEntry_PrivateData_StepCountEntry.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushCount, 17, MEMORY[0x277D21860]);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutType, 18, MEMORY[0x277D21860]);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pedometerArmConstraintedState, 19, MEMORY[0x277D21860]);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationAscendedCm, 20, MEMORY[0x277D21860]);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationDescendedCm, 21, MEMORY[0x277D21860]);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepsSuppressed, 22, MEMORY[0x277D21860]);
    closure #23 in closure #1 in CLP_LogEntry_PrivateData_StepCountEntry.traverse<A>(visitor:)(v8);
    closure #24 in closure #1 in CLP_LogEntry_PrivateData_StepCountEntry.traverse<A>(visitor:)(v8, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in CLP_LogEntry_PrivateData_StepCountEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
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

uint64_t closure #2 in closure #1 in CLP_LogEntry_PrivateData_StepCountEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
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

uint64_t closure #3 in closure #1 in CLP_LogEntry_PrivateData_StepCountEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__firstStepTime;
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

uint64_t closure #13 in closure #1 in CLP_LogEntry_PrivateData_StepCountEntry.traverse<A>(visitor:)(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__sourceID);
  result = swift_beginAccess();
  if (v1[1])
  {
    v3 = *v1;
    v4 = v1[1];

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #16 in closure #1 in CLP_LogEntry_PrivateData_StepCountEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accelerometerPace;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccelerometerPace and conformance CLP_LogEntry_PrivateData_AccelerometerPace, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace);
}

uint64_t closure #11 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t (*a7)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = (a1 + *a5);
  result = swift_beginAccess();
  if ((v11[1] & 1) == 0)
  {
    return a7(*v11, a6, a3, a4);
  }

  return result;
}

uint64_t closure #23 in closure #1 in CLP_LogEntry_PrivateData_StepCountEntry.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceSource;
  result = swift_beginAccess();
  if (*(a1 + v2) != 10)
  {
    v4 = *(a1 + v2);
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType and conformance CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #24 in closure #1 in CLP_LogEntry_PrivateData_StepCountEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepDetectorState;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FalseStepDetectorState and conformance CLP_LogEntry_PrivateData_FalseStepDetectorState, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
}

BOOL closure #1 in static CLP_LogEntry_PrivateData_StepCountEntry.== infix(_:_:)(_BYTE *a1, uint64_t a2)
{
  v233 = a2;
  v215 = type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0);
  v213 = *(v215 - 8);
  v3 = *(v213 + 64);
  MEMORY[0x28223BE20](v215);
  v214 = &v208[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSg_ADtMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSg_ADtMR);
  v5 = *(*(v210 - 8) + 64);
  MEMORY[0x28223BE20](v210);
  v216 = &v208[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v212 = &v208[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v211 = &v208[-v11];
  v222 = type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace(0);
  v220 = *(v222 - 8);
  v12 = *(v220 + 64);
  MEMORY[0x28223BE20](v222);
  v217 = &v208[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSg_ADtMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSg_ADtMR);
  v14 = *(*(v219 - 8) + 64);
  MEMORY[0x28223BE20](v219);
  v223 = &v208[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v218 = &v208[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v221 = &v208[-v20];
  v21 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v22 = *(v21 - 8);
  v234 = v21;
  v235 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v229 = &v208[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v225 = &v208[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = MEMORY[0x28223BE20](v27);
  v228 = &v208[-v30];
  MEMORY[0x28223BE20](v29);
  v32 = &v208[-v31];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v224 = &v208[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = MEMORY[0x28223BE20](v35);
  v227 = &v208[-v38];
  v39 = MEMORY[0x28223BE20](v37);
  v226 = &v208[-v40];
  v41 = MEMORY[0x28223BE20](v39);
  v232 = &v208[-v42];
  v43 = MEMORY[0x28223BE20](v41);
  v230 = &v208[-v44];
  MEMORY[0x28223BE20](v43);
  v46 = &v208[-v45];
  v47 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  v48 = a1;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(&a1[v47], v46, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v49 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  v50 = v233;
  swift_beginAccess();
  v231 = v25;
  v51 = *(v25 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v46, v32, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v52 = v234;
  v53 = v235;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v50 + v49, &v32[v51], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v56 = *(v53 + 48);
  v55 = v53 + 48;
  v54 = v56;
  if (v56(v32, 1, v52) == 1)
  {

    outlined destroy of Any?(v46, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    if (v54(&v32[v51], 1, v52) == 1)
    {
      outlined destroy of Any?(v32, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v59 = v32;
LABEL_14:
    outlined destroy of Any?(v59, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
    goto LABEL_15;
  }

  v57 = v48;
  v58 = v230;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v32, v230, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v235 = v55;
  if (v54(&v32[v51], 1, v52) == 1)
  {

    outlined destroy of Any?(v46, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v58, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  v60 = v229;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v32[v51], v229, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

  v209 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v58, v60, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v60, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v46, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v61 = v58;
  v48 = v57;
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v61, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v32, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v55 = v235;
  if ((v209 & 1) == 0)
  {
LABEL_15:

    return 0;
  }

LABEL_8:
  v62 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  swift_beginAccess();
  v230 = v48;
  v63 = &v48[v62];
  v64 = v232;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v63, v232, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v65 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  swift_beginAccess();
  v66 = *(v231 + 48);
  v67 = v228;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v64, v228, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v50 + v65, &v67[v66], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v68 = v234;
  if (v54(v67, 1, v234) == 1)
  {
    outlined destroy of Any?(v64, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    v69 = v54(&v67[v66], 1, v68);
    v70 = v230;
    if (v69 == 1)
    {
      v235 = v55;
      outlined destroy of Any?(v67, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v71 = v226;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v67, v226, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v54(&v67[v66], 1, v68) == 1)
  {
    outlined destroy of Any?(v232, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v71, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_13:
    v59 = v67;
    goto LABEL_14;
  }

  v235 = v55;
  v73 = &v67[v66];
  v74 = v67;
  v75 = v229;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v73, v229, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v76 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v71, v75, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v75, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v232, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v71, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v74, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v70 = v230;
  if ((v76 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  v77 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__firstStepTime;
  swift_beginAccess();
  v78 = v227;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(&v70[v77], v227, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v79 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__firstStepTime;
  v80 = v233;
  swift_beginAccess();
  v81 = *(v231 + 48);
  v82 = v225;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v78, v225, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v80 + v79, &v82[v81], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v83 = v234;
  if (v54(v82, 1, v234) == 1)
  {
    outlined destroy of Any?(v78, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    if (v54(&v82[v81], 1, v83) == 1)
    {
      outlined destroy of Any?(v82, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      v84 = v233;
      goto LABEL_26;
    }

LABEL_23:
    outlined destroy of Any?(v82, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
    goto LABEL_15;
  }

  v85 = v224;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v82, v224, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v54(&v82[v81], 1, v83) == 1)
  {
    outlined destroy of Any?(v227, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v85, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_23;
  }

  v86 = v229;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v82[v81], v229, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v87 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v85, v86, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v86, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v227, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v85, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v82, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v84 = v233;
  if ((v87 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_26:
  v88 = &v70[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__count];
  swift_beginAccess();
  v89 = *v88;
  v90 = v88[4];
  v91 = v84 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__count;
  swift_beginAccess();
  v92 = *(v91 + 4);
  if (v90)
  {
    if ((*(v91 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v91 + 4) & 1) != 0 || v89 != *v91)
  {
    goto LABEL_15;
  }

  v93 = &v70[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceM];
  swift_beginAccess();
  v94 = *v93;
  v95 = *(v93 + 8);
  v96 = v84 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceM;
  swift_beginAccess();
  v97 = *(v96 + 8);
  if (v95)
  {
    if ((*(v96 + 8) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v96 + 8) & 1) != 0 || v94 != *v96)
  {
    goto LABEL_15;
  }

  v98 = &v70[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawDistanceM];
  swift_beginAccess();
  v99 = *v98;
  v100 = *(v98 + 8);
  v101 = v84 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawDistanceM;
  swift_beginAccess();
  v102 = *(v101 + 8);
  if (v100)
  {
    if ((*(v101 + 8) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v101 + 8) & 1) != 0 || v99 != *v101)
  {
    goto LABEL_15;
  }

  v103 = &v70[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsAscended];
  swift_beginAccess();
  v104 = *v103;
  v105 = v103[4];
  v106 = v84 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsAscended;
  swift_beginAccess();
  v107 = *(v106 + 4);
  if (v105)
  {
    if ((*(v106 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v106 + 4) & 1) != 0 || v104 != *v106)
  {
    goto LABEL_15;
  }

  v108 = &v70[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsDescended];
  swift_beginAccess();
  v109 = *v108;
  v110 = v108[4];
  v111 = v84 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsDescended;
  swift_beginAccess();
  v112 = *(v111 + 4);
  if (v110)
  {
    if ((*(v111 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v111 + 4) & 1) != 0 || v109 != *v111)
  {
    goto LABEL_15;
  }

  v113 = &v70[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentPaceSpm];
  swift_beginAccess();
  v114 = *v113;
  v115 = *(v113 + 8);
  v116 = v84 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentPaceSpm;
  swift_beginAccess();
  v117 = *(v116 + 8);
  if (v115)
  {
    if ((*(v116 + 8) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v116 + 8) & 1) != 0 || v114 != *v116)
  {
    goto LABEL_15;
  }

  v118 = &v70[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentCadence];
  swift_beginAccess();
  v119 = *v118;
  v120 = *(v118 + 8);
  v121 = v84 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentCadence;
  swift_beginAccess();
  v122 = *(v121 + 8);
  if (v120)
  {
    if ((*(v121 + 8) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v121 + 8) & 1) != 0 || v119 != *v121)
  {
    goto LABEL_15;
  }

  v123 = v70;
  v124 = &v70[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__activeTime];
  swift_beginAccess();
  v125 = *v124;
  v126 = *(v124 + 8);
  v127 = v84 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__activeTime;
  swift_beginAccess();
  v128 = *(v127 + 8);
  if (v126)
  {
    if ((*(v127 + 8) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v127 + 8) & 1) != 0 || v125 != *v127)
  {
    goto LABEL_15;
  }

  v129 = &v70[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__recordID];
  swift_beginAccess();
  v130 = *v129;
  v131 = v129[4];
  v132 = v84 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__recordID;
  swift_beginAccess();
  v133 = *(v132 + 4);
  if (v131)
  {
    if ((*(v132 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v132 + 4) & 1) != 0 || v130 != *v132)
  {
    goto LABEL_15;
  }

  v134 = &v70[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__sourceID];
  swift_beginAccess();
  v135 = *v134;
  v136 = v134[1];
  v137 = (v84 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__sourceID);
  swift_beginAccess();
  v138 = v137[1];
  if (v136)
  {
    if (!v138 || (v135 != *v137 || v136 != v138) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (v138)
  {
    goto LABEL_15;
  }

  v139 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerDistance;
  swift_beginAccess();
  v140 = v70[v139];
  v141 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerDistance;
  swift_beginAccess();
  v142 = *(v84 + v141);
  if (v140 == 2)
  {
    if (v142 != 2)
    {
      goto LABEL_15;
    }
  }

  else if (v142 == 2 || ((v140 ^ v142) & 1) != 0)
  {
    goto LABEL_15;
  }

  v143 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerPace;
  swift_beginAccess();
  v144 = v70[v143];
  v145 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerPace;
  swift_beginAccess();
  v146 = *(v84 + v145);
  if (v144 == 2)
  {
    if (v146 != 2)
    {
      goto LABEL_15;
    }
  }

  else if (v146 == 2 || ((v144 ^ v146) & 1) != 0)
  {
    goto LABEL_15;
  }

  v147 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accelerometerPace;
  swift_beginAccess();
  v148 = &v70[v147];
  v149 = v221;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v148, v221, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMR);
  v150 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accelerometerPace;
  swift_beginAccess();
  v151 = *(v219 + 48);
  v152 = v149;
  v153 = v223;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v152, v223, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v84 + v150, &v153[v151], &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMR);
  v154 = *(v220 + 48);
  if (v154(v153, 1, v222) == 1)
  {
    outlined destroy of Any?(v221, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMR);
    if (v154(&v223[v151], 1, v222) == 1)
    {
      outlined destroy of Any?(v223, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMR);
      goto LABEL_96;
    }

    goto LABEL_94;
  }

  v155 = v223;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v223, v218, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMR);
  if (v154(&v155[v151], 1, v222) == 1)
  {
    outlined destroy of Any?(v221, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v218, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace);
LABEL_94:
    outlined destroy of Any?(v223, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSg_ADtMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSg_ADtMR);
    goto LABEL_15;
  }

  v156 = v223;
  v157 = &v223[v151];
  v158 = v217;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v157, v217, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace);
  v159 = v218;
  v160 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v218, v158, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v158, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace);
  outlined destroy of Any?(v221, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v159, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace);
  outlined destroy of Any?(v156, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_AccelerometerPaceVSgMR);
  if ((v160 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_96:
  v161 = &v123[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushCount];
  swift_beginAccess();
  v162 = *v161;
  v163 = v161[4];
  v164 = v84 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushCount;
  swift_beginAccess();
  v165 = *(v164 + 4);
  if (v163)
  {
    if ((*(v164 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v164 + 4) & 1) != 0 || v162 != *v164)
  {
    goto LABEL_15;
  }

  v166 = &v123[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutType];
  swift_beginAccess();
  v167 = *v166;
  v168 = v166[4];
  v169 = v84 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutType;
  swift_beginAccess();
  v170 = *(v169 + 4);
  if (v168)
  {
    if ((*(v169 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v169 + 4) & 1) != 0 || v167 != *v169)
  {
    goto LABEL_15;
  }

  v171 = &v123[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pedometerArmConstraintedState];
  swift_beginAccess();
  v172 = *v171;
  v173 = v171[4];
  v174 = v84 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pedometerArmConstraintedState;
  swift_beginAccess();
  v175 = *(v174 + 4);
  if (v173)
  {
    if ((*(v174 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v174 + 4) & 1) != 0 || v172 != *v174)
  {
    goto LABEL_15;
  }

  v176 = &v123[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationAscendedCm];
  swift_beginAccess();
  v177 = *v176;
  v178 = v176[4];
  v179 = v84 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationAscendedCm;
  swift_beginAccess();
  v180 = *(v179 + 4);
  if (v178)
  {
    if ((*(v179 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v179 + 4) & 1) != 0 || v177 != *v179)
  {
    goto LABEL_15;
  }

  v181 = &v123[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationDescendedCm];
  swift_beginAccess();
  v182 = *v181;
  v183 = v181[4];
  v184 = v84 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationDescendedCm;
  swift_beginAccess();
  v185 = *(v184 + 4);
  if (v183)
  {
    if ((*(v184 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v184 + 4) & 1) != 0 || v182 != *v184)
  {
    goto LABEL_15;
  }

  v186 = &v123[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepsSuppressed];
  swift_beginAccess();
  v187 = *v186;
  v188 = v186[4];
  v189 = v84 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepsSuppressed;
  swift_beginAccess();
  v190 = *(v189 + 4);
  if (v188)
  {
    if ((*(v189 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v189 + 4) & 1) != 0 || v187 != *v189)
  {
    goto LABEL_15;
  }

  v191 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceSource;
  swift_beginAccess();
  v192 = v123[v191];
  v193 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceSource;
  swift_beginAccess();
  v194 = *(v84 + v193);
  if (v192 == 10)
  {
    if (v194 != 10)
    {
      goto LABEL_15;
    }
  }

  else if (v194 == 10 || v192 != v194)
  {
    goto LABEL_15;
  }

  v195 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepDetectorState;
  swift_beginAccess();
  v196 = v211;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(&v123[v195], v211, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMR);
  v197 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepDetectorState;
  swift_beginAccess();
  v198 = *(v210 + 48);
  v199 = v196;
  v200 = v216;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v199, v216, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v84 + v197, &v200[v198], &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMR);
  v201 = *(v213 + 48);
  if (v201(v200, 1, v215) == 1)
  {

    outlined destroy of Any?(v211, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMR);
    if (v201(&v216[v198], 1, v215) == 1)
    {
      outlined destroy of Any?(v216, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMR);
      return 1;
    }

LABEL_137:
    outlined destroy of Any?(v216, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSg_ADtMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSg_ADtMR);
    return 0;
  }

  v202 = v216;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v216, v212, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMR);
  if (v201(&v202[v198], 1, v215) == 1)
  {

    outlined destroy of Any?(v211, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v212, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
    goto LABEL_137;
  }

  v203 = v216;
  v204 = &v216[v198];
  v205 = v214;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v204, v214, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
  v206 = v212;
  v207 = specialized static CLP_LogEntry_PrivateData_FalseStepDetectorState.== infix(_:_:)(v212, v205);

  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v205, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
  outlined destroy of Any?(v211, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v206, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
  outlined destroy of Any?(v203, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_FalseStepDetectorStateVSgMR);
  return (v207 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_StepCountEntry(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_StepCountEntry and conformance CLP_LogEntry_PrivateData_StepCountEntry, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_StepCountEntry(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_StepCountEntry and conformance CLP_LogEntry_PrivateData_StepCountEntry, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_StepCountEntry(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_StepCountEntry and conformance CLP_LogEntry_PrivateData_StepCountEntry, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_PedometerPathStraightness.decodeMessage<A>(decoder:)()
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
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_PedometerPathStraightness(0) + 28);
LABEL_5:
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_6;
        }

        if (result == 4)
        {
          v6 = v0;
          v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_PedometerPathStraightness(0) + 32);
LABEL_16:
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
          v0 = v6;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          v6 = v0;
          v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_PedometerPathStraightness(0) + 20);
          goto LABEL_16;
        }

        if (result == 2)
        {
          v3 = v0;
          v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_PedometerPathStraightness(0) + 24);
          goto LABEL_5;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_PedometerPathStraightness.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in CLP_LogEntry_PrivateData_AccelSample.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_PedometerPathStraightness);
  if (!v4)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_PedometerPathStraightness(0);
    v11 = v5 + *(v10 + 24);
    if ((*(v11 + 8) & 1) == 0)
    {
      v12 = v10;
      v13 = *v11;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
      v10 = v12;
    }

    v14 = v5 + *(v10 + 28);
    if ((*(v14 + 8) & 1) == 0)
    {
      v15 = *v14;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    closure #4 in CLP_LogEntry_PrivateData_WorkoutEvent.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_PedometerPathStraightness, 4);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #4 in CLP_LogEntry_PrivateData_WorkoutEvent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v19[2] = a6;
  v19[3] = a3;
  v19[5] = a4;
  v19[1] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v19 - v10;
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a5(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v17 + 32), v11, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return outlined destroy of Any?(v11, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v11, v16, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v16, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_PedometerPathStraightness@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v11 = *(*(v5 - 8) + 56);
  (v11)((v5 - 8), a2 + v4, 1, 1, v5);
  v6 = a1[7];
  v7 = a2 + a1[6];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a2 + v6;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a2 + a1[8];

  return v11(v9, 1, 1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_PedometerPathStraightness(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PedometerPathStraightness and conformance CLP_LogEntry_PrivateData_PedometerPathStraightness, type metadata accessor for CLP_LogEntry_PrivateData_PedometerPathStraightness);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_PedometerPathStraightness(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PedometerPathStraightness and conformance CLP_LogEntry_PrivateData_PedometerPathStraightness, type metadata accessor for CLP_LogEntry_PrivateData_PedometerPathStraightness);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_PedometerPathStraightness(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PedometerPathStraightness and conformance CLP_LogEntry_PrivateData_PedometerPathStraightness, type metadata accessor for CLP_LogEntry_PrivateData_PedometerPathStraightness);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_StepCount.decodeMessage<A>(decoder:)()
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
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_StepCount(0) + 24);
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        goto LABEL_5;
      }

      if (result == 1)
      {
        v4 = v0;
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_StepCount(0) + 20);
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
    v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_StepCount(0) + 28);
    type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry(0);
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry;
    v7 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_StepCountEntry and conformance CLP_LogEntry_PrivateData_StepCountEntry;
    goto LABEL_12;
  }

  return result;
}

uint64_t closure #3 in CLP_LogEntry_PrivateData_StepCount.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf034CLP_LogEntry_PrivateData_StepCountD0VSgMd, &_s10ALProtobuf034CLP_LogEntry_PrivateData_StepCountD0VSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_StepCount(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 28), v8, &_s10ALProtobuf034CLP_LogEntry_PrivateData_StepCountD0VSgMd, &_s10ALProtobuf034CLP_LogEntry_PrivateData_StepCountD0VSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf034CLP_LogEntry_PrivateData_StepCountD0VSgMd, &_s10ALProtobuf034CLP_LogEntry_PrivateData_StepCountD0VSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_StepCountEntry and conformance CLP_LogEntry_PrivateData_StepCountEntry, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_StepCount(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_StepCount and conformance CLP_LogEntry_PrivateData_StepCount, type metadata accessor for CLP_LogEntry_PrivateData_StepCount);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_StepCount(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_StepCount and conformance CLP_LogEntry_PrivateData_StepCount, type metadata accessor for CLP_LogEntry_PrivateData_StepCount);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_StepCount(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_StepCount and conformance CLP_LogEntry_PrivateData_StepCount, type metadata accessor for CLP_LogEntry_PrivateData_StepCount);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_MotionTypeVector3.decodeMessage<A>(decoder:)()
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
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0) + 28);
LABEL_3:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularFloatField(value:)();
        break;
      case 2:
        v1 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0) + 24);
        goto LABEL_3;
      case 1:
        v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0) + 20);
        goto LABEL_3;
    }
  }
}

uint64_t CLP_LogEntry_PrivateData_MotionTypeVector3.traverse<A>(visitor:)()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
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

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_MotionTypeVector3(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeVector3 and conformance CLP_LogEntry_PrivateData_MotionTypeVector3, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_MotionTypeVector3(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeVector3 and conformance CLP_LogEntry_PrivateData_MotionTypeVector3, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MotionTypeVector3(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeVector3 and conformance CLP_LogEntry_PrivateData_MotionTypeVector3, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_VehicleSpeed.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
LABEL_13:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_VehicleSpeed.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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

  v10 = (v4 + v7[6]);
  if ((v10[1] & 1) == 0)
  {
    v11 = *v10;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  v12 = (v4 + v7[7]);
  if ((v12[1] & 1) == 0)
  {
    v13 = *v12;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  v14 = (v4 + v7[8]);
  if ((v14[1] & 1) == 0)
  {
    v15 = *v14;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeDoubleVector4 and conformance CLP_LogEntry_PrivateData_MotionTypeDoubleVector4, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeDoubleVector4 and conformance CLP_LogEntry_PrivateData_MotionTypeDoubleVector4, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeDoubleVector4 and conformance CLP_LogEntry_PrivateData_MotionTypeDoubleVector4, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_MotionTypeCompass._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v50 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v42 - v8;
  v10 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
  v12 = *(*(v11 - 8) + 56);
  v12(v1 + v10, 1, 1, v11);
  v43 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__unassistedMagneticField;
  v12(v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__unassistedMagneticField, 1, 1, v11);
  v13 = v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticHeading;
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__trueHeading;
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accuracy;
  *v15 = 0;
  *(v15 + 4) = 1;
  v45 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__calibrationLevel;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__calibrationLevel) = 8;
  v16 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__usingDatabaseBias;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__usingDatabaseBias) = 2;
  v17 = v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magnitude;
  v44 = v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magnitude;
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__inclination;
  v46 = v16;
  v47 = v18;
  *v18 = 0;
  *(v18 + 4) = 1;
  v19 = v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontal;
  v48 = v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontal;
  *v19 = 0;
  *(v19 + 4) = 1;
  v20 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  v49 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  v21 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(0);
  (*(*(v21 - 8) + 56))(v1 + v20, 1, 1, v21);
  v22 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v22, v9, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v9, v1 + v10, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  swift_endAccess();
  v23 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__unassistedMagneticField;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v23, v9, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v24 = v43;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v9, v1 + v24, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  swift_endAccess();
  v25 = a1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticHeading;
  swift_beginAccess();
  LODWORD(v23) = *v25;
  LOBYTE(v25) = *(v25 + 4);
  swift_beginAccess();
  *v13 = v23;
  *(v13 + 4) = v25;
  v26 = a1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__trueHeading;
  swift_beginAccess();
  LODWORD(v13) = *v26;
  LOBYTE(v26) = *(v26 + 4);
  swift_beginAccess();
  *v14 = v13;
  *(v14 + 4) = v26;
  v27 = a1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accuracy;
  swift_beginAccess();
  LODWORD(v13) = *v27;
  LOBYTE(v27) = *(v27 + 4);
  swift_beginAccess();
  *v15 = v13;
  *(v15 + 4) = v27;
  v28 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__calibrationLevel;
  swift_beginAccess();
  LOBYTE(v28) = *(a1 + v28);
  v29 = v45;
  swift_beginAccess();
  *(v1 + v29) = v28;
  v30 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__usingDatabaseBias;
  swift_beginAccess();
  LOBYTE(v30) = *(a1 + v30);
  v31 = v46;
  swift_beginAccess();
  *(v1 + v31) = v30;
  v32 = a1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magnitude;
  swift_beginAccess();
  LODWORD(v31) = *v32;
  LOBYTE(v32) = *(v32 + 4);
  v33 = v44;
  swift_beginAccess();
  *v33 = v31;
  *(v33 + 4) = v32;
  v34 = a1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__inclination;
  swift_beginAccess();
  LODWORD(v31) = *v34;
  LOBYTE(v34) = *(v34 + 4);
  v35 = v47;
  swift_beginAccess();
  *v35 = v31;
  *(v35 + 4) = v34;
  v36 = a1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontal;
  swift_beginAccess();
  LODWORD(v31) = *v36;
  LOBYTE(v36) = *(v36 + 4);
  v37 = v48;
  swift_beginAccess();
  *v37 = v31;
  *(v37 + 4) = v36;
  v38 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  swift_beginAccess();
  v39 = v50;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v38, v50, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);

  v40 = v49;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v39, v1 + v40, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  swift_endAccess();
  return v1;
}

uint64_t CLP_LogEntry_PrivateData_MotionTypeCompass._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__unassistedMagneticField, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t CLP_LogEntry_PrivateData_MotionTypeCompass.decodeMessage<A>(decoder:)()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    CLP_LogEntry_PrivateData_MotionTypeCompass._StorageClass.init(copying:)(v6);
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
        goto LABEL_24;
      }

      if (result == 1 || result == 2)
      {
        v13 = v1;
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
        v14 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3;
        v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeVector3 and conformance CLP_LogEntry_PrivateData_MotionTypeVector3;
        goto LABEL_20;
      }

LABEL_26:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result > 8)
    {
      if (result == 9 || result == 10)
      {
        goto LABEL_24;
      }

      if (result != 11)
      {
        goto LABEL_26;
      }

      v13 = v1;
      swift_beginAccess();
      type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(0);
      v14 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4;
      v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeDoubleVector4 and conformance CLP_LogEntry_PrivateData_MotionTypeDoubleVector4;
LABEL_20:
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(v15, v14);
      v1 = v13;
      dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    }

    else if (result == 6)
    {
      swift_beginAccess();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel and conformance CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel();
      dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
    }

    else
    {
      if (result != 7)
      {
LABEL_24:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularFloatField(value:)();
        goto LABEL_25;
      }

      swift_beginAccess();
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }

LABEL_25:
    swift_endAccess();
    goto LABEL_26;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_MotionTypeCompass.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass(0) + 20));
  result = closure #1 in closure #1 in CLP_LogEntry_PrivateData_MotionTypeCompass.traverse<A>(visitor:)(v8, a1, a2, a3);
  if (!v4)
  {
    closure #2 in closure #1 in CLP_LogEntry_PrivateData_MotionTypeCompass.traverse<A>(visitor:)(v8, a1, a2, a3);
    v10 = v8 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticHeading;
    swift_beginAccess();
    if ((*(v10 + 4) & 1) == 0)
    {
      v11 = *v10;
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    }

    v12 = v8 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__trueHeading;
    swift_beginAccess();
    if ((*(v12 + 4) & 1) == 0)
    {
      v13 = *v12;
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    }

    v14 = v8 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accuracy;
    swift_beginAccess();
    if ((*(v14 + 4) & 1) == 0)
    {
      v15 = *v14;
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    }

    v16 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__calibrationLevel;
    swift_beginAccess();
    if (*(v8 + v16) != 8)
    {
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel and conformance CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__usingDatabaseBias);
    closure #12 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magnitude);
    closure #12 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__inclination);
    closure #12 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontal);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_MotionTypeCompass.traverse<A>(visitor:)(v8, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in CLP_LogEntry_PrivateData_MotionTypeCompass.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeVector3 and conformance CLP_LogEntry_PrivateData_MotionTypeVector3, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
}

uint64_t closure #2 in closure #1 in CLP_LogEntry_PrivateData_MotionTypeCompass.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__unassistedMagneticField;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeVector3 and conformance CLP_LogEntry_PrivateData_MotionTypeVector3, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
}

uint64_t closure #11 in closure #1 in CLP_LogEntry_PrivateData_MotionTypeCompass.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeDoubleVector4 and conformance CLP_LogEntry_PrivateData_MotionTypeDoubleVector4, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
}

BOOL closure #1 in static CLP_LogEntry_PrivateData_MotionTypeCompass.== infix(_:_:)(uint64_t a1, _BYTE *a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(0);
  v118 = *(v4 - 8);
  v119 = v4;
  v5 = *(v118 + 64);
  MEMORY[0x28223BE20](v4);
  v115 = &v113[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSg_ADtMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSg_ADtMR);
  v7 = *(*(v117 - 8) + 64);
  MEMORY[0x28223BE20](v117);
  v121 = &v113[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v116 = &v113[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v120 = &v113[-v13];
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
  v15 = *(v14 - 8);
  v128 = v14;
  v129 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v123 = &v113[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSg_ADtMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSg_ADtMR);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v125 = &v113[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v23 = &v113[-v22];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v122 = &v113[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = MEMORY[0x28223BE20](v26);
  v127 = &v113[-v29];
  v30 = MEMORY[0x28223BE20](v28);
  v126 = &v113[-v31];
  MEMORY[0x28223BE20](v30);
  v33 = &v113[-v32];
  v34 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v34, v33, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v35 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField;
  swift_beginAccess();
  v124 = v18;
  v36 = *(v18 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v33, v23, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v37 = &a2[v35];
  v39 = v128;
  v38 = v129;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v37, &v23[v36], &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v42 = *(v38 + 48);
  v41 = v38 + 48;
  v40 = v42;
  if (v42(v23, 1, v39) == 1)
  {

    outlined destroy of Any?(v33, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
    v43 = v40(&v23[v36], 1, v39);
    v44 = a1;
    if (v43 == 1)
    {
      v129 = v41;
      outlined destroy of Any?(v23, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
      goto LABEL_9;
    }

LABEL_6:
    outlined destroy of Any?(v23, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSg_ADtMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSg_ADtMR);
    goto LABEL_15;
  }

  v45 = a1;
  v46 = v126;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v23, v126, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  if (v40(&v23[v36], 1, v39) == 1)
  {

    outlined destroy of Any?(v33, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v46, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
    goto LABEL_6;
  }

  v129 = v41;
  v47 = &v23[v36];
  v48 = v123;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v47, v123, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);

  v114 = specialized static CLP_LogEntry_PrivateData_MotionTypeVector3.== infix(_:_:)(v46, v48);
  v49 = v48;
  v44 = v45;
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v49, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  outlined destroy of Any?(v33, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v46, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  outlined destroy of Any?(v23, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  if ((v114 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v126 = a2;
  v50 = v39;
  v51 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__unassistedMagneticField;
  swift_beginAccess();
  v52 = v127;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v44 + v51, v127, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v53 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__unassistedMagneticField;
  swift_beginAccess();
  v54 = v125;
  v55 = *(v124 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v52, v125, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v56 = &v126[v53];
  v57 = v126;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v56, &v54[v55], &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  if (v40(v54, 1, v50) == 1)
  {
    outlined destroy of Any?(v52, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
    if (v40(&v54[v55], 1, v50) == 1)
    {
      outlined destroy of Any?(v54, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
      goto LABEL_18;
    }

LABEL_14:
    outlined destroy of Any?(v54, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSg_ADtMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSg_ADtMR);
    goto LABEL_15;
  }

  v58 = v122;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v54, v122, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  if (v40(&v54[v55], 1, v50) == 1)
  {
    outlined destroy of Any?(v127, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v58, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
    goto LABEL_14;
  }

  v60 = v123;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v54[v55], v123, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  v61 = specialized static CLP_LogEntry_PrivateData_MotionTypeVector3.== infix(_:_:)(v58, v60);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v60, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  outlined destroy of Any?(v127, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v58, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  outlined destroy of Any?(v54, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  if ((v61 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  v62 = v44 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticHeading;
  swift_beginAccess();
  v63 = *v62;
  v64 = *(v62 + 4);
  v65 = &v57[OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticHeading];
  swift_beginAccess();
  v66 = *(v65 + 4);
  if (v64)
  {
    if ((v65[1] & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((v65[1] & 1) != 0 || v63 != *v65)
  {
    goto LABEL_15;
  }

  v67 = v44 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__trueHeading;
  swift_beginAccess();
  v68 = *v67;
  v69 = *(v67 + 4);
  v70 = &v57[OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__trueHeading];
  swift_beginAccess();
  v71 = *(v70 + 4);
  if (v69)
  {
    if ((v70[1] & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((v70[1] & 1) != 0 || v68 != *v70)
  {
    goto LABEL_15;
  }

  v72 = v44 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accuracy;
  swift_beginAccess();
  v73 = *v72;
  v74 = *(v72 + 4);
  v75 = &v57[OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accuracy];
  swift_beginAccess();
  v76 = *(v75 + 4);
  if (v74)
  {
    if ((v75[1] & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((v75[1] & 1) != 0 || v73 != *v75)
  {
    goto LABEL_15;
  }

  v77 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__calibrationLevel;
  swift_beginAccess();
  v78 = *(v44 + v77);
  v79 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__calibrationLevel;
  swift_beginAccess();
  v80 = v57[v79];
  if (v78 == 8)
  {
    if (v80 != 8)
    {
      goto LABEL_15;
    }
  }

  else if (v80 == 8 || v78 != v80)
  {
    goto LABEL_15;
  }

  v81 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__usingDatabaseBias;
  swift_beginAccess();
  v82 = *(v44 + v81);
  v83 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__usingDatabaseBias;
  swift_beginAccess();
  v84 = v57[v83];
  if (v82 == 2)
  {
    if (v84 != 2)
    {
      goto LABEL_15;
    }
  }

  else if (v84 == 2 || ((v82 ^ v84) & 1) != 0)
  {
    goto LABEL_15;
  }

  v85 = v44 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magnitude;
  swift_beginAccess();
  v86 = *v85;
  v87 = *(v85 + 4);
  v88 = &v57[OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magnitude];
  swift_beginAccess();
  v89 = *(v88 + 4);
  if (v87)
  {
    if ((v88[1] & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((v88[1] & 1) != 0 || v86 != *v88)
  {
    goto LABEL_15;
  }

  v90 = v44 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__inclination;
  swift_beginAccess();
  v91 = *v90;
  v92 = *(v90 + 4);
  v93 = &v57[OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__inclination];
  swift_beginAccess();
  v94 = *(v93 + 4);
  if (v92)
  {
    if ((v93[1] & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((v93[1] & 1) != 0 || v91 != *v93)
  {
    goto LABEL_15;
  }

  v95 = v44 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontal;
  swift_beginAccess();
  v96 = *v95;
  v97 = *(v95 + 4);
  v98 = &v57[OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontal];
  swift_beginAccess();
  v99 = *(v98 + 4);
  if (v97)
  {
    if (v98[1])
    {
      goto LABEL_58;
    }

LABEL_15:

    return 0;
  }

  if ((v98[1] & 1) != 0 || v96 != *v98)
  {
    goto LABEL_15;
  }

LABEL_58:
  v100 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  swift_beginAccess();
  v101 = v120;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v44 + v100, v120, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  v102 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  swift_beginAccess();
  v103 = *(v117 + 48);
  v104 = v101;
  v105 = v121;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v104, v121, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(&v57[v102], &v105[v103], &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  v106 = v119;
  v107 = *(v118 + 48);
  if (v107(v105, 1, v119) != 1)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v105, v116, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
    if (v107(&v105[v103], 1, v106) == 1)
    {

      outlined destroy of Any?(v120, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v116, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
      goto LABEL_63;
    }

    v108 = v121;
    v109 = &v121[v103];
    v110 = v115;
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v109, v115, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
    v111 = v116;
    v112 = specialized static CLP_LogEntry_PrivateData_VehicleSpeed.== infix(_:_:)(v116, v110, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);

    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v110, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
    outlined destroy of Any?(v120, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v111, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
    outlined destroy of Any?(v108, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
    return (v112 & 1) != 0;
  }

  outlined destroy of Any?(v120, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  if (v107(&v105[v103], 1, v106) != 1)
  {
LABEL_63:
    outlined destroy of Any?(v121, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSg_ADtMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSg_ADtMR);
    return 0;
  }

  outlined destroy of Any?(v121, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  return 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_MotionTypeCompass(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeCompass and conformance CLP_LogEntry_PrivateData_MotionTypeCompass, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_MotionTypeCompass(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeCompass and conformance CLP_LogEntry_PrivateData_MotionTypeCompass, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MotionTypeCompass(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeCompass and conformance CLP_LogEntry_PrivateData_MotionTypeCompass, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_CompassTypeSample.decodeMessage<A>(decoder:)()
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
          v11 = *(type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample(0) + 20);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
          v9 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp;
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_6;
          }

          v6 = v0;
          v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample(0) + 24);
          type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass(0);
          v8 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass;
          v9 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeCompass and conformance CLP_LogEntry_PrivateData_MotionTypeCompass;
        }

        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(v9, v8);
        v0 = v6;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else
      {
        switch(result)
        {
          case 3:
            v3 = v0;
            v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample(0) + 28);
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularFloatField(value:)();
            break;
          case 4:
            v3 = v0;
            v10 = *(type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample(0) + 32);
            goto LABEL_5;
          case 5:
            v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample(0) + 36);
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            break;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_CompassTypeSample.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in CLP_LogEntry_PrivateData_AccelSample.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample);
  if (!v4)
  {
    closure #2 in CLP_LogEntry_PrivateData_CompassTypeSample.traverse<A>(visitor:)(v5, a1, a2, a3);
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample(0);
    v11 = v5 + *(v10 + 28);
    if ((*(v11 + 4) & 1) == 0)
    {
      v12 = v10;
      v13 = *v11;
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
      v10 = v12;
    }

    v14 = v5 + *(v10 + 32);
    if ((*(v14 + 4) & 1) == 0)
    {
      v15 = *v14;
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    }

    closure #5 in CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #2 in CLP_LogEntry_PrivateData_CompassTypeSample.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 24), v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeCompass and conformance CLP_LogEntry_PrivateData_MotionTypeCompass, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_CompassTypeSample@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass(0);
  result = (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v9 = a1[8];
  v10 = a2 + a1[7];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a2 + v9;
  *v11 = 0;
  *(v11 + 4) = 1;
  *(a2 + a1[9]) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_CompassTypeSample(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_CompassTypeSample and conformance CLP_LogEntry_PrivateData_CompassTypeSample, type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_CompassTypeSample(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_CompassTypeSample and conformance CLP_LogEntry_PrivateData_CompassTypeSample, type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_CompassTypeSample(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_CompassTypeSample and conformance CLP_LogEntry_PrivateData_CompassTypeSample, type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_Compass.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Compass(0) + 24);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_CompassTypeSample and conformance CLP_LogEntry_PrivateData_CompassTypeSample, type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_Compass.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in CLP_LogEntry_PrivateData_Compass.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample(0);
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_CompassTypeSample and conformance CLP_LogEntry_PrivateData_CompassTypeSample, type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v8 = v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_Compass(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CLP_LogEntry_PrivateData_Compass.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_Compass(0);
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

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_Compass(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Compass and conformance CLP_LogEntry_PrivateData_Compass, type metadata accessor for CLP_LogEntry_PrivateData_Compass);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_Compass(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Compass and conformance CLP_LogEntry_PrivateData_Compass, type metadata accessor for CLP_LogEntry_PrivateData_Compass);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_Compass(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Compass and conformance CLP_LogEntry_PrivateData_Compass, type metadata accessor for CLP_LogEntry_PrivateData_Compass);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_MotionTypeDeviceMotion._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__userAcceleration, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rotationRate, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t CLP_LogEntry_PrivateData_MotionTypeDeviceMotion.decodeMessage<A>(decoder:)()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_MotionTypeDeviceMotion._StorageClass.init(copying:)(v6);

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
        break;
      }

      if (result > 6)
      {
        if (result != 7 && result != 8)
        {
          if (result != 9)
          {
            goto LABEL_26;
          }

          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
          goto LABEL_25;
        }

LABEL_24:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        goto LABEL_25;
      }

      if (result != 5)
      {
        goto LABEL_24;
      }

      swift_beginAccess();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel and conformance CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel();
      dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
LABEL_25:
      swift_endAccess();
LABEL_26:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        v13 = v1;
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(0);
        v14 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4;
        v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeDoubleVector4 and conformance CLP_LogEntry_PrivateData_MotionTypeDoubleVector4;
LABEL_21:
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(v15, v14);
        v1 = v13;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        goto LABEL_25;
      }

      if (result != 2)
      {
        goto LABEL_26;
      }
    }

    v13 = v1;
    swift_beginAccess();
    type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
    v14 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3;
    v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeVector3 and conformance CLP_LogEntry_PrivateData_MotionTypeVector3;
    goto LABEL_21;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_MotionTypeDeviceMotion.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion(0) + 20));
  result = closure #1 in closure #1 in CLP_LogEntry_PrivateData_MotionTypeDeviceMotion.traverse<A>(visitor:)(v8, a1, a2, a3);
  if (!v4)
  {
    closure #2 in closure #1 in CLP_LogEntry_PrivateData_MotionTypeDeviceMotion.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #3 in closure #1 in CLP_LogEntry_PrivateData_MotionTypeDeviceMotion.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #4 in closure #1 in CLP_LogEntry_PrivateData_MotionTypeDeviceMotion.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticFieldCalibrationLevel, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel and conformance CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingYawCorrection);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingBiasEstimation);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInitialized_p);
    closure #12 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__heading);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in CLP_LogEntry_PrivateData_MotionTypeDeviceMotion.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeDoubleVector4 and conformance CLP_LogEntry_PrivateData_MotionTypeDoubleVector4, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
}

uint64_t closure #2 in closure #1 in CLP_LogEntry_PrivateData_MotionTypeDeviceMotion.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__userAcceleration;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeVector3 and conformance CLP_LogEntry_PrivateData_MotionTypeVector3, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
}

uint64_t closure #3 in closure #1 in CLP_LogEntry_PrivateData_MotionTypeDeviceMotion.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rotationRate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeVector3 and conformance CLP_LogEntry_PrivateData_MotionTypeVector3, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
}

uint64_t closure #4 in closure #1 in CLP_LogEntry_PrivateData_MotionTypeDeviceMotion.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeVector3 and conformance CLP_LogEntry_PrivateData_MotionTypeVector3, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
}

uint64_t closure #20 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t))
{
  v8 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v8) != 8)
  {
    v10 = *(a1 + v8);
    a6(result);
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #1 in static CLP_LogEntry_PrivateData_MotionTypeDeviceMotion.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v135 = a2;
  v132 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
  v129 = *(v132 - 8);
  v3 = *(v129 + 64);
  MEMORY[0x28223BE20](v132);
  v124 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSg_ADtMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSg_ADtMR);
  v5 = *(*(v131 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v131);
  v120 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v123 = &v119 - v9;
  MEMORY[0x28223BE20](v8);
  v128 = &v119 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v119 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v122 = &v119 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v121 = &v119 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v126 = &v119 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v125 = &v119 - v22;
  MEMORY[0x28223BE20](v21);
  v130 = &v119 - v23;
  v133 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(0);
  v24 = *(v133 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v133);
  v127 = &v119 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSg_ADtMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSg_ADtMR);
  v28 = v27 - 8;
  v29 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v119 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v134 = (&v119 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v34);
  v37 = &v119 - v36;
  v38 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v38, v37, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  v39 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  v40 = v135;
  swift_beginAccess();
  v41 = *(v28 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v37, v31, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  v42 = v40;
  v43 = v133;
  v44 = v42 + v39;
  v45 = v42;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v44, &v31[v41], &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  v46 = *(v24 + 48);
  if (v46(v31, 1, v43) == 1)
  {

    outlined destroy of Any?(v37, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
    v47 = v45;
    if (v46(&v31[v41], 1, v43) == 1)
    {
      outlined destroy of Any?(v31, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v48 = &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSg_ADtMd;
    v49 = &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSg_ADtMR;
    v50 = v31;
LABEL_14:
    outlined destroy of Any?(v50, v48, v49);
    goto LABEL_15;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v31, v134, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  if (v46(&v31[v41], 1, v43) == 1)
  {

    outlined destroy of Any?(v37, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v134, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
    goto LABEL_6;
  }

  v51 = v127;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v31[v41], v127, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);

  v47 = v45;

  v52 = v134;
  v53 = specialized static CLP_LogEntry_PrivateData_VehicleSpeed.== infix(_:_:)(v134, v51, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v51, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
  outlined destroy of Any?(v37, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v52, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
  outlined destroy of Any?(v31, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_MotionTypeDoubleVector4VSgMR);
  if ((v53 & 1) == 0)
  {
LABEL_15:

LABEL_16:

    return 0;
  }

LABEL_8:
  v54 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__userAcceleration;
  swift_beginAccess();
  v55 = v130;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v54, v130, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v56 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__userAcceleration;
  swift_beginAccess();
  v57 = *(v131 + 48);
  v58 = v128;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v55, v128, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v47 + v56, v58 + v57, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v59 = *(v129 + 48);
  v60 = v132;
  if ((v59)(v58, 1, v132) == 1)
  {
    outlined destroy of Any?(v55, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
    if ((v59)(v58 + v57, 1, v60) == 1)
    {
      v134 = v59;
      outlined destroy of Any?(v58, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v61 = v125;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v58, v125, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  if ((v59)(v58 + v57, 1, v60) == 1)
  {
    outlined destroy of Any?(v130, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v61, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
LABEL_13:
    v48 = &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSg_ADtMd;
    v49 = &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSg_ADtMR;
    v50 = v58;
    goto LABEL_14;
  }

  v134 = v59;
  v63 = v58 + v57;
  v64 = v124;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v63, v124, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  v65 = specialized static CLP_LogEntry_PrivateData_MotionTypeVector3.== infix(_:_:)(v61, v64);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v64, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  outlined destroy of Any?(v130, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v61, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  outlined destroy of Any?(v58, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  if ((v65 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_19:
  v66 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rotationRate;
  swift_beginAccess();
  v67 = v126;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v66, v126, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v68 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rotationRate;
  swift_beginAccess();
  v69 = *(v131 + 48);
  v70 = v123;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v67, v123, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v47 + v68, v70 + v69, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v71 = v132;
  v72 = v134;
  if ((v134)(v70, 1, v132) == 1)
  {
    outlined destroy of Any?(v67, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
    v73 = v72(v70 + v69, 1, v71);
    v74 = v135;
    if (v73 == 1)
    {
      v134 = v72;
      outlined destroy of Any?(v70, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  v75 = v121;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v70, v121, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  if (v72(v70 + v69, 1, v71) == 1)
  {
    outlined destroy of Any?(v126, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v75, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
LABEL_24:
    outlined destroy of Any?(v70, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSg_ADtMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSg_ADtMR);
    goto LABEL_15;
  }

  v134 = v72;
  v76 = v70 + v69;
  v77 = v124;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v76, v124, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  v78 = v70;
  v79 = specialized static CLP_LogEntry_PrivateData_MotionTypeVector3.== infix(_:_:)(v75, v77);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v77, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  outlined destroy of Any?(v126, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v75, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  outlined destroy of Any?(v78, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v74 = v135;
  if ((v79 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_27:
  v80 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField;
  swift_beginAccess();
  v81 = v122;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v80, v122, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v82 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField;
  swift_beginAccess();
  v83 = *(v131 + 48);
  v84 = v120;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v81, v120, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v85 = v74 + v82;
  v86 = v83;
  v87 = v84;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v85, v84 + v83, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v88 = v132;
  v89 = v134;
  if ((v134)(v84, 1, v132) == 1)
  {
    outlined destroy of Any?(v81, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
    if (v89(v84 + v86, 1, v88) == 1)
    {
      outlined destroy of Any?(v84, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
      v90 = v135;
      goto LABEL_34;
    }

LABEL_32:
    outlined destroy of Any?(v87, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSg_ADtMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSg_ADtMR);

    goto LABEL_16;
  }

  v91 = v84;
  v92 = v119;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v91, v119, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  if (v89(v87 + v86, 1, v88) == 1)
  {
    outlined destroy of Any?(v122, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v92, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
    goto LABEL_32;
  }

  v93 = v124;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v87 + v86, v124, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  v94 = v87;
  v95 = specialized static CLP_LogEntry_PrivateData_MotionTypeVector3.== infix(_:_:)(v92, v93);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v93, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  outlined destroy of Any?(v122, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v92, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  outlined destroy of Any?(v94, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeVector3VSgMR);
  v90 = v135;
  if ((v95 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_34:
  v96 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticFieldCalibrationLevel;
  swift_beginAccess();
  v97 = *(a1 + v96);
  v98 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticFieldCalibrationLevel;
  swift_beginAccess();
  v99 = *(v90 + v98);
  if (v97 == 8)
  {
    if (v99 != 8)
    {
      goto LABEL_15;
    }
  }

  else if (v99 == 8 || v97 != v99)
  {
    goto LABEL_15;
  }

  v100 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingYawCorrection;
  swift_beginAccess();
  v101 = *(a1 + v100);
  v102 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingYawCorrection;
  swift_beginAccess();
  v103 = *(v90 + v102);
  if (v101 == 2)
  {
    if (v103 != 2)
    {
      goto LABEL_15;
    }
  }

  else if (v103 == 2 || ((v101 ^ v103) & 1) != 0)
  {
    goto LABEL_15;
  }

  v104 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingBiasEstimation;
  swift_beginAccess();
  v105 = *(a1 + v104);
  v106 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingBiasEstimation;
  swift_beginAccess();
  v107 = *(v90 + v106);
  if (v105 == 2)
  {
    if (v107 != 2)
    {
      goto LABEL_15;
    }
  }

  else if (v107 == 2 || ((v105 ^ v107) & 1) != 0)
  {
    goto LABEL_15;
  }

  v108 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInitialized_p;
  swift_beginAccess();
  v109 = *(a1 + v108);
  v110 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInitialized_p;
  swift_beginAccess();
  v111 = *(v90 + v110);
  if (v109 == 2)
  {
    if (v111 != 2)
    {
      goto LABEL_15;
    }
  }

  else if (v111 == 2 || ((v109 ^ v111) & 1) != 0)
  {
    goto LABEL_15;
  }

  v112 = a1 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__heading;
  swift_beginAccess();
  v113 = *v112;
  v114 = *(v112 + 4);

  v115 = v90 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__heading;
  swift_beginAccess();
  v116 = *v115;
  v117 = *(v115 + 4);

  if (v114)
  {
    if (!v117)
    {
      return 0;
    }
  }

  else
  {
    if (v113 == v116)
    {
      v118 = v117;
    }

    else
    {
      v118 = 1;
    }

    if (v118)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_MotionTypeDeviceMotion(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeDeviceMotion and conformance CLP_LogEntry_PrivateData_MotionTypeDeviceMotion, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_MotionTypeDeviceMotion(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeDeviceMotion and conformance CLP_LogEntry_PrivateData_MotionTypeDeviceMotion, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MotionTypeDeviceMotion(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeDeviceMotion and conformance CLP_LogEntry_PrivateData_MotionTypeDeviceMotion, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_SensorFusionStatus.decodeMessage<A>(decoder:)()
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
      v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus(0) + 20);
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_SensorFusionStatus.traverse<A>(visitor:)()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus(0);
  v3 = (v0 + *(result + 20));
  if (v3[1])
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v4 = *v3;
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_SensorFusionStatus@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a2 + *(a1 + 20);
  *v5 = 0;
  *(v5 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_SensorFusionStatus(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SensorFusionStatus and conformance CLP_LogEntry_PrivateData_SensorFusionStatus, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_SensorFusionStatus(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SensorFusionStatus and conformance CLP_LogEntry_PrivateData_SensorFusionStatus, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_SensorFusionStatus(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SensorFusionStatus and conformance CLP_LogEntry_PrivateData_SensorFusionStatus, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_DeviceMotionSample.decodeMessage<A>(decoder:)()
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
        if (result > 6)
        {
          if (result == 7)
          {
            v10 = v0;
            v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0) + 44);
          }

          else
          {
            if (result != 8)
            {
              goto LABEL_5;
            }

            v10 = v0;
            v11 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0) + 48);
          }

          v0 = v10;
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
        }

        else
        {
          if (result != 5)
          {
            v4 = v0;
            v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0) + 40);
            type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus(0);
            v6 = type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus;
            v7 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SensorFusionStatus and conformance CLP_LogEntry_PrivateData_SensorFusionStatus;
            goto LABEL_15;
          }

          v13 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0) + 36);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SensorFusionMode and conformance CLP_LogEntry_PrivateData_SensorFusionMode();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

      else
      {
        if (result <= 2)
        {
          if (result == 1)
          {
            v12 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0) + 20);
            type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
            lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
          }

          else
          {
            if (result != 2)
            {
              goto LABEL_5;
            }

            v4 = v0;
            v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0) + 24);
            type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion(0);
            v6 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion;
            v7 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeDeviceMotion and conformance CLP_LogEntry_PrivateData_MotionTypeDeviceMotion;
LABEL_15:
            lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(v7, v6);
            v0 = v4;
          }

          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 3)
        {
          v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0) + 28);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }

        else
        {
          v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0) + 32);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_DeviceMotionSample.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in CLP_LogEntry_PrivateData_AccelSample.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample);
  if (!v4)
  {
    closure #2 in CLP_LogEntry_PrivateData_DeviceMotionSample.traverse<A>(visitor:)(v5, a1, a2, a3);
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0);
    if (*(v5 + *(v10 + 28)) != 2)
    {
      v11 = v10;
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
      v10 = v11;
    }

    v12 = (v5 + *(v10 + 32));
    if ((v12[1] & 1) == 0)
    {
      v13 = *v12;
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    closure #5 in CLP_LogEntry_PrivateData_DeviceMotionSample.traverse<A>(visitor:)(v5);
    closure #6 in CLP_LogEntry_PrivateData_DeviceMotionSample.traverse<A>(visitor:)(v5, a1, a2, a3);
    closure #7 in CLP_LogEntry_PrivateData_BodyMetrics.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample);
    closure #8 in CLP_LogEntry_PrivateData_BodyMetrics.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #2 in CLP_LogEntry_PrivateData_DeviceMotionSample.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf041CLP_LogEntry_PrivateData_MotionTypeDeviceG0VSgMd, &_s10ALProtobuf041CLP_LogEntry_PrivateData_MotionTypeDeviceG0VSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 24), v8, &_s10ALProtobuf041CLP_LogEntry_PrivateData_MotionTypeDeviceG0VSgMd, &_s10ALProtobuf041CLP_LogEntry_PrivateData_MotionTypeDeviceG0VSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf041CLP_LogEntry_PrivateData_MotionTypeDeviceG0VSgMd, &_s10ALProtobuf041CLP_LogEntry_PrivateData_MotionTypeDeviceG0VSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeDeviceMotion and conformance CLP_LogEntry_PrivateData_MotionTypeDeviceMotion, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion);
}

uint64_t closure #5 in CLP_LogEntry_PrivateData_DeviceMotionSample.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0);
  if (*(a1 + *(result + 36)) != 5)
  {
    v3 = *(a1 + *(result + 36));
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SensorFusionMode and conformance CLP_LogEntry_PrivateData_SensorFusionMode();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #6 in CLP_LogEntry_PrivateData_DeviceMotionSample.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_SensorFusionStatusVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SensorFusionStatusVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 40), v8, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SensorFusionStatusVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SensorFusionStatusVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SensorFusionStatusVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SensorFusionStatusVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SensorFusionStatus and conformance CLP_LogEntry_PrivateData_SensorFusionStatus, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus);
}

uint64_t closure #7 in CLP_LogEntry_PrivateData_BodyMetrics.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 44));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #8 in CLP_LogEntry_PrivateData_BodyMetrics.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 48));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_DeviceMotionSample@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[8];
  *(a2 + a1[7]) = 2;
  v9 = a2 + v8;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1[10];
  *(a2 + a1[9]) = 5;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus(0);
  result = (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  v13 = a1[12];
  v14 = a2 + a1[11];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a2 + v13;
  *v15 = 0;
  *(v15 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_DeviceMotionSample(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceMotionSample and conformance CLP_LogEntry_PrivateData_DeviceMotionSample, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_DeviceMotionSample(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceMotionSample and conformance CLP_LogEntry_PrivateData_DeviceMotionSample, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_DeviceMotionSample(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceMotionSample and conformance CLP_LogEntry_PrivateData_DeviceMotionSample, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_DeviceMotion.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotion(0) + 24);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceMotionSample and conformance CLP_LogEntry_PrivateData_DeviceMotionSample, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_DeviceMotion.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in CLP_LogEntry_PrivateData_DeviceMotion.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0);
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceMotionSample and conformance CLP_LogEntry_PrivateData_DeviceMotionSample, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v8 = v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotion(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CLP_LogEntry_PrivateData_DeviceMotion.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotion(0);
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

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_DeviceMotion(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceMotion and conformance CLP_LogEntry_PrivateData_DeviceMotion, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotion);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_DeviceMotion(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceMotion and conformance CLP_LogEntry_PrivateData_DeviceMotion, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotion);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_DeviceMotion(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceMotion and conformance CLP_LogEntry_PrivateData_DeviceMotion, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotion);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData.decodeMessage<A>(decoder:)()
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
          v3 = v0;
          if (result == 5)
          {
            v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0) + 36);
          }

          else
          {
            v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0) + 40);
          }

          goto LABEL_5;
        }

        if (result == 7)
        {
          v3 = v0;
          v11 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0) + 44);
          goto LABEL_5;
        }

        if (result == 8)
        {
          v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0) + 48);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        if (result > 2)
        {
          v3 = v0;
          if (result == 3)
          {
            v10 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0) + 28);
          }

          else
          {
            v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0) + 32);
          }

          goto LABEL_5;
        }

        if (result == 1)
        {
          v3 = v0;
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0) + 20);
LABEL_5:
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_6;
        }

        if (result == 2)
        {
          v3 = v0;
          v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0) + 24);
          goto LABEL_5;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0);
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

  closure #5 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
  closure #6 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
  closure #7 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
  closure #8 in CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #6 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 40));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #7 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 44));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #8 in CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 48), v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a1[10];
  v11 = a2 + a1[9];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a1[11];
  v14 = a1[12];
  v15 = a2 + v13;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v17 = *(*(v16 - 8) + 56);

  return v17(a2 + v14, 1, 1, v16);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData and conformance CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData and conformance CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData and conformance CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_23D1B8150;
  v14 = v13 + v12 + v10[14];
  *(v13 + v12) = 1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = *a5;
  v16 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t CLP_LogEntry_PrivateData_GeomagneticModelData.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GeomagneticModelData(0) + 20);
        type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData and conformance CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GeomagneticModelData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in CLP_LogEntry_PrivateData_GeomagneticModelData.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CLP_LogEntry_PrivateData_GeomagneticModelData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMd, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_GeomagneticModelData(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 20), v8, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMd, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMd, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData and conformance CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GeomagneticModelData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GeomagneticModelData and conformance CLP_LogEntry_PrivateData_GeomagneticModelData, type metadata accessor for CLP_LogEntry_PrivateData_GeomagneticModelData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GeomagneticModelData(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GeomagneticModelData and conformance CLP_LogEntry_PrivateData_GeomagneticModelData, type metadata accessor for CLP_LogEntry_PrivateData_GeomagneticModelData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GeomagneticModelData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GeomagneticModelData and conformance CLP_LogEntry_PrivateData_GeomagneticModelData, type metadata accessor for CLP_LogEntry_PrivateData_GeomagneticModelData);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_WifiAccessPoint.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
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
    result = dispatch thunk of Visitor.visitSingularFixed64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  v13 = (v5 + v10[6]);
  if (v13[1])
  {
    v14 = *v13;
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  v15 = (v5 + v10[7]);
  if ((v15[1] & 1) == 0)
  {
    v16 = *v15;
    dispatch thunk of Visitor.visitSingularSInt32Field(value:fieldNumber:)();
  }

  if (*(v5 + v10[8]) != 4)
  {
    v17 = *(v5 + v10[8]);
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WifiAccessPointMode and conformance CLP_LogEntry_PrivateData_WifiAccessPointMode();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  closure #5 in CLP_LogEntry_PrivateData_WifiAccessPoint.traverse<A>(visitor:)(v5);
  closure #6 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  closure #7 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  closure #8 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  closure #9 in CLP_LogEntry_PrivateData_WifiAccessPoint.traverse<A>(visitor:)(v5);
  closure #10 in CLP_LogEntry_PrivateData_WifiAccessPoint.traverse<A>(visitor:)(v5);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #5 in CLP_LogEntry_PrivateData_WifiAccessPoint.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v3 = (a1 + *(result + 36));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #9 in CLP_LogEntry_PrivateData_WifiAccessPoint.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  if (*(a1 + *(result + 52)) != 4)
  {
    v3 = *(a1 + *(result + 52));
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WifiRfBand and conformance CLP_LogEntry_PrivateData_WifiRfBand();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #10 in CLP_LogEntry_PrivateData_WifiAccessPoint.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v3 = (a1 + *(result + 56));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_WifiAccessPoint(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAccessPoint and conformance CLP_LogEntry_PrivateData_WifiAccessPoint, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_WifiAccessPoint(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAccessPoint and conformance CLP_LogEntry_PrivateData_WifiAccessPoint, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_WifiAccessPoint(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAccessPoint and conformance CLP_LogEntry_PrivateData_WifiAccessPoint, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_WifiAssociationState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
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

  closure #2 in CLP_LogEntry_PrivateData_WifiAssociationState.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #2 in CLP_LogEntry_PrivateData_WifiAssociationState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 24), v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAccessPoint and conformance CLP_LogEntry_PrivateData_WifiAccessPoint, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_WifiAssociationState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAssociationState and conformance CLP_LogEntry_PrivateData_WifiAssociationState, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_WifiAssociationState(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAssociationState and conformance CLP_LogEntry_PrivateData_WifiAssociationState, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_WifiAssociationState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAssociationState and conformance CLP_LogEntry_PrivateData_WifiAssociationState, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_WifiScanResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in CLP_LogEntry_PrivateData_WifiScanResult.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAccessPoint and conformance CLP_LogEntry_PrivateData_WifiAccessPoint, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v8 = v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CLP_LogEntry_PrivateData_WifiScanResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
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

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_WifiScanResult(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiScanResult and conformance CLP_LogEntry_PrivateData_WifiScanResult, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_WifiScanResult(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiScanResult and conformance CLP_LogEntry_PrivateData_WifiScanResult, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_WifiScanResult(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiScanResult and conformance CLP_LogEntry_PrivateData_WifiScanResult, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_WifiNotification.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20));
  result = closure #1 in closure #1 in CLP_LogEntry_PrivateData_WifiNotification.traverse<A>(visitor:)(v8, a1, a2, a3);
  if (!v4)
  {
    v10 = (v8 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client);
    swift_beginAccess();
    if ((v10[1] & 1) == 0)
    {
      v11 = *v10;
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    v12 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type;
    swift_beginAccess();
    if (*(v8 + v12) != 15)
    {
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WifiNotificationType and conformance CLP_LogEntry_PrivateData_WifiNotificationType();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    v13 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scanType;
    swift_beginAccess();
    if (*(v8 + v13) != 15)
    {
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WifiScanType and conformance CLP_LogEntry_PrivateData_WifiScanType();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    v14 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__power;
    swift_beginAccess();
    if (*(v8 + v14) != 2)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    closure #6 in closure #1 in CLP_LogEntry_PrivateData_WifiNotification.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #7 in closure #1 in CLP_LogEntry_PrivateData_WifiNotification.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__simulated);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__available);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInvoluntaryLinkDown);
    closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isApAwake);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in CLP_LogEntry_PrivateData_WifiNotification.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
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

uint64_t closure #6 in closure #1 in CLP_LogEntry_PrivateData_WifiNotification.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__associatedState;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAssociationState and conformance CLP_LogEntry_PrivateData_WifiAssociationState, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);
}

uint64_t closure #7 in closure #1 in CLP_LogEntry_PrivateData_WifiNotification.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scan;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiScanResult and conformance CLP_LogEntry_PrivateData_WifiScanResult, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
}

uint64_t closure #22 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v6) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

BOOL closure #1 in static CLP_LogEntry_PrivateData_WifiNotification.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v133 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
  v120 = *(v3 - 8);
  v121 = v3;
  v4 = *(v120 + 64);
  MEMORY[0x28223BE20](v3);
  v116 = (&v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSg_ADtMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSg_ADtMR);
  v6 = *(*(v119 - 8) + 64);
  MEMORY[0x28223BE20](v119);
  v122 = &v115 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v117 = (&v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v129 = &v115 - v12;
  v13 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  v124 = *(v13 - 8);
  v125 = v13;
  v14 = *(v124 + 64);
  MEMORY[0x28223BE20](v13);
  v118 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSg_ADtMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSg_ADtMR);
  v16 = *(*(v123 - 8) + 64);
  MEMORY[0x28223BE20](v123);
  v126 = &v115 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v128 = &v115 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v130 = &v115 - v22;
  v132 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v23 = *(v132 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v132);
  v127 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v27 = v26 - 8;
  v28 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v115 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v131 = &v115 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = &v115 - v35;
  v37 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v37, v36, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v38 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v39 = v133;
  swift_beginAccess();
  v40 = *(v27 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v36, v30, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v41 = v39 + v38;
  v42 = v132;
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

  v44 = v131;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v30, v131, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v43(&v30[v40], 1, v42) == 1)
  {

    outlined destroy of Any?(v36, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v44, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  v49 = v127;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v30[v40], v127, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

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
  v51 = (a1 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client);
  swift_beginAccess();
  v52 = *v51;
  v53 = *(v51 + 4);
  v54 = v133 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  v55 = *(v54 + 4);
  if (v53)
  {
    v56 = v128;
    v57 = v129;
    v58 = v130;
    if ((*(v54 + 4) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v56 = v128;
    v57 = v129;
    v58 = v130;
    if ((*(v54 + 4) & 1) != 0 || v52 != *v54)
    {
      goto LABEL_8;
    }
  }

  v59 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type;
  swift_beginAccess();
  v60 = *(a1 + v59);
  v61 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type;
  v62 = v133;
  swift_beginAccess();
  v63 = *(v62 + v61);
  if (v60 == 15)
  {
    if (v63 != 15)
    {
      goto LABEL_8;
    }
  }

  else if (v63 == 15 || v60 != v63)
  {
    goto LABEL_8;
  }

  v64 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scanType;
  swift_beginAccess();
  v65 = *(a1 + v64);
  v66 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scanType;
  v67 = v133;
  swift_beginAccess();
  v68 = *(v67 + v66);
  if (v65 == 15)
  {
    if (v68 != 15)
    {
      goto LABEL_8;
    }
  }

  else if (v68 == 15 || v65 != v68)
  {
    goto LABEL_8;
  }

  v69 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__power;
  swift_beginAccess();
  v70 = *(a1 + v69);
  v71 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__power;
  v72 = v133;
  swift_beginAccess();
  v73 = *(v72 + v71);
  if (v70 == 2)
  {
    if (v73 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (v73 == 2 || ((v70 ^ v73) & 1) != 0)
  {
    goto LABEL_8;
  }

  v74 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__associatedState;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v74, v58, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
  v75 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__associatedState;
  v76 = v133;
  swift_beginAccess();
  v77 = *(v123 + 48);
  v78 = v58;
  v79 = v126;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v78, v126, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
  v80 = v79;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v76 + v75, v79 + v77, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
  v81 = v125;
  v82 = *(v124 + 48);
  if (v82(v79, 1, v125) == 1)
  {
    outlined destroy of Any?(v130, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
    if (v82(v79 + v77, 1, v81) == 1)
    {
      outlined destroy of Any?(v79, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
      goto LABEL_38;
    }

LABEL_36:
    v45 = &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSg_ADtMd;
    v46 = &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSg_ADtMR;
LABEL_44:
    v47 = v80;
    goto LABEL_7;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v79, v56, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
  if (v82(v79 + v77, 1, v81) == 1)
  {
    outlined destroy of Any?(v130, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v56, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);
    goto LABEL_36;
  }

  v83 = v118;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v79 + v77, v118, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);
  v84 = specialized static CLP_LogEntry_PrivateData_WifiAssociationState.== infix(_:_:)(v56, v83);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v83, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);
  outlined destroy of Any?(v130, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v56, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);
  outlined destroy of Any?(v79, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_WifiAssociationStateVSgMR);
  if ((v84 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_38:
  v85 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scan;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v85, v57, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR);
  v86 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scan;
  v87 = v133;
  swift_beginAccess();
  v88 = *(v119 + 48);
  v89 = v122;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v57, v122, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR);
  v80 = v89;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v87 + v86, v89 + v88, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR);
  v90 = v121;
  v91 = *(v120 + 48);
  if (v91(v89, 1, v121) == 1)
  {
    outlined destroy of Any?(v57, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR);
    if (v91(v89 + v88, 1, v90) == 1)
    {
      outlined destroy of Any?(v89, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR);
      goto LABEL_46;
    }

    goto LABEL_43;
  }

  v92 = v117;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v80, v117, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR);
  if (v91(v80 + v88, 1, v90) == 1)
  {
    outlined destroy of Any?(v57, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v92, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
LABEL_43:
    v45 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSg_ADtMd;
    v46 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSg_ADtMR;
    goto LABEL_44;
  }

  v93 = v116;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v80 + v88, v116, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
  v94 = specialized static CLP_LogEntry_PrivateData_WifiScanResult.== infix(_:_:)(v92, v93, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint, specialized static CLP_LogEntry_PrivateData_WifiAccessPoint.== infix(_:_:));
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v93, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
  outlined destroy of Any?(v57, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v92, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
  outlined destroy of Any?(v80, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_WifiScanResultVSgMR);
  if ((v94 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_46:
  v95 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__simulated;
  swift_beginAccess();
  v96 = *(a1 + v95);
  v97 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__simulated;
  v98 = v133;
  swift_beginAccess();
  v99 = *(v98 + v97);
  if (v96 == 2)
  {
    if (v99 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (v99 == 2 || ((v96 ^ v99) & 1) != 0)
  {
    goto LABEL_8;
  }

  v100 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__available;
  swift_beginAccess();
  v101 = *(a1 + v100);
  v102 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__available;
  v103 = v133;
  swift_beginAccess();
  v104 = *(v103 + v102);
  if (v101 == 2)
  {
    if (v104 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (v104 == 2 || ((v101 ^ v104) & 1) != 0)
  {
    goto LABEL_8;
  }

  v105 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInvoluntaryLinkDown;
  swift_beginAccess();
  v106 = *(a1 + v105);
  v107 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInvoluntaryLinkDown;
  v108 = v133;
  swift_beginAccess();
  v109 = *(v108 + v107);
  if (v106 == 2)
  {
    if (v109 == 2)
    {
      goto LABEL_61;
    }

LABEL_8:

    return 0;
  }

  if (v109 == 2 || ((v106 ^ v109) & 1) != 0)
  {
    goto LABEL_8;
  }

LABEL_61:
  v110 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isApAwake;
  swift_beginAccess();
  v111 = *(a1 + v110);

  v112 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isApAwake;
  v113 = v133;
  swift_beginAccess();
  v114 = *(v113 + v112);

  if (v111 != 2)
  {
    return v114 != 2 && ((v111 ^ v114) & 1) == 0;
  }

  return v114 == 2;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_WifiNotification(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiNotification and conformance CLP_LogEntry_PrivateData_WifiNotification, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_WifiNotification(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiNotification and conformance CLP_LogEntry_PrivateData_WifiNotification, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_WifiNotification(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiNotification and conformance CLP_LogEntry_PrivateData_WifiNotification, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.decodeMessage<A>(decoder:)()
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
          v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction(0) + 28);
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_5;
        }

        if (result == 4)
        {
          v4 = v0;
          v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction(0) + 32);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.MeasurementSource and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.MeasurementSource();
LABEL_14:
          v0 = v4;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

      else
      {
        if (result != 1)
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

          v4 = v0;
          v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction(0) + 24);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability();
          goto LABEL_14;
        }

        v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction(0) + 20);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in CLP_LogEntry_PrivateData_AccelSample.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction);
  if (!v4)
  {
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction(0);
    v7 = v6;
    if (*(v3 + *(v6 + 24)) != 4)
    {
      v10 = *(v3 + *(v6 + 24));
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    v8 = v3 + *(v7 + 28);
    if ((*(v8 + 8) & 1) == 0)
    {
      v9 = *v8;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    if (*(v3 + *(v7 + 32)) != 4)
    {
      v11 = *(v3 + *(v7 + 32));
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.MeasurementSource and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.MeasurementSource();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  *(a2 + a1[6]) = 4;
  v8 = a2 + v7;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(a2 + a1[8]) = 4;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction, type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction, type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction, type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOLocationCoordinate2D and conformance CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOLocationCoordinate2D and conformance CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOLocationCoordinate2D and conformance CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection.decodeMessage<A>(decoder:)()
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
          v3 = v0;
          if (result == 5)
          {
            v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0) + 36);
          }

          else
          {
            v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0) + 40);
          }

          goto LABEL_5;
        }

        if (result == 7)
        {
          v3 = v0;
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0) + 44);
LABEL_5:
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_6;
        }

        if (result == 8)
        {
          v3 = v0;
          v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0) + 48);
          goto LABEL_5;
        }
      }

      else if (result > 2)
      {
        if (result == 3)
        {
          v3 = v0;
          v10 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0) + 28);
          goto LABEL_5;
        }

        v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0) + 32);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOLocationCoordinate2D and conformance CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        v3 = v0;
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0) + 24);
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0), lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOLocationCoordinate2D and conformance CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0);
    v9 = result;
    v10 = v3 + *(result + 24);
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

    v12 = v3 + v9[7];
    if ((*(v12 + 8) & 1) == 0)
    {
      v13 = *v12;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    if (*(v3 + v9[8]) != 2)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    v14 = v3 + v9[9];
    if ((*(v14 + 8) & 1) == 0)
    {
      v15 = *v14;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    closure #6 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection);
    closure #7 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection);
    closure #8 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection);
    v16 = v3 + v9[5];
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #8 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 48));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = a2 + a1[5];
  result = UnknownStorage.init()();
  v6 = a1[7];
  v7 = a2 + a1[6];
  *v7 = 0;
  v7[8] = 1;
  v8 = a2 + v6;
  *v8 = 0;
  v8[8] = 1;
  v9 = a1[9];
  *(a2 + a1[8]) = 2;
  v10 = a2 + v9;
  *v10 = 0;
  v10[8] = 1;
  v11 = a1[11];
  v12 = a2 + a1[10];
  *v12 = 0;
  v12[8] = 1;
  v13 = a2 + v11;
  *v13 = 0;
  v13[8] = 1;
  v14 = a2 + a1[12];
  *v14 = 0;
  v14[8] = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection and conformance CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection and conformance CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection and conformance CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureBuilding.decodeMessage<A>(decoder:)()
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
        v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding(0) + 24);
LABEL_5:
        v0 = v3;
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
        goto LABEL_6;
      }

      if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection and conformance CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v3 = v0;
    v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding(0) + 28);
    goto LABEL_5;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureBuilding.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0), lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection and conformance CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding(0);
    v3 = result;
    v4 = (v0 + *(result + 24));
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

    v6 = (v0 + *(v3 + 28));
    if ((v6[1] & 1) == 0)
    {
      v7 = *v6;
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    v8 = v0 + *(v3 + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_GEOMapFeatureBuilding@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = a2 + a1[5];
  result = UnknownStorage.init()();
  v6 = a1[7];
  v7 = a2 + a1[6];
  *v7 = 0;
  v7[8] = 1;
  v8 = a2 + v6;
  *v8 = 0;
  v8[8] = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GEOMapFeatureBuilding(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureBuilding and conformance CLP_LogEntry_PrivateData_GEOMapFeatureBuilding, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GEOMapFeatureBuilding(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureBuilding and conformance CLP_LogEntry_PrivateData_GEOMapFeatureBuilding, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GEOMapFeatureBuilding(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureBuilding and conformance CLP_LogEntry_PrivateData_GEOMapFeatureBuilding, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_GEOMapBuildingData.decodeMessage<A>(decoder:)()
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
          dispatch thunk of Decoder.decodeRepeatedUInt64Field(value:)();
          goto LABEL_5;
        }

        if (result == 4)
        {
          v3 = v0;
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData(0) + 32);
          type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
          v5 = type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D;
          v6 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOLocationCoordinate2D and conformance CLP_LogEntry_PrivateData_GEOLocationCoordinate2D;
LABEL_15:
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(v6, v5);
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          v3 = v0;
          v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData(0) + 28);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
          v6 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp;
          goto LABEL_15;
        }

        if (result == 2)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureBuilding and conformance CLP_LogEntry_PrivateData_GEOMapFeatureBuilding, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapBuildingData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in CLP_LogEntry_PrivateData_GEOMapBuildingData.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    v10 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding(0);
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureBuilding and conformance CLP_LogEntry_PrivateData_GEOMapFeatureBuilding, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    if (*(v5[1] + 16))
    {
      dispatch thunk of Visitor.visitRepeatedUInt64Field(value:fieldNumber:)();
    }

    closure #2 in CLP_LogEntry_PrivateData_GEOMapBuildingData.traverse<A>(visitor:)(v5, a1, a2, a3);
    v11 = v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData(0) + 24);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CLP_LogEntry_PrivateData_GEOMapBuildingData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData(0);
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

uint64_t closure #2 in CLP_LogEntry_PrivateData_GEOMapBuildingData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 32), v8, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOLocationCoordinate2D and conformance CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_GEOMapBuildingData@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = v4;
  v5 = &a2[a1[6]];
  UnknownStorage.init()();
  v6 = a1[7];
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = a1[8];
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(&a2[v8], 1, 1, v9);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance CLP_LogEntry_PrivateData_BatchedLocations@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance CLP_LogEntry_PrivateData_BatchedLocations(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GEOMapBuildingData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapBuildingData and conformance CLP_LogEntry_PrivateData_GEOMapBuildingData, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GEOMapBuildingData(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapBuildingData and conformance CLP_LogEntry_PrivateData_GEOMapBuildingData, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GEOMapBuildingData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapBuildingData and conformance CLP_LogEntry_PrivateData_GEOMapBuildingData, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.decodeMessage<A>(decoder:)()
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
          type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOLocationCoordinate2D and conformance CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }

        else if (result == 2)
        {
          v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0) + 24);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.BranchType and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.BranchType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v3 = v0;
            v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0) + 28);
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            break;
          case 4:
            v3 = v0;
            v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0) + 32);
            goto LABEL_5;
          case 5:
            v3 = v0;
            v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0) + 36);
            goto LABEL_5;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0), lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOLocationCoordinate2D and conformance CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0);
    v3 = result;
    if (*(v0 + *(result + 24)) == 4)
    {
      if (v1)
      {
        return result;
      }
    }

    else
    {
      v11 = *(v0 + *(result + 24));
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.BranchType and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.BranchType();
      result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
      if (v1)
      {
        return result;
      }
    }

    v4 = (v0 + v3[7]);
    if ((v4[1] & 1) == 0)
    {
      v5 = *v4;
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    v6 = (v0 + v3[8]);
    if ((v6[1] & 1) == 0)
    {
      v7 = *v6;
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    v8 = (v0 + v3[9]);
    if ((v8[1] & 1) == 0)
    {
      v9 = *v8;
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    v10 = v0 + v3[5];
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = a2 + a1[5];
  result = UnknownStorage.init()();
  v6 = a1[7];
  *(a2 + a1[6]) = 4;
  v7 = a2 + v6;
  *v7 = 0;
  v7[4] = 1;
  v8 = a1[9];
  v9 = a2 + a1[8];
  *v9 = 0;
  v9[4] = 1;
  v10 = a2 + v8;
  *v10 = 0;
  v10[4] = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox.decodeMessage<A>(decoder:)()
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
          v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0) + 24);
          goto LABEL_5;
        }

        if (result == 2)
        {
          v3 = v0;
          v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0) + 28);
          goto LABEL_5;
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v3 = v0;
            v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0) + 32);
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
            break;
          case 4:
            v3 = v0;
            v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0) + 36);
            goto LABEL_5;
          case 5:
            type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
            lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOLocationCoordinate2D and conformance CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
            dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox.traverse<A>(visitor:)()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0);
  v3 = result;
  v4 = (v0 + *(result + 24));
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

  v6 = (v0 + v3[7]);
  if ((v6[1] & 1) == 0)
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  v8 = (v0 + v3[8]);
  if ((v8[1] & 1) == 0)
  {
    v9 = *v8;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  v10 = (v0 + v3[9]);
  if ((v10[1] & 1) == 0)
  {
    v11 = *v10;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if (*(*v0 + 16))
  {
    type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOLocationCoordinate2D and conformance CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  v12 = v0 + v3[5];
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = a2 + a1[5];
  result = UnknownStorage.init()();
  v6 = a1[7];
  v7 = a2 + a1[6];
  *v7 = 0;
  v7[8] = 1;
  v8 = a2 + v6;
  *v8 = 0;
  v8[8] = 1;
  v9 = a1[9];
  v10 = a2 + a1[8];
  *v10 = 0;
  v10[8] = 1;
  v11 = a2 + v9;
  *v11 = 0;
  v11[8] = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.decodeMessage<A>(decoder:)()
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
          v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0) + 24);
          type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);
LABEL_21:
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result != 2)
        {
          if (result != 3)
          {
            goto LABEL_5;
          }

          v5 = v0;
          v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0) + 28);
LABEL_18:
          v0 = v5;
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
          goto LABEL_5;
        }

        type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else
      {
        if (result > 5)
        {
          if (result != 6)
          {
            if (result != 7)
            {
              goto LABEL_5;
            }

            v5 = v0;
            v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0) + 44);
            goto LABEL_18;
          }

          v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0) + 40);
          type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);
          goto LABEL_21;
        }

        if (result == 4)
        {
          v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0) + 32);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }

        else
        {
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0) + 36);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    v10 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0);
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v11 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
    v12 = v5 + v11[7];
    if ((*(v12 + 8) & 1) == 0)
    {
      v13 = *v12;
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    if (*(v5 + v11[8]) != 4)
    {
      v17 = *(v5 + v11[8]);
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    v14 = (v5 + v11[9]);
    if ((v14[1] & 1) == 0)
    {
      v15 = *v14;
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    closure #5 in CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.traverse<A>(visitor:)(v5, a1, a2, a3);
    closure #6 in CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.traverse<A>(visitor:)(v5);
    v16 = v5 + v11[5];
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMd, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 24), v8, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMd, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMd, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);
}

uint64_t closure #5 in CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMd, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 40), v8, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMd, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMd, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);
}

uint64_t closure #6 in CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
  v3 = (a1 + *(result + 44));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = &a2[a1[5]];
  UnknownStorage.init()();
  v5 = a1[6];
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0);
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = a1[8];
  v8 = &a2[a1[7]];
  *v8 = 0;
  v8[8] = 1;
  a2[v7] = 4;
  v9 = a1[10];
  v10 = &a2[a1[9]];
  *v10 = 0;
  v10[4] = 1;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0);
  result = (*(*(v11 - 8) + 56))(&a2[v9], 1, 1, v11);
  v13 = &a2[a1[11]];
  *v13 = 0;
  v13[8] = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t *CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures.protoMessageName;
}

uint64_t static CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo.protoMessageName.getter(void *a1, void *a2, void *a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  v3 = *a2;
  v4 = *a3;

  return v3;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result == 1)
    {
      v1 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0) + 20);
      goto LABEL_3;
    }

    if (result == 2)
    {
      v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0) + 24);
LABEL_3:
      v0 = 0;
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }
  }
}

uint64_t CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures.traverse<A>(visitor:)()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0);
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

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for static Message.protoMessageName.getter in conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (*a3 != -1)
  {
    v8 = a5;
    v9 = a4;
    swift_once();
    a4 = v9;
    a5 = v8;
  }

  v5 = *a4;
  v6 = *a5;

  return v5;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData(0) + 28);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 2:
          type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
        case 1:
          v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData(0) + 24);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v8 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData(0);
    if (*(v5 + *(v8 + 28)) != 2)
    {
      v9 = v8;
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
      v8 = v9;
    }

    v10 = v5 + *(v8 + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData(0);
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

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = &a2[a1[5]];
  UnknownStorage.init()();
  v5 = a1[6];
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  a2[a1[7]] = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData and conformance CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData and conformance CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData and conformance CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_WatchOrientation.decodeMessage<A>(decoder:)()
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
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0) + 24);
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v3 = v0;
    v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0) + 20);
LABEL_5:
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType and conformance CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType();
    v0 = v3;
    dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
    goto LABEL_6;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_WatchOrientation.traverse<A>(visitor:)()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0);
  v3 = result;
  if (*(v0 + *(result + 20)) == 4)
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v4 = *(v0 + *(result + 20));
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType and conformance CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  if (*(v0 + *(v3 + 24)) != 4)
  {
    v5 = *(v0 + *(v3 + 24));
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType and conformance CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_TechnologyStatus@<X0>(uint64_t a1@<X0>, char a2@<W2>, char a3@<W3>, uint64_t a4@<X8>)
{
  result = UnknownStorage.init()();
  v9 = *(a1 + 24);
  *(a4 + *(a1 + 20)) = a2;
  *(a4 + v9) = a3;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_WatchOrientation(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WatchOrientation and conformance CLP_LogEntry_PrivateData_WatchOrientation, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_WatchOrientation(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WatchOrientation and conformance CLP_LogEntry_PrivateData_WatchOrientation, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_WatchOrientation(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WatchOrientation and conformance CLP_LogEntry_PrivateData_WatchOrientation, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_WristState.decodeMessage<A>(decoder:)()
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
        break;
      }

      if (result <= 5)
      {
        if (result != 4)
        {
          v3 = v0;
          v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_WristState(0) + 36);
          goto LABEL_5;
        }

        v6 = v0;
        v10 = *(type metadata accessor for CLP_LogEntry_PrivateData_WristState(0) + 32);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType and conformance CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType();
LABEL_23:
        v0 = v6;
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        goto LABEL_6;
      }

      if (result == 6)
      {
        v3 = v0;
        v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_WristState(0) + 40);
LABEL_5:
        v0 = v3;
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        goto LABEL_6;
      }

      if (result == 7)
      {
        v3 = v0;
        v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_WristState(0) + 44);
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    switch(result)
    {
      case 1:
        v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_WristState(0) + 20);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        goto LABEL_6;
      case 2:
        v6 = v0;
        v11 = *(type metadata accessor for CLP_LogEntry_PrivateData_WristState(0) + 24);
        break;
      case 3:
        v6 = v0;
        v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_WristState(0) + 28);
        break;
      default:
        goto LABEL_6;
    }

    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WristState.WristStateType and conformance CLP_LogEntry_PrivateData_WristState.WristStateType();
    goto LABEL_23;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_WristState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in CLP_LogEntry_PrivateData_AccelSample.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
  if (!v4)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
    v11 = v10;
    if (*(v5 + *(v10 + 24)) != 4)
    {
      v12 = *(v5 + *(v10 + 24));
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WristState.WristStateType and conformance CLP_LogEntry_PrivateData_WristState.WristStateType();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    if (*(v5 + *(v11 + 28)) != 4)
    {
      v13 = *(v5 + *(v11 + 28));
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WristState.WristStateType and conformance CLP_LogEntry_PrivateData_WristState.WristStateType();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    if (*(v5 + *(v11 + 32)) != 4)
    {
      v14 = *(v5 + *(v11 + 32));
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType and conformance CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    closure #5 in CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
    closure #6 in CLP_LogEntry_PrivateData_TunnelBridgeAssistance.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
    closure #7 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_WristState@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  *(a2 + a1[6]) = 4;
  *(a2 + v7) = 4;
  v8 = a1[9];
  *(a2 + a1[8]) = 4;
  *(a2 + v8) = 2;
  v9 = a1[11];
  *(a2 + a1[10]) = 2;
  *(a2 + v9) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_WristState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WristState and conformance CLP_LogEntry_PrivateData_WristState, type metadata accessor for CLP_LogEntry_PrivateData_WristState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_WristState(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WristState and conformance CLP_LogEntry_PrivateData_WristState, type metadata accessor for CLP_LogEntry_PrivateData_WristState);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_WristState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WristState and conformance CLP_LogEntry_PrivateData_WristState, type metadata accessor for CLP_LogEntry_PrivateData_WristState);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_WatchState.decodeMessage<A>(decoder:)()
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
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0) + 28);
          type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0);
          v5 = type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation;
          v6 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WatchOrientation and conformance CLP_LogEntry_PrivateData_WatchOrientation;
LABEL_5:
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(v6, v5);
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_6;
        }

        if (result == 4)
        {
          v3 = v0;
          v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0) + 32);
          type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
          v5 = type metadata accessor for CLP_LogEntry_PrivateData_WristState;
          v6 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WristState and conformance CLP_LogEntry_PrivateData_WristState;
          goto LABEL_5;
        }
      }

      else
      {
        if (result == 1)
        {
          v3 = v0;
          v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0) + 20);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
          v6 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp;
          goto LABEL_5;
        }

        if (result == 2)
        {
          v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0) + 24);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_WatchState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in CLP_LogEntry_PrivateData_AccelSample.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_WatchState);
  if (!v4)
  {
    v10 = (v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0) + 24));
    if ((v10[1] & 1) == 0)
    {
      v11 = *v10;
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    closure #3 in CLP_LogEntry_PrivateData_WatchState.traverse<A>(visitor:)(v5, a1, a2, a3);
    closure #4 in CLP_LogEntry_PrivateData_WatchState.traverse<A>(visitor:)(v5, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CLP_LogEntry_PrivateData_AccelSample.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v18[3] = a4;
  v18[0] = a2;
  v18[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a5(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v16 + 20), v10, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return outlined destroy of Any?(v10, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t closure #3 in CLP_LogEntry_PrivateData_WatchState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 28), v8, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WatchOrientation and conformance CLP_LogEntry_PrivateData_WatchOrientation, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation);
}

uint64_t closure #4 in CLP_LogEntry_PrivateData_WatchState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 32), v8, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WristState and conformance CLP_LogEntry_PrivateData_WristState, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_WatchState@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[7];
  v7 = a2 + a1[6];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0);
  (*(*(v8 - 8) + 56))(a2 + v6, 1, 1, v8);
  v9 = a1[8];
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a2 + v9, 1, 1, v10);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_WatchState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WatchState and conformance CLP_LogEntry_PrivateData_WatchState, type metadata accessor for CLP_LogEntry_PrivateData_WatchState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_WatchState(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WatchState and conformance CLP_LogEntry_PrivateData_WatchState, type metadata accessor for CLP_LogEntry_PrivateData_WatchState);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_WatchState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WatchState and conformance CLP_LogEntry_PrivateData_WatchState, type metadata accessor for CLP_LogEntry_PrivateData_WatchState);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_PlaceInference.decodeMessage<A>(decoder:)()
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
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0) + 28);
LABEL_5:
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          goto LABEL_6;
        }

        if (result == 4)
        {
          v3 = v0;
          v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0) + 32);
          goto LABEL_5;
        }
      }

      else
      {
        if (result == 1)
        {
          v5 = v0;
          v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0) + 20);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType and conformance CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType();
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_6;
          }

          v5 = v0;
          v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0) + 24);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType and conformance CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType();
        }

        v0 = v5;
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_PlaceInference.traverse<A>(visitor:)()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
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
    v8 = *(v0 + *(result + 20));
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType and conformance CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  if (*(v0 + v3[6]) != 3)
  {
    v9 = *(v0 + v3[6]);
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType and conformance CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  v4 = (v0 + v3[7]);
  if (v4[1])
  {
    v5 = *v4;
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  v6 = (v0 + v3[8]);
  if (v6[1])
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_PlaceInference@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 5;
  *(a2 + v5) = 3;
  v6 = a1[8];
  v7 = (a2 + a1[7]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + v6);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_PlaceInference(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PlaceInference and conformance CLP_LogEntry_PrivateData_PlaceInference, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_PlaceInference(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PlaceInference and conformance CLP_LogEntry_PrivateData_PlaceInference, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_PlaceInference(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PlaceInference and conformance CLP_LogEntry_PrivateData_PlaceInference, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__receiptTime, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__arrivalTime, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__departureTime, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__detectionTime, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t CLP_LogEntry_PrivateData_RoutineVisit.decodeMessage<A>(decoder:)()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.init(copying:)(v6);

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

      if (result > 3)
      {
        break;
      }

      if (result == 1 || result == 2 || result == 3)
      {
        goto LABEL_20;
      }

LABEL_23:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result > 5)
    {
      if (result != 6)
      {
        if (result != 7)
        {
          goto LABEL_23;
        }

        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        goto LABEL_22;
      }

      v13 = v1;
      swift_beginAccess();
      type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
      v14 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate;
      v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientLocationCoordinate and conformance CLP_LogEntry_PrivateData_ClientLocationCoordinate;
    }

    else if (result == 4)
    {
LABEL_20:
      v13 = v1;
      swift_beginAccess();
      type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
      v14 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
      v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp;
    }

    else
    {
      v13 = v1;
      swift_beginAccess();
      type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
      v14 = type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference;
      v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PlaceInference and conformance CLP_LogEntry_PrivateData_PlaceInference;
    }

    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(v15, v14);
    v1 = v13;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_22:
    swift_endAccess();
    goto LABEL_23;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_RoutineVisit.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20));
  result = closure #1 in closure #1 in CLP_LogEntry_PrivateData_RoutineVisit.traverse<A>(visitor:)(v8, a1, a2, a3);
  if (!v4)
  {
    closure #2 in closure #1 in CLP_LogEntry_PrivateData_RoutineVisit.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #3 in closure #1 in CLP_LogEntry_PrivateData_RoutineVisit.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #4 in closure #1 in CLP_LogEntry_PrivateData_RoutineVisit.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #5 in closure #1 in CLP_LogEntry_PrivateData_RoutineVisit.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #6 in closure #1 in CLP_LogEntry_PrivateData_RoutineVisit.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalAccuracyM);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in CLP_LogEntry_PrivateData_RoutineVisit.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__receiptTime;
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

uint64_t closure #2 in closure #1 in CLP_LogEntry_PrivateData_RoutineVisit.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__arrivalTime;
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

uint64_t closure #3 in closure #1 in CLP_LogEntry_PrivateData_RoutineVisit.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__departureTime;
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

uint64_t closure #4 in closure #1 in CLP_LogEntry_PrivateData_RoutineVisit.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__detectionTime;
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

uint64_t closure #5 in closure #1 in CLP_LogEntry_PrivateData_RoutineVisit.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PlaceInference and conformance CLP_LogEntry_PrivateData_PlaceInference, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);
}

uint64_t closure #6 in closure #1 in CLP_LogEntry_PrivateData_RoutineVisit.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
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

BOOL closure #1 in static CLP_LogEntry_PrivateData_RoutineVisit.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v149 = *(v4 - 8);
  v150 = v4;
  v5 = *(v149 + 64);
  MEMORY[0x28223BE20](v4);
  v146 = &v146 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSg_ADtMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSg_ADtMR);
  v7 = *(*(v148 - 8) + 64);
  MEMORY[0x28223BE20](v148);
  v151 = &v146 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v158 = &v146 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v153 = &v146 - v13;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
  v155 = *(v14 - 8);
  v156 = v14;
  v15 = *(v155 + 64);
  MEMORY[0x28223BE20](v14);
  v147 = &v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSg_ADtMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSg_ADtMR);
  v17 = *(*(v154 - 8) + 64);
  MEMORY[0x28223BE20](v154);
  v157 = &v146 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v152 = &v146 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v160 = &v146 - v23;
  v24 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v25 = *(v24 - 8);
  v173 = v24;
  v174 = v25;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v168 = &v146 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v161 = &v146 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v163 = &v146 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v167 = &v146 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v146 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38 - 8);
  v159 = &v146 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v164 = &v146 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v162 = &v146 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v166 = &v146 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v165 = &v146 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v171 = &v146 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v170 = &v146 - v53;
  MEMORY[0x28223BE20](v52);
  v55 = &v146 - v54;
  v56 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__receiptTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v56, v55, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v57 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__receiptTime;
  swift_beginAccess();
  v172 = v28;
  v58 = *(v28 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v55, v37, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v59 = a2 + v57;
  v60 = a2;
  v61 = v173;
  v62 = v174;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v59, &v37[v58], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v65 = *(v62 + 48);
  v63 = v62 + 48;
  v64 = v65;
  if (v65(v37, 1, v61) == 1)
  {

    outlined destroy of Any?(v55, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    if (v64(&v37[v58], 1, v61) != 1)
    {
LABEL_7:
      v68 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd;
      v69 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR;
      v70 = v37;
LABEL_23:
      outlined destroy of Any?(v70, v68, v69);
      goto LABEL_24;
    }

    v169 = v64;
    v174 = v63;
    outlined destroy of Any?(v37, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  else
  {
    v66 = v170;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v37, v170, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    if (v64(&v37[v58], 1, v61) == 1)
    {

      outlined destroy of Any?(v55, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      v67 = v66;
LABEL_6:
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v67, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      goto LABEL_7;
    }

    v169 = v64;
    v174 = v63;
    v71 = &v37[v58];
    v72 = v168;
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v71, v168, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

    v73 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v66, v72, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v72, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    outlined destroy of Any?(v55, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v66, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    v61 = v173;
    outlined destroy of Any?(v37, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    if ((v73 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v74 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__arrivalTime;
  swift_beginAccess();
  v75 = v171;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v74, v171, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v76 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__arrivalTime;
  swift_beginAccess();
  v77 = *(v172 + 48);
  v78 = v167;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v75, v167, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v60 + v76, v78 + v77, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v79 = v174;
  v80 = v169;
  v81 = v169(v78, 1, v61);
  v169 = v80;
  if (v81 == 1)
  {
    outlined destroy of Any?(v75, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    if (v80((v78 + v77), 1, v61) == 1)
    {
      outlined destroy of Any?(v78, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_16;
    }

LABEL_14:
    v68 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd;
    v69 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR;
    v70 = v78;
    goto LABEL_23;
  }

  v82 = v165;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v78, v165, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v80((v78 + v77), 1, v61) == 1)
  {
    outlined destroy of Any?(v171, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v82, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_14;
  }

  v83 = v168;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v78 + v77, v168, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  LODWORD(v170) = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v82, v83, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v83, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v171, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v82, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v78, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v170 & 1) == 0)
  {
LABEL_24:

    return 0;
  }

LABEL_16:
  v84 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__departureTime;
  swift_beginAccess();
  v171 = a1;
  v85 = a1 + v84;
  v86 = v166;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v85, v166, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v87 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__departureTime;
  swift_beginAccess();
  v88 = *(v172 + 48);
  v89 = v163;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v86, v163, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v90 = v89;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v60 + v87, v89 + v88, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v91 = v173;
  v92 = v169;
  v93 = v169(v89, 1, v173);
  v174 = v79;
  if (v93 == 1)
  {
    outlined destroy of Any?(v86, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    v94 = v92(v89 + v88, 1, v91);
    v95 = v164;
    v96 = v171;
    if (v94 == 1)
    {
      outlined destroy of Any?(v89, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_27;
    }

LABEL_21:
    v68 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd;
    v69 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR;
LABEL_22:
    v70 = v90;
    goto LABEL_23;
  }

  v97 = v89;
  v98 = v162;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v97, v162, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v99 = v92(v90 + v88, 1, v91);
  v95 = v164;
  if (v99 == 1)
  {
    outlined destroy of Any?(v166, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v98, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_21;
  }

  v101 = v90 + v88;
  v102 = v168;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v101, v168, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v103 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v98, v102, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v102, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v166, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v98, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v90, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v96 = v171;
  if ((v103 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_27:
  v104 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__detectionTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v96 + v104, v95, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v105 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__detectionTime;
  swift_beginAccess();
  v106 = *(v172 + 48);
  v107 = v95;
  v108 = v95;
  v37 = v161;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v107, v161, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v60 + v105, &v37[v106], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v109 = v173;
  v110 = v169;
  if (v169(v37, 1, v173) == 1)
  {
    outlined destroy of Any?(v108, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    if (v110(&v37[v106], 1, v109) == 1)
    {
      outlined destroy of Any?(v37, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_33;
    }

    goto LABEL_7;
  }

  v111 = v159;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v37, v159, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v110(&v37[v106], 1, v109) == 1)
  {
    outlined destroy of Any?(v164, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    v67 = v111;
    goto LABEL_6;
  }

  v112 = &v37[v106];
  v113 = v168;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v112, v168, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v114 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v111, v113, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v113, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v164, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v111, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v37, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v114 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_33:
  v115 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference;
  swift_beginAccess();
  v116 = v160;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v96 + v115, v160, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  v117 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference;
  swift_beginAccess();
  v118 = *(v154 + 48);
  v119 = v157;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v116, v157, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  v90 = v119;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v60 + v117, v119 + v118, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  v120 = v156;
  v121 = *(v155 + 48);
  if (v121(v119, 1, v156) == 1)
  {
    outlined destroy of Any?(v116, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
    v122 = v121(v119 + v118, 1, v120);
    v123 = v158;
    if (v122 == 1)
    {
      outlined destroy of Any?(v119, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v124 = v152;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v119, v152, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  v125 = v121(v119 + v118, 1, v120);
  v123 = v158;
  if (v125 == 1)
  {
    outlined destroy of Any?(v160, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v124, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);
LABEL_38:
    v68 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSg_ADtMd;
    v69 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSg_ADtMR;
    goto LABEL_22;
  }

  v126 = v119 + v118;
  v127 = v147;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v126, v147, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);
  v128 = specialized static CLP_LogEntry_PrivateData_PlaceInference.== infix(_:_:)(v124, v127);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v127, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);
  outlined destroy of Any?(v160, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v124, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);
  outlined destroy of Any?(v119, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PlaceInferenceVSgMR);
  if ((v128 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_40:
  v129 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  swift_beginAccess();
  v130 = v153;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v96 + v129, v153, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v131 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  swift_beginAccess();
  v132 = *(v148 + 48);
  v133 = v151;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v130, v151, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v90 = v133;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v60 + v131, v133 + v132, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v134 = v150;
  v135 = *(v149 + 48);
  if (v135(v133, 1, v150) == 1)
  {
    outlined destroy of Any?(v130, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
    if (v135(v133 + v132, 1, v134) == 1)
    {
      outlined destroy of Any?(v133, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v133, v123, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  if (v135(v133 + v132, 1, v134) == 1)
  {
    outlined destroy of Any?(v153, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v123, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
LABEL_45:
    v68 = &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSg_ADtMd;
    v69 = &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSg_ADtMR;
    goto LABEL_22;
  }

  v136 = v133 + v132;
  v137 = v146;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v136, v146, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  v138 = specialized static CLP_LogEntry_PrivateData_GEOLocationCoordinate2D.== infix(_:_:)(v123, v137, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v137, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  outlined destroy of Any?(v153, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v123, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  outlined destroy of Any?(v133, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  if ((v138 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_47:
  v139 = v96 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalAccuracyM;
  swift_beginAccess();
  v140 = *v139;
  v141 = *(v139 + 8);

  v142 = v60 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalAccuracyM;
  swift_beginAccess();
  v143 = *v142;
  v144 = *(v142 + 8);

  if ((v141 & 1) == 0)
  {
    if (v140 == v143)
    {
      v145 = v144;
    }

    else
    {
      v145 = 1;
    }

    return (v145 & 1) == 0;
  }

  return v144 != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_RoutineVisit(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RoutineVisit and conformance CLP_LogEntry_PrivateData_RoutineVisit, type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_RoutineVisit(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RoutineVisit and conformance CLP_LogEntry_PrivateData_RoutineVisit, type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_RoutineVisit(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RoutineVisit and conformance CLP_LogEntry_PrivateData_RoutineVisit, type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_OutdoorUpdate.decodeMessage<A>(decoder:)()
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
          if (result == 5)
          {
            v3 = v0;
            v10 = *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 36);
            goto LABEL_5;
          }

          v6 = v0;
          v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 40);
LABEL_18:
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_IndoorOutdoorConfidence and conformance CLP_LogEntry_PrivateData_IndoorOutdoorConfidence();
          goto LABEL_24;
        }

        if (result == 7)
        {
          v12 = *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 44);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }

        else if (result == 8)
        {
          v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 48);
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
        }
      }

      else
      {
        if (result > 2)
        {
          if (result != 3)
          {
            v6 = v0;
            v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 32);
            goto LABEL_18;
          }

          v6 = v0;
          v11 = *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 28);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_IndoorOutdoorType and conformance CLP_LogEntry_PrivateData_IndoorOutdoorType();
LABEL_24:
          v0 = v6;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_6;
        }

        if (result == 1)
        {
          v3 = v0;
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 20);
LABEL_5:
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_6;
        }

        if (result == 2)
        {
          v3 = v0;
          v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 24);
          goto LABEL_5;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_OutdoorUpdate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0);
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

  v13 = v5 + v10[6];
  if ((*(v13 + 8) & 1) == 0)
  {
    v14 = *v13;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if (*(v5 + v10[7]) != 3)
  {
    v15 = *(v5 + v10[7]);
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_IndoorOutdoorType and conformance CLP_LogEntry_PrivateData_IndoorOutdoorType();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  if (*(v5 + v10[8]) != 4)
  {
    v16 = *(v5 + v10[8]);
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_IndoorOutdoorConfidence and conformance CLP_LogEntry_PrivateData_IndoorOutdoorConfidence();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  closure #5 in CLP_LogEntry_PrivateData_DirectionOfTravel.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate);
  closure #6 in CLP_LogEntry_PrivateData_OutdoorUpdate.traverse<A>(visitor:)(v5);
  closure #7 in CLP_LogEntry_PrivateData_ClientSatelliteInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate);
  closure #8 in CLP_LogEntry_PrivateData_BodyMetrics.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #6 in CLP_LogEntry_PrivateData_OutdoorUpdate.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0);
  if (*(a1 + *(result + 40)) != 4)
  {
    v3 = *(a1 + *(result + 40));
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_IndoorOutdoorConfidence and conformance CLP_LogEntry_PrivateData_IndoorOutdoorConfidence();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_OutdoorUpdate@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  *(a2 + a1[7]) = 3;
  *(a2 + v8) = 4;
  v9 = a1[10];
  v10 = a2 + a1[9];
  *v10 = 0;
  *(v10 + 8) = 1;
  *(a2 + v9) = 4;
  v11 = a1[12];
  *(a2 + a1[11]) = 2;
  v12 = a2 + v11;
  *v12 = 0;
  *(v12 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_OutdoorUpdate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_OutdoorUpdate and conformance CLP_LogEntry_PrivateData_OutdoorUpdate, type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_OutdoorUpdate(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_OutdoorUpdate and conformance CLP_LogEntry_PrivateData_OutdoorUpdate, type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_OutdoorUpdate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_OutdoorUpdate and conformance CLP_LogEntry_PrivateData_OutdoorUpdate, type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.decodeMessage<A>(decoder:)()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v7 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.init(copying:)(v6);

    *(v2 + v3) = v7;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v1)
  {
    while ((v9 & 1) == 0)
    {
      switch(result)
      {
        case 1:
        case 2:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_13;
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
        case 19:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
          goto LABEL_13;
        case 14:
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_InertialOdometrySample.ReferenceFrame and conformance CLP_LogEntry_PrivateData_InertialOdometrySample.ReferenceFrame();
          goto LABEL_11;
        case 15:
        case 16:
        case 17:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_13;
        case 18:
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_InertialOdometrySample.StaticIndicator and conformance CLP_LogEntry_PrivateData_InertialOdometrySample.StaticIndicator();
LABEL_11:
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
LABEL_13:
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

uint64_t CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)()
{
  v2 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  result = swift_beginAccess();
  if (*(v2 + 24))
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v4 = *(v2 + 16);
    result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  swift_beginAccess();
  if ((*(v2 + 40) & 1) == 0)
  {
    v5 = *(v2 + 32);
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v2 + 48) & 1) == 0)
  {
    v6 = *(v2 + 44);
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v2 + 56) & 1) == 0)
  {
    v7 = *(v2 + 52);
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v2 + 64) & 1) == 0)
  {
    v8 = *(v2 + 60);
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v2 + 72) & 1) == 0)
  {
    v9 = *(v2 + 68);
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  closure #7 in closure #1 in CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)(v2);
  closure #8 in closure #1 in CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)(v2);
  closure #6 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(v2);
  closure #7 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(v2);
  closure #8 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(v2);
  closure #12 in closure #1 in CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)(v2);
  closure #13 in closure #1 in CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)(v2);
  closure #14 in closure #1 in CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)(v2);
  closure #15 in closure #1 in CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)(v2);
  closure #16 in closure #1 in CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)(v2);
  closure #17 in closure #1 in CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)(v2);
  closure #18 in closure #1 in CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)(v2);
  closure #19 in closure #1 in CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)(v2);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #7 in closure #1 in CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = (a1 + 76);
  result = swift_beginAccess();
  if ((*(a1 + 80) & 1) == 0)
  {
    v4 = *v2;
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #8 in closure #1 in CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = (a1 + 84);
  result = swift_beginAccess();
  if ((*(a1 + 88) & 1) == 0)
  {
    v4 = *v2;
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #6 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = (a1 + 92);
  result = swift_beginAccess();
  if ((*(a1 + 96) & 1) == 0)
  {
    v4 = *v2;
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #7 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = (a1 + 100);
  result = swift_beginAccess();
  if ((*(a1 + 104) & 1) == 0)
  {
    v4 = *v2;
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #8 in closure #1 in CLP_LogEntry_PrivateData_DaemonLocationPrivate.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = (a1 + 108);
  result = swift_beginAccess();
  if ((*(a1 + 112) & 1) == 0)
  {
    v4 = *v2;
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #12 in closure #1 in CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = (a1 + 116);
  result = swift_beginAccess();
  if ((*(a1 + 120) & 1) == 0)
  {
    v4 = *v2;
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #13 in closure #1 in CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = (a1 + 124);
  result = swift_beginAccess();
  if ((*(a1 + 128) & 1) == 0)
  {
    v4 = *v2;
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #14 in closure #1 in CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 129) != 3)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_InertialOdometrySample.ReferenceFrame and conformance CLP_LogEntry_PrivateData_InertialOdometrySample.ReferenceFrame();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #15 in closure #1 in CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 130) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #16 in closure #1 in CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 131) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #17 in closure #1 in CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 132) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #18 in closure #1 in CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 133) != 4)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_InertialOdometrySample.StaticIndicator and conformance CLP_LogEntry_PrivateData_InertialOdometrySample.StaticIndicator();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #19 in closure #1 in CLP_LogEntry_PrivateData_InertialOdometrySample.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = (a1 + 136);
  result = swift_beginAccess();
  if ((*(a1 + 140) & 1) == 0)
  {
    v4 = *v2;
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t static CLP_LogEntry_PrivateData_InertialOdometrySample.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6 && (closure #1 in static CLP_LogEntry_PrivateData_InertialOdometrySample.== infix(_:_:)(v5, v6) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t closure #1 in static CLP_LogEntry_PrivateData_InertialOdometrySample.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v4 != *(a2 + 16))
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  swift_beginAccess();
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (v7 != *(a2 + 32))
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v10 = *(a1 + 44);
  v11 = *(a1 + 48);
  swift_beginAccess();
  v12 = *(a2 + 48);
  if (v11)
  {
    if (!*(a2 + 48))
    {
      return 0;
    }
  }

  else
  {
    if (v10 != *(a2 + 44))
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v13 = *(a1 + 52);
  v14 = *(a1 + 56);
  swift_beginAccess();
  v15 = *(a2 + 56);
  if (v14)
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (v13 != *(a2 + 52))
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v16 = *(a1 + 60);
  v17 = *(a1 + 64);
  swift_beginAccess();
  v18 = *(a2 + 64);
  if (v17)
  {
    if (!*(a2 + 64))
    {
      return 0;
    }
  }

  else
  {
    if (v16 != *(a2 + 60))
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v19 = *(a1 + 68);
  v20 = *(a1 + 72);
  swift_beginAccess();
  v21 = *(a2 + 72);
  if (v20)
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (v19 != *(a2 + 68))
    {
      v21 = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v22 = *(a1 + 76);
  v23 = *(a1 + 80);
  swift_beginAccess();
  v24 = *(a2 + 80);
  if (v23)
  {
    if (!*(a2 + 80))
    {
      return 0;
    }
  }

  else
  {
    if (v22 != *(a2 + 76))
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v25 = *(a1 + 84);
  v26 = *(a1 + 88);
  swift_beginAccess();
  v27 = *(a2 + 88);
  if (v26)
  {
    if (!*(a2 + 88))
    {
      return 0;
    }
  }

  else
  {
    if (v25 != *(a2 + 84))
    {
      v27 = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v28 = *(a1 + 92);
  v29 = *(a1 + 96);
  swift_beginAccess();
  v30 = *(a2 + 96);
  if (v29)
  {
    if (!*(a2 + 96))
    {
      return 0;
    }
  }

  else
  {
    if (v28 != *(a2 + 92))
    {
      v30 = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v31 = *(a1 + 100);
  v32 = *(a1 + 104);
  swift_beginAccess();
  v33 = *(a2 + 104);
  if (v32)
  {
    if (!*(a2 + 104))
    {
      return 0;
    }
  }

  else
  {
    if (v31 != *(a2 + 100))
    {
      v33 = 1;
    }

    if (v33)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v34 = *(a1 + 108);
  v35 = *(a1 + 112);
  swift_beginAccess();
  v36 = *(a2 + 112);
  if (v35)
  {
    if (!*(a2 + 112))
    {
      return 0;
    }
  }

  else
  {
    if (v34 != *(a2 + 108))
    {
      v36 = 1;
    }

    if (v36)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v37 = *(a1 + 116);
  v38 = *(a1 + 120);
  swift_beginAccess();
  v39 = *(a2 + 120);
  if (v38)
  {
    if (!*(a2 + 120))
    {
      return 0;
    }
  }

  else
  {
    if (v37 != *(a2 + 116))
    {
      v39 = 1;
    }

    if (v39)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v40 = *(a1 + 124);
  v41 = *(a1 + 128);
  swift_beginAccess();
  v42 = *(a2 + 128);
  if (v41)
  {
    if (!*(a2 + 128))
    {
      return 0;
    }
  }

  else
  {
    if (v40 != *(a2 + 124))
    {
      v42 = 1;
    }

    if (v42)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v43 = *(a1 + 129);
  swift_beginAccess();
  v44 = *(a2 + 129);
  if (v43 == 3)
  {
    if (v44 != 3)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v44 == 3 || v43 != v44)
    {
      return result;
    }
  }

  swift_beginAccess();
  v46 = *(a1 + 130);
  swift_beginAccess();
  v47 = *(a2 + 130);
  if (v46 == 2)
  {
    if (v47 != 2)
    {
      return 0;
    }
  }

  else if (v47 == 2 || ((v46 ^ v47) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v48 = *(a1 + 131);
  swift_beginAccess();
  v49 = *(a2 + 131);
  if (v48 == 2)
  {
    if (v49 != 2)
    {
      return 0;
    }
  }

  else if (v49 == 2 || ((v48 ^ v49) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v50 = *(a1 + 132);
  swift_beginAccess();
  v51 = *(a2 + 132);
  if (v50 == 2)
  {
    if (v51 != 2)
    {
      return 0;
    }
  }

  else if (v51 == 2 || ((v50 ^ v51) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v52 = *(a1 + 133);
  swift_beginAccess();
  v53 = *(a2 + 133);
  if (v52 == 4)
  {
    if (v53 == 4)
    {
      goto LABEL_104;
    }

    return 0;
  }

  result = 0;
  if (v53 != 4 && v52 == v53)
  {
LABEL_104:
    swift_beginAccess();
    v54 = *(a1 + 136);
    v55 = *(a1 + 140);
    swift_beginAccess();
    v56 = *(a2 + 140);
    if (v55)
    {
      if (!*(a2 + 140))
      {
        return 0;
      }
    }

    else
    {
      if (v54 != *(a2 + 136))
      {
        v56 = 1;
      }

      if (v56)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

Swift::Int CLP_LogEntry_PrivateData_TimeStamp.hashValue.getter(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_InertialOdometrySample(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_InertialOdometrySample and conformance CLP_LogEntry_PrivateData_InertialOdometrySample, type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_InertialOdometrySample(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_InertialOdometrySample and conformance CLP_LogEntry_PrivateData_InertialOdometrySample, type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_InertialOdometrySample(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_InertialOdometrySample and conformance CLP_LogEntry_PrivateData_InertialOdometrySample, type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CLP_LogEntry_PrivateData_InertialOdometrySample(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a1 + v3);
  v5 = *(a2 + v3);
  if (v4 != v5 && (closure #1 in static CLP_LogEntry_PrivateData_InertialOdometrySample.== infix(_:_:)(v4, v5) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v29 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (v12 && a1 != a2)
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      while (1)
      {
        outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(v14, v11, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
        outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(v15, v8, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
        v17 = *(v4 + 20);
        v18 = &v11[v17];
        v19 = v11[v17 + 8];
        v20 = &v8[v17];
        v21 = v8[v17 + 8];
        if (v19)
        {
          if (!v21)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (*v18 != *v20)
          {
            LOBYTE(v21) = 1;
          }

          if (v21)
          {
LABEL_21:
            outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v8, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
            outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
            goto LABEL_22;
          }
        }

        v22 = *(v4 + 24);
        v23 = &v11[v22];
        v24 = v11[v22 + 8];
        v25 = &v8[v22];
        v26 = v8[v22 + 8];
        if (v24)
        {
          if (!v26)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (*v23 != *v25)
          {
            LOBYTE(v26) = 1;
          }

          if (v26)
          {
            goto LABEL_21;
          }
        }

        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v27 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v8, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
        outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
        if (v27)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v27 & 1;
      }
    }

    v27 = 1;
  }

  else
  {
LABEL_22:
    v27 = 0;
  }

  return v27 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf59CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranchV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
  v72 = *(v4 - 8);
  v5 = *(v72 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v63 - v9;
  v71 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0);
  v11 = *(*(v71 - 1) + 64);
  v12 = MEMORY[0x28223BE20](v71);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = &v63 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_54:
    v62 = 0;
    return v62 & 1;
  }

  if (!v18 || a1 == a2)
  {
    v62 = 1;
    return v62 & 1;
  }

  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = 0;
  v65 = v18;
  v66 = a2 + v19;
  v22 = *(v15 + 72);
  v70 = v4;
  v63 = v22;
  v64 = v20;
  while (1)
  {
    v23 = v22 * v21;
    result = outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(v20 + v22 * v21, v17, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch);
    if (v21 == v18)
    {
      break;
    }

    v67 = v21;
    result = outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(v66 + v23, v14, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch);
    v25 = *v17;
    v26 = *v14;
    v27 = *(*v17 + 16);
    if (v27 != *(*v14 + 16))
    {
      goto LABEL_53;
    }

    if (v27 && v25 != v26)
    {
      v28 = 0;
      v29 = (*(v72 + 80) + 32) & ~*(v72 + 80);
      v68 = v26 + v29;
      v69 = v25 + v29;
      while (1)
      {
        v30 = v70;
        if (v28 >= *(v25 + 16))
        {
          break;
        }

        v31 = *(v72 + 72) * v28;
        result = outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(v69 + v31, v10, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
        if (v28 >= *(v26 + 16))
        {
          goto LABEL_57;
        }

        outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(v68 + v31, v8, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
        v32 = *(v30 + 20);
        v33 = &v10[v32];
        v34 = v10[v32 + 8];
        v35 = &v8[v32];
        v36 = v8[v32 + 8];
        if (v34)
        {
          if (!v36)
          {
            goto LABEL_52;
          }
        }

        else
        {
          if (*v33 != *v35)
          {
            LOBYTE(v36) = 1;
          }

          if (v36)
          {
LABEL_52:
            outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v8, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
            outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
            goto LABEL_53;
          }
        }

        v37 = *(v30 + 24);
        v38 = &v10[v37];
        v39 = v10[v37 + 8];
        v40 = &v8[v37];
        v41 = v8[v37 + 8];
        if (v39)
        {
          if (!v41)
          {
            goto LABEL_52;
          }
        }

        else
        {
          if (*v38 != *v40)
          {
            LOBYTE(v41) = 1;
          }

          if (v41)
          {
            goto LABEL_52;
          }
        }

        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v42 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v8, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
        result = outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
        if ((v42 & 1) == 0)
        {
          goto LABEL_53;
        }

        if (v27 == ++v28)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
      break;
    }

LABEL_26:
    v43 = v71[6];
    v44 = v17[v43];
    v45 = v14[v43];
    if (v44 == 4)
    {
      if (v45 != 4)
      {
        goto LABEL_53;
      }
    }

    else if (v44 != v45)
    {
      goto LABEL_53;
    }

    v46 = v71[7];
    v47 = &v17[v46];
    v48 = v17[v46 + 4];
    v49 = &v14[v46];
    v50 = v14[v46 + 4];
    if (v48)
    {
      if (!v50)
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (*v47 != *v49)
      {
        LOBYTE(v50) = 1;
      }

      if (v50)
      {
LABEL_53:
        outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v14, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch);
        outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v17, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch);
        goto LABEL_54;
      }
    }

    v51 = v71[8];
    v52 = &v17[v51];
    v53 = v17[v51 + 4];
    v54 = &v14[v51];
    v55 = v14[v51 + 4];
    if (v53)
    {
      if (!v55)
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (*v52 != *v54)
      {
        LOBYTE(v55) = 1;
      }

      if (v55)
      {
        goto LABEL_53;
      }
    }

    v56 = v71[9];
    v57 = &v17[v56];
    v58 = v17[v56 + 4];
    v59 = &v14[v56];
    v60 = v14[v56 + 4];
    if (v58)
    {
      if (!v60)
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (*v57 != *v59)
      {
        LOBYTE(v60) = 1;
      }

      if (v60)
      {
        goto LABEL_53;
      }
    }

    v61 = v71[5];
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v62 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v14, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v17, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch);
    if (v62)
    {
      v21 = v67 + 1;
      v20 = v64;
      v18 = v65;
      v22 = v63;
      if (v67 + 1 != v65)
      {
        continue;
      }
    }

    return v62 & 1;
  }

  __break(1u);
  return result;
}