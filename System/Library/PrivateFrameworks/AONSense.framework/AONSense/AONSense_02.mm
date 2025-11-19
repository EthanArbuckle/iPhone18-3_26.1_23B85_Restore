uint64_t CLP_LogEntry_AONLoc_Request.decodeMessage<A>(decoder:)()
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
        if (result == 4)
        {
          v10 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request(0) + 32);
          lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request.TypeEnum and conformance CLP_LogEntry_AONLoc_Request.TypeEnum();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }

        else
        {
          if (result == 6)
          {
            v6 = v0;
            v12 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request(0) + 36);
            type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
            v8 = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions;
            v9 = &lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Request.ResultOptions and conformance CLP_LogEntry_AONLoc_Request.ResultOptions;
          }

          else
          {
            if (result != 11)
            {
              goto LABEL_5;
            }

            v6 = v0;
            v7 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request(0) + 40);
            type metadata accessor for Proto_Gpsd_Request(0);
            v8 = type metadata accessor for Proto_Gpsd_Request;
            v9 = &lazy protocol witness table cache variable for type Proto_Gpsd_Request and conformance Proto_Gpsd_Request;
          }

          lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(v9, v8);
          v0 = v6;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request(0) + 20);
            dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
            goto LABEL_5;
          case 2:
            v4 = v0;
            v11 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request(0) + 24);
            break;
          case 3:
            v4 = v0;
            v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request(0) + 28);
            break;
          default:
            goto LABEL_5;
        }

        v0 = v4;
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_AONLoc_Request.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
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

  v13 = (v5 + v10[6]);
  if ((v13[1] & 1) == 0)
  {
    v14 = *v13;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v15 = (v5 + v10[7]);
  if ((v15[1] & 1) == 0)
  {
    v16 = *v15;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if (*(v5 + v10[8]) != 6)
  {
    v17 = *(v5 + v10[8]);
    lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request.TypeEnum and conformance CLP_LogEntry_AONLoc_Request.TypeEnum();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  closure #5 in CLP_LogEntry_AONLoc_Request.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #6 in CLP_LogEntry_AONLoc_Request.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #5 in CLP_LogEntry_AONLoc_Request.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVSgMd, &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 36), v8, &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVSgMd, &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVSgMd, &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVSgMR);
  }

  outlined init with take of CLP_LogEntry_AONLoc_Request.ResultOptions(v8, v13, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Request.ResultOptions and conformance CLP_LogEntry_AONLoc_Request.ResultOptions, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v13, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
}

uint64_t closure #6 in CLP_LogEntry_AONLoc_Request.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf18Proto_Gpsd_RequestVSgMd, &_s10ALProtobuf18Proto_Gpsd_RequestVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gpsd_Request(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 40), v8, &_s10ALProtobuf18Proto_Gpsd_RequestVSgMd, &_s10ALProtobuf18Proto_Gpsd_RequestVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf18Proto_Gpsd_RequestVSgMd, &_s10ALProtobuf18Proto_Gpsd_RequestVSgMR);
  }

  outlined init with take of CLP_LogEntry_AONLoc_Request.ResultOptions(v8, v13, type metadata accessor for Proto_Gpsd_Request);
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type Proto_Gpsd_Request and conformance Proto_Gpsd_Request, type metadata accessor for Proto_Gpsd_Request);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v13, type metadata accessor for Proto_Gpsd_Request);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_AONLoc_Request@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *(v8 + 4) = 1;
  *v8 = 0;
  *(a2 + v7) = 6;
  v9 = a1[9];
  v10 = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
  v11 = a1[10];
  v12 = type metadata accessor for Proto_Gpsd_Request(0);
  v13 = *(*(v12 - 8) + 56);

  return v13(a2 + v11, 1, 1, v12);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_AONLoc_Request(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request, type metadata accessor for CLP_LogEntry_AONLoc_Request);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_AONLoc_Request(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request, type metadata accessor for CLP_LogEntry_AONLoc_Request);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_AONLoc_Request(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request, type metadata accessor for CLP_LogEntry_AONLoc_Request);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t one-time initialization function for protoMessageName()
{
  result = MEMORY[0x23EEDA870](0x4F746C757365522ELL, 0xEE00736E6F697470);
  static CLP_LogEntry_AONLoc_Request.ResultOptions.protoMessageName = 0xD00000000000001BLL;
  *algn_27E2B7CF8 = 0x800000023D1E3560;
  return result;
}

{
  result = MEMORY[0x23EEDA870](0x617453656D69542ELL, 0xEA0000000000706DLL);
  static CLP_LogEntry_LogEntry.TimeStamp.protoMessageName = 0xD000000000000015;
  *algn_27E2B8398 = 0x800000023D1E6C80;
  return result;
}

{
  result = MEMORY[0x23EEDA870](0x64757469746C412ELL, 0xED00006F666E4965);
  static CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo.protoMessageName = 0xD00000000000002ELL;
  unk_27E2B8810 = 0x800000023D1E70C0;
  return result;
}

{
  result = MEMORY[0x23EEDA870](0x616546656572542ELL, 0xED00007365727574);
  static CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures.protoMessageName = 0xD000000000000035;
  *algn_27E2B9078 = 0x800000023D1E7DE0;
  return result;
}

{
  result = MEMORY[0x23EEDA870](0x5074754C6C744C2ELL, 0xED0000736D617261);
  static Proto_Gpsd_LtlInfo.LtlLutParams.protoMessageName = 0xD000000000000012;
  unk_27E2BA560 = 0x800000023D1F5B40;
  return result;
}

{
  result = MEMORY[0x23EEDA870](0xD000000000000017, 0x800000023D1F66C0);
  static Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData.protoMessageName = 0xD000000000000012;
  *algn_27E2BA588 = 0x800000023D1F5B40;
  return result;
}

{
  result = MEMORY[0x23EEDA870](0xD000000000000018, 0x800000023D1F6660);
  static Proto_Gpsd_LtlInfo.LtlRacPmicAdcPreCalData.protoMessageName = 0xD000000000000012;
  unk_27E2BA5B0 = 0x800000023D1F5B40;
  return result;
}

{
  result = MEMORY[0x23EEDA870](0xD000000000000011, 0x800000023D1F6630);
  static Proto_Gpsd_LtlInfo.LtlInitialParams.protoMessageName = 0xD000000000000012;
  *algn_27E2BA5D8 = 0x800000023D1F5B40;
  return result;
}

uint64_t *CLP_LogEntry_AONLoc_Request.ResultOptions.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static CLP_LogEntry_AONLoc_Request.ResultOptions.protoMessageName;
}

uint64_t static CLP_LogEntry_AONLoc_Request.ResultOptions.protoMessageName.getter()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  v0 = static CLP_LogEntry_AONLoc_Request.ResultOptions.protoMessageName;

  return v0;
}

uint64_t CLP_LogEntry_AONLoc_Request.ResultOptions.decodeMessage<A>(decoder:)()
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
          if (result == 6)
          {
            lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement.BtType and conformance CLP_LogEntry_AONLoc_BtAdvertisement.BtType();
          }

          else
          {
            lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WifiRfBand and conformance CLP_LogEntry_PrivateData_WifiRfBand();
          }

          dispatch thunk of Decoder.decodeRepeatedEnumField<A>(value:)();
        }

        else if (result == 8)
        {
          dispatch thunk of Decoder.decodeRepeatedInt32Field(value:)();
        }

        else
        {
          if (result == 11)
          {
            v5 = v0;
            v11 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0) + 52);
          }

          else
          {
            if (result != 12)
            {
              goto LABEL_5;
            }

            v5 = v0;
            v6 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0) + 56);
          }

          v0 = v5;
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        }
      }

      else if (result <= 2)
      {
        if (result == 1)
        {
          v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0) + 32);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }

        else if (result == 2)
        {
          v7 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0) + 36);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      else
      {
        if (result == 3)
        {
          v8 = v0;
          v9 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0) + 40);
        }

        else
        {
          if (result != 4)
          {
            v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0) + 48);
            dispatch thunk of Decoder.decodeSingularSInt32Field(value:)();
            goto LABEL_5;
          }

          v8 = v0;
          v10 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0) + 44);
        }

        v0 = v8;
        dispatch thunk of Decoder.decodeSingularFloatField(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_AONLoc_Request.ResultOptions.traverse<A>(visitor:)()
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v3 = result;
  if (*(v0 + *(result + 32)) == 2)
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

  v4 = (v0 + v3[9]);
  if ((v4[1] & 1) == 0)
  {
    v5 = *v4;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v6 = v0 + v3[10];
  if ((v6[4] & 1) == 0)
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  v8 = v0 + v3[11];
  if ((v8[4] & 1) == 0)
  {
    v9 = *v8;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  closure #5 in CLP_LogEntry_AONLoc_Request.ResultOptions.traverse<A>(visitor:)(v0);
  if (*(*v0 + 16))
  {
    lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement.BtType and conformance CLP_LogEntry_AONLoc_BtAdvertisement.BtType();
    dispatch thunk of Visitor.visitRepeatedEnumField<A>(value:fieldNumber:)();
  }

  if (*(v0[1] + 16))
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WifiRfBand and conformance CLP_LogEntry_PrivateData_WifiRfBand();
    dispatch thunk of Visitor.visitRepeatedEnumField<A>(value:fieldNumber:)();
  }

  if (*(v0[2] + 16))
  {
    dispatch thunk of Visitor.visitRepeatedInt32Field(value:fieldNumber:)();
  }

  closure #6 in CLP_LogEntry_AONLoc_Request.ResultOptions.traverse<A>(visitor:)(v0);
  closure #7 in CLP_LogEntry_AONLoc_Request.ResultOptions.traverse<A>(visitor:)(v0);
  v10 = v0 + v3[7];
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #5 in CLP_LogEntry_AONLoc_Request.ResultOptions.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v3 = (a1 + *(result + 48));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularSInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #6 in CLP_LogEntry_AONLoc_Request.ResultOptions.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v3 = (a1 + *(result + 52));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #7 in CLP_LogEntry_AONLoc_Request.ResultOptions.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v3 = (a1 + *(result + 56));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_AONLoc_Request.ResultOptions@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v4;
  a2[2] = v4;
  v5 = a2 + a1[7];
  result = UnknownStorage.init()();
  v7 = a1[9];
  *(a2 + a1[8]) = 2;
  v8 = a2 + v7;
  *v8 = 0;
  v8[4] = 1;
  v9 = a1[11];
  v10 = a2 + a1[10];
  *v10 = 0;
  v10[4] = 1;
  v11 = a2 + v9;
  *v11 = 0;
  v11[4] = 1;
  v12 = a1[13];
  v13 = a2 + a1[12];
  *v13 = 0;
  v13[4] = 1;
  v14 = a2 + v12;
  *v14 = 0;
  v14[8] = 1;
  v15 = a2 + a1[14];
  *v15 = 0;
  v15[8] = 1;
  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance CLP_LogEntry_AONLoc_Request.ResultOptions@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance CLP_LogEntry_AONLoc_Request.ResultOptions(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance CLP_LogEntry_AONLoc_Request.ResultOptions(uint64_t a1, uint64_t a2))()
{
  result = ALFWiFiScanResultsRequester.query(options:callback:start:end:);
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_AONLoc_Request.ResultOptions(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Request.ResultOptions and conformance CLP_LogEntry_AONLoc_Request.ResultOptions, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_AONLoc_Request.ResultOptions(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Request.ResultOptions and conformance CLP_LogEntry_AONLoc_Request.ResultOptions, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_AONLoc_Request.ResultOptions(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Request.ResultOptions and conformance CLP_LogEntry_AONLoc_Request.ResultOptions, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_AONLoc_Response.decodeMessage<A>(decoder:)()
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
        v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Response(0) + 24);
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
        goto LABEL_5;
      }

      if (result == 1)
      {
        v4 = v0;
        v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_Response(0) + 20);
        lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request.TypeEnum and conformance CLP_LogEntry_AONLoc_Request.TypeEnum();
LABEL_12:
        v0 = v4;
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v4 = v0;
    v6 = *(type metadata accessor for CLP_LogEntry_AONLoc_Response(0) + 28);
    lazy protocol witness table accessor for type Proto_Gnss_Result and conformance Proto_Gnss_Result();
    goto LABEL_12;
  }

  return result;
}

uint64_t CLP_LogEntry_AONLoc_Response.traverse<A>(visitor:)()
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Response(0);
  v3 = result;
  if (*(v0 + *(result + 20)) == 6)
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v6 = *(v0 + *(result + 20));
    lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request.TypeEnum and conformance CLP_LogEntry_AONLoc_Request.TypeEnum();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  v4 = (v0 + *(v3 + 24));
  if ((v4[1] & 1) == 0)
  {
    v5 = *v4;
    dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  if (*(v0 + *(v3 + 28)) != 10)
  {
    v7 = *(v0 + *(v3 + 28));
    lazy protocol witness table accessor for type Proto_Gnss_Result and conformance Proto_Gnss_Result();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_AONLoc_Response@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 6;
  v6 = a2 + v5;
  *v6 = 0;
  *(v6 + 8) = 1;
  *(a2 + a1[7]) = 10;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_AONLoc_Response(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Response and conformance CLP_LogEntry_AONLoc_Response, type metadata accessor for CLP_LogEntry_AONLoc_Response);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_AONLoc_Response(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Response and conformance CLP_LogEntry_AONLoc_Response, type metadata accessor for CLP_LogEntry_AONLoc_Response);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_AONLoc_Response(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Response and conformance CLP_LogEntry_AONLoc_Response, type metadata accessor for CLP_LogEntry_AONLoc_Response);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1)
{
  return one-time initialization function for _protobuf_nameMap(a1, static CLP_LogEntry_AONLoc_WiFiIndication._protobuf_nameMap, "wifi_notifications", 18);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static CLP_LogEntry_AONLoc_BtIndication._protobuf_nameMap, "bt_notifications", 16);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static CLP_LogEntry_PrivateData_GlonassSlotInfo._protobuf_nameMap, "slot_num", "slot_source", 11);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static CLP_LogEntry_PrivateData_GlonassId._protobuf_nameMap, "freq_num", "slot_info", 9);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static CLP_LogEntry_PrivateData_GpsL1SyncState._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static CLP_LogEntry_PrivateData_BeidouB1SyncState._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static CLP_LogEntry_PrivateData_BeidouB2SyncState._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static CLP_LogEntry_PrivateData_RhythmicStreamingControl._protobuf_nameMap, "allow_streaming", 15, MEMORY[0x277D21888]);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static CLP_LogEntry_PrivateData_MotionStateObserver._protobuf_nameMap, "workout_update", 14);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static CLP_LogEntry_PrivateData_MotionStateMediator._protobuf_nameMap, "workout_event", 13);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static CLP_LogEntry_PrivateData_Natalimetry._protobuf_nameMap, "body_metrics", 12);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static CLP_LogEntry_PrivateData_Timer._protobuf_nameMap, "event_receipt_time", 18, MEMORY[0x277D21888]);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static CLP_LogEntry_PrivateData_MapVector._protobuf_nameMap, "dot_data", 8);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static CLP_LogEntry_PrivateData_TunnelBridgeNotification._protobuf_nameMap, "tunnel_bridge_data", 18);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static CLP_LogEntry_PrivateData_TunnelEndPoint._protobuf_nameMap, "tunnel_end_point_data", 21);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static CLP_LogEntry_PrivateData_Reset._protobuf_nameMap, "event_receipt_time", 18, MEMORY[0x277D21888]);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static CLP_LogEntry_PrivateData_StepCount._protobuf_nameMap, "step_count_entry", 16);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static CLP_LogEntry_PrivateData_SensorFusionStatus._protobuf_nameMap, "bits", 4, MEMORY[0x277D21870]);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static CLP_LogEntry_PrivateData_GeomagneticModelData._protobuf_nameMap, "data", 4, MEMORY[0x277D21870]);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Proto_Gnss_Emergency_CplaneConfig._protobuf_nameMap, "early_return_enabled", 20);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Proto_Gnss_Emergency_CellFTAssistanceRequest._protobuf_nameMap, "network_type", 12);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Proto_Gpsd_InjectRtiFile._protobuf_nameMap, "rti_file", 8, MEMORY[0x277D21888]);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Proto_Gpsd_InjectRavenOrbitFile._protobuf_nameMap, "raven_orbit_file", 16, MEMORY[0x277D21888]);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Proto_Gpsd_InjectSvidBlocklist._protobuf_nameMap, "blocklist", 9, MEMORY[0x277D21870]);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Proto_Gpsd_DeleteGnssData._protobuf_nameMap, "delete_flags", 12, MEMORY[0x277D21888]);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Proto_Gpsd_SetNmeaHandler._protobuf_nameMap, "nmea_mask", 9, MEMORY[0x277D21888]);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Proto_Gpsd_SetAssistancePressure._protobuf_nameMap, "samples", 7, MEMORY[0x277D21870]);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Proto_Gpsd_SetAssistanceAccel._protobuf_nameMap, "samples", 7, MEMORY[0x277D21870]);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Proto_Gpsd_SetAssistanceGyro._protobuf_nameMap, "samples", 7, MEMORY[0x277D21870]);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Proto_Gpsd_SetAssistanceSignalEnvironment._protobuf_nameMap, "signal_environment_type", 23, MEMORY[0x277D21888]);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Proto_Gpsd_SetConfigDutyCycling._protobuf_nameMap, "is_enabled", 10, MEMORY[0x277D21888]);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Proto_Gpsd_TerminationImminent._protobuf_nameMap, "reason", 6, MEMORY[0x277D21870]);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Proto_Gpsd_ExitMessage._protobuf_nameMap, "reason", 6, MEMORY[0x277D21870]);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Proto_Gpsd_LtlInfoRequest._protobuf_nameMap, "info_type", 9, MEMORY[0x277D21888]);
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_23D1B04D0;
  v10 = (v9 + v8);
  v11 = v9 + v8 + v6[14];
  *v10 = 1;
  *v11 = "mach_continuous_time_ns";
  *(v11 + 8) = 23;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x277D21888];
  v13 = type metadata accessor for _NameMap.NameDescription();
  v14 = *(*(v13 - 8) + 104);
  (v14)(v11, v12, v13);
  v15 = v10 + v7 + v6[14];
  *(v10 + v7) = 2;
  *v15 = "is_last_batch";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v14();
  v16 = v10 + 2 * v7 + v6[14];
  *(v10 + 2 * v7) = 11;
  *v16 = a3;
  *(v16 + 8) = a4;
  *(v16 + 16) = 2;
  v14();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v5 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_23D1B04D0;
  v10 = (v9 + v8);
  v11 = v9 + v8 + v6[14];
  *v10 = 1;
  *v11 = "event_receipt_time";
  *(v11 + 8) = 18;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x277D21888];
  v13 = type metadata accessor for _NameMap.NameDescription();
  v14 = *(*(v13 - 8) + 104);
  (v14)(v11, v12, v13);
  v15 = v10 + v7 + v6[14];
  *(v10 + v7) = 2;
  *v15 = "client";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v16 = *MEMORY[0x277D21870];
  v14();
  v17 = v10 + 2 * v7 + v6[14];
  *(v10 + 2 * v7) = 3;
  *v17 = a3;
  *(v17 + 8) = a4;
  *(v17 + 16) = 2;
  v14();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v7 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_23D1B8150;
  v12 = v11 + v10 + v8[14];
  *(v11 + v10) = 1;
  *v12 = a3;
  *(v12 + 8) = a4;
  *(v12 + 16) = 2;
  v13 = *MEMORY[0x277D21888];
  v14 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t CLP_LogEntry_AONLoc_WiFiIndication.traverse<A>(visitor:)()
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication(0);
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

  if (*(v0 + *(v3 + 28)) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(*v0 + 16))
  {
    type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0);
    lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiNotification and conformance CLP_LogEntry_PrivateData_WifiNotification, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  v6 = v0 + *(v3 + 20);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance CLP_LogEntry_AONLoc_WiFiIndication(uint64_t a1, uint64_t a2))()
{
  result = ALFWiFiScanResultsRequester.query(options:callback:start:end:);
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_AONLoc_WiFiIndication(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_WiFiIndication and conformance CLP_LogEntry_AONLoc_WiFiIndication, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_AONLoc_WiFiIndication(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_WiFiIndication and conformance CLP_LogEntry_AONLoc_WiFiIndication, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_AONLoc_WiFiIndication(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_WiFiIndication and conformance CLP_LogEntry_AONLoc_WiFiIndication, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_AONLoc_BtIndication.traverse<A>(visitor:)()
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_BtIndication(0);
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

  if (*(v0 + *(v3 + 28)) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(*v0 + 16))
  {
    type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
    lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtNotification and conformance CLP_LogEntry_AONLoc_BtNotification, type metadata accessor for CLP_LogEntry_AONLoc_BtNotification);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  v6 = v0 + *(v3 + 20);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance CLP_LogEntry_AONLoc_WiFiIndication@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance CLP_LogEntry_AONLoc_WiFiIndication(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_AONLoc_BtIndication(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtIndication and conformance CLP_LogEntry_AONLoc_BtIndication, type metadata accessor for CLP_LogEntry_AONLoc_BtIndication);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_AONLoc_BtIndication(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtIndication and conformance CLP_LogEntry_AONLoc_BtIndication, type metadata accessor for CLP_LogEntry_AONLoc_BtIndication);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_AONLoc_BtIndication(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtIndication and conformance CLP_LogEntry_AONLoc_BtIndication, type metadata accessor for CLP_LogEntry_AONLoc_BtIndication);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t one-time initialization function for defaultInstance()
{
  v0 = type metadata accessor for CLP_LogEntry_AONLoc_Indication._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  *(v3 + 28) = 0;
  *(v3 + 32) = 1793;
  v4 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdResponse;
  v5 = type metadata accessor for Proto_Gpsd_Response(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdIndication;
  v7 = type metadata accessor for Proto_Gpsd_Indication(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiResponse;
  v9 = type metadata accessor for CLP_LogEntry_AONLoc_Response(0);
  v10 = *(*(v9 - 8) + 56);
  v10(v3 + v8, 1, 1, v9);
  v11 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiIndication;
  v12 = type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication(0);
  (*(*(v12 - 8) + 56))(v3 + v11, 1, 1, v12);
  v10(v3 + OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btResponse, 1, 1, v9);
  v13 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btIndication;
  v14 = type metadata accessor for CLP_LogEntry_AONLoc_BtIndication(0);
  result = (*(*(v14 - 8) + 56))(v3 + v13, 1, 1, v14);
  static CLP_LogEntry_AONLoc_Indication._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 13;
  v4 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL1;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  v6 = *(*(v5 - 8) + 56);
  v6(v3 + v4, 1, 1, v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL2C;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5;
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0);
  (*(*(v10 - 8) + 56))(v3 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F;
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
  (*(*(v12 - 8) + 56))(v3 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0);
  (*(*(v14 - 8) + 56))(v3 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2;
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0);
  (*(*(v16 - 8) + 56))(v3 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1;
  v18 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0);
  (*(*(v18 - 8) + 56))(v3 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5;
  v20 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  (*(*(v20 - 8) + 56))(v3 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1;
  v22 = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
  (*(*(v22 - 8) + 56))(v3 + v21, 1, 1, v22);
  result = (v6)(v3 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5, 1, 1, v5);
  static CLP_LogEntry_PrivateData_SyncState._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = v3 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__startTimeNanoseconds;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v3 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__endTimeNanoseconds;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v3 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__applicabilityTimeNanoseconds;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTime;
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  (*(*(v12 - 8) + 56))(v3 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v15 = *(*(v14 - 8) + 56);
  v15(v3 + v13, 1, 1, v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking;
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  (*(*(v17 - 8) + 56))(v3 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension;
  v19 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0);
  (*(*(v19 - 8) + 56))(v3 + v18, 1, 1, v19);
  v20 = v3 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__cn0DbHz;
  *v20 = 0;
  *(v20 + 4) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__multipathIndicator) = 5;
  v15(v3 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffset, 1, 1, v14);
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__isUsable) = 2;
  v21 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffsetFromPhaseTracking;
  v22 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  result = (*(*(v22 - 8) + 56))(v3 + v21, 1, 1, v22);
  static CLP_LogEntry_PrivateData_Measurement._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clock;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  result = (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measurements) = MEMORY[0x277D84F90];
  static CLP_LogEntry_PrivateData_MeasurementReport._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__referenceTimeNanoseconds;
  *v6 = 0;
  *(v6 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__positionSource) = 7;
  v7 = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__anchorPositions) = MEMORY[0x277D84F90];
  v8 = v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockBiasCorrectionNanoseconds;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyCorrectionPpb;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyChangeCorrectionPpbPerSec;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyPositionM;
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyClockNanoseconds;
  *v12 = 0;
  *(v12 + 4) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL1) = 5;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL1) = 5;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL1) = 5;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL1) = 5;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL1) = 5;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svBandCorrections) = v7;
  v13 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
  result = (*(*(v14 - 8) + 56))(v3 + v13, 1, 1, v14);
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL5) = 5;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL5) = 5;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL5) = 5;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL5) = 5;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL5) = 5;
  v16 = v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyAccelCorrectionPpbPerSecPerSec;
  *v16 = 0;
  *(v16 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svReferencePoint) = 4;
  static CLP_LogEntry_PrivateData_SvInfo._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 20) = 1;
  v4 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v3 + v6, 1, 1, v7);
  v8(v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion, 1, 1, v7);
  v8(v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion, 1, 1, v7);
  result = (v8)(v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated, 1, 1, v7);
  static CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0);
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  v13 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  result = (*(*(v13 - 8) + 56))(v3 + v12, 1, 1, v13);
  static CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svInfo) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rxBandCorrections) = v8;
  v9 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0);
  (*(*(v10 - 8) + 56))(v3 + v9, 1, 1, v10);
  v11 = v3 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeMachContinuousSec;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v3 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeUncertaintySec;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  result = (*(*(v14 - 8) + 56))(v3 + v13, 1, 1, v14);
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__apcSvOffset) = v8;
  static CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__gpsdLogEntry;
  v5 = type metadata accessor for Proto_Gpsd_LogEntry(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__aonlocLogEntry;
  v7 = type metadata accessor for CLP_LogEntry_AONLoc_LogEntry(0);
  result = (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  static CLP_LogEntry_PrivateData_PrivateDataCapture._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 4;
  v4 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v6 = *(*(v5 - 8) + 56);
  v6(v3 + v4, 1, 1, v5);
  v7 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalAccuracy;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitude;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalAccuracy;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speed;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speedAccuracy;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__course;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAccuracy;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__confidence;
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lifespan;
  *v16 = 0;
  *(v16 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type) = 14;
  result = (v6)(v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCoordinate, 1, 1, v5);
  v18 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourse;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floor;
  *v19 = 0;
  *(v19 + 4) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__integrity) = 5;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame) = 3;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawReferenceFrame) = 3;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalEnvironmentType) = 8;
  v20 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__ellipsoidalAltitude;
  *v20 = 0;
  *(v20 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fromSimulationController) = 2;
  static CLP_LogEntry_PrivateData_DaemonLocation._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  *(v3 + 32) = 0;
  *(v3 + 40) = 1;
  *(v3 + 48) = 0;
  *(v3 + 56) = 1;
  *(v3 + 64) = 0;
  *(v3 + 72) = 1;
  *(v3 + 80) = 0;
  *(v3 + 88) = 1;
  *(v3 + 92) = 0;
  *(v3 + 96) = 1;
  *(v3 + 100) = 0;
  *(v3 + 104) = 1;
  *(v3 + 108) = 0;
  *(v3 + 112) = 1;
  *(v3 + 113) = 1026;
  v4 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCoordinate;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v6 = *(*(v5 - 8) + 56);
  v6(v3 + v4, 1, 1, v5);
  v7 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCourse;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchFormOfWay;
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchRoadClass;
  *v9 = 0;
  *(v9 + 4) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchShifted) = 2;
  v10 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_PressureSample(0);
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulationModel) = 4;
  v12 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulation;
  *v12 = 0;
  *(v12 + 4) = 1;
  v6(v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialCoordinate, 1, 1, v5);
  v13 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialHorizontalAccuracy;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__machContinuousTime;
  *v14 = 0;
  *(v14 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__originDevice) = 3;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isMatcherPropagatedCoordinates) = 2;
  v15 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData;
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
  (*(*(v16 - 8) + 56))(v3 + v15, 1, 1, v16);
  v17 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__slope;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__maxAbsSlope;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitude;
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitudeUncertainty;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitude;
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitudeUncertainty;
  *v22 = 0;
  *(v22 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isSimulatedOrSpoofed) = 2;
  v23 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawHorizontalAccuracy;
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourseAccuracy;
  *v24 = 0;
  *(v24 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFused) = 2;
  v6(v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCoordinate, 1, 1, v5);
  v25 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedHorizontalAccuracy;
  *v25 = 0;
  *(v25 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedReferenceFrame) = 3;
  v26 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourse;
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourseAccuracy;
  *v27 = 0;
  *(v27 + 8) = 1;
  v28 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedWorstCaseError;
  *v28 = 0;
  *(v28 + 8) = 1;
  v29 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingAltitude;
  *v29 = 0;
  *(v29 + 8) = 1;
  v30 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingVerticalAccuracy;
  *v30 = 0;
  *(v30 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFusedWithVl) = 2;
  v31 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedAltitude;
  *v31 = 0;
  *(v31 + 8) = 1;
  v32 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedVerticalAccuracy;
  *v32 = 0;
  *(v32 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__satelliteVisibilityReport) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__gnssContent) = 3;
  v33 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude;
  v34 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
  result = (*(*(v34 - 8) + 56))(v3 + v33, 1, 1, v34);
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextState) = 3;
  v36 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityIndoor;
  *v36 = 0;
  *(v36 + 8) = 1;
  v37 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityOutdoor;
  *v37 = 0;
  *(v37 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherType) = 4;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isRouteHintsTriggeredMapMatching) = 2;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__loiLocationSourceAccuracy) = 3;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__batchedLocationFixType) = 5;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isWifiFixWithAssociatedAp) = 2;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isGnssFromRavenEstimators) = 2;
  static CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = v3 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0);
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0);
  (*(*(v10 - 8) + 56))(v3 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  (*(*(v12 - 8) + 56))(v3 + v11, 1, 1, v12);
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__active) = 2;
  v13 = v3 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__odometer;
  *v13 = 0;
  *(v13 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalQuality) = 3;
  v14 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  v15 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
  (*(*(v15 - 8) + 56))(v3 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0);
  (*(*(v17 - 8) + 56))(v3 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  v19 = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
  (*(*(v19 - 8) + 56))(v3 + v18, 1, 1, v19);
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__motionDetected) = 3;
  v20 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  v21 = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
  result = (*(*(v21 - 8) + 56))(v3 + v20, 1, 1, v21);
  static CLP_LogEntry_PrivateData_Location._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 67306568;
  *(v3 + 20) = 2;
  *(v3 + 24) = 0;
  *(v3 + 28) = 1;
  *(v3 + 32) = 0;
  *(v3 + 40) = 1;
  *(v3 + 41) = 1026;
  *(v3 + 48) = 0;
  *(v3 + 56) = 1;
  *(v3 + 64) = 0;
  *(v3 + 72) = 1;
  *(v3 + 73) = 1096;
  v4 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v6 = *(*(v5 - 8) + 56);
  v6(v3 + v4, 1, 1, v5);
  result = (v6)(v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime, 1, 1, v5);
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicularConfidence) = 6;
  static CLP_LogEntry_PrivateData_MotionActivity._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = v3 + OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  result = (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  static CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_MapVector._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = v3 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__dotData;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  result = (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  static CLP_LogEntry_PrivateData_MapVector._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v7 = v3 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__latitudeDeg;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v3 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__longitudeDeg;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v3 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalUncM;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v3 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitudeM;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v3 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalUncM;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame) = 3;
  v12 = v3 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitDeg;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v3 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitUncDeg;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v3 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelWidthAtExitM;
  *v14 = 0;
  *(v14 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isTunnelCurved) = 2;
  v15 = v3 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLatitudeDeg;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v3 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLongitudeDeg;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = v3 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelLengthM;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = v3 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__endPointDistanceFromCurrentSolutionM;
  *v18 = 0;
  *(v18 + 8) = 1;
  static CLP_LogEntry_PrivateData_TunnelEndPointAssistance._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = v3 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  *v6 = 0;
  *(v6 + 4) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__notificationData) = 20;
  v7 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__reachability;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery;
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  result = (*(*(v10 - 8) + 56))(v3 + v9, 1, 1, v10);
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__airplaneMode) = 2;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__displayOn) = 2;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lockScreen) = 2;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isBatterySaverModeEnabled) = 2;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushServiceConnected) = 2;
  v12 = v3 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__wirelessModemClients;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = v3 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__thermalLevel;
  *v13 = 0;
  *(v13 + 4) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__restrictedMode) = 2;
  static CLP_LogEntry_PrivateData_DeviceStatus._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v6 = *(*(v5 - 8) + 56);
  v6(v3 + v4, 1, 1, v5);
  v6(v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime, 1, 1, v5);
  v6(v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__firstStepTime, 1, 1, v5);
  v7 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__count;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceM;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawDistanceM;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsAscended;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsDescended;
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentPaceSpm;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentCadence;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__activeTime;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__recordID;
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = (v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__sourceID);
  *v16 = 0;
  v16[1] = 0;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerDistance) = 2;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerPace) = 2;
  v17 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accelerometerPace;
  v18 = type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace(0);
  (*(*(v18 - 8) + 56))(v3 + v17, 1, 1, v18);
  v19 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushCount;
  *v19 = 0;
  *(v19 + 4) = 1;
  v20 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutType;
  *v20 = 0;
  *(v20 + 4) = 1;
  v21 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pedometerArmConstraintedState;
  *v21 = 0;
  *(v21 + 4) = 1;
  v22 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationAscendedCm;
  *v22 = 0;
  *(v22 + 4) = 1;
  v23 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationDescendedCm;
  *v23 = 0;
  *(v23 + 4) = 1;
  v24 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepsSuppressed;
  *v24 = 0;
  *(v24 + 4) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceSource) = 10;
  v25 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepDetectorState;
  v26 = type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0);
  result = (*(*(v26 - 8) + 56))(v3 + v25, 1, 1, v26);
  static CLP_LogEntry_PrivateData_StepCountEntry._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
  v6 = *(*(v5 - 8) + 56);
  v6(v3 + v4, 1, 1, v5);
  v6(v3 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__unassistedMagneticField, 1, 1, v5);
  v7 = v3 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticHeading;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = v3 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__trueHeading;
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = v3 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accuracy;
  *v9 = 0;
  *(v9 + 4) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__calibrationLevel) = 8;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__usingDatabaseBias) = 2;
  v10 = v3 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magnitude;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = v3 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__inclination;
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = v3 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontal;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(0);
  result = (*(*(v14 - 8) + 56))(v3 + v13, 1, 1, v14);
  static CLP_LogEntry_PrivateData_MotionTypeCompass._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__userAcceleration;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v3 + v6, 1, 1, v7);
  v8(v3 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rotationRate, 1, 1, v7);
  result = (v8)(v3 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField, 1, 1, v7);
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticFieldCalibrationLevel) = 8;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingYawCorrection) = 2;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingBiasEstimation) = 2;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInitialized_p) = 2;
  v10 = v3 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__heading;
  *v10 = 0;
  *(v10 + 4) = 1;
  static CLP_LogEntry_PrivateData_MotionTypeDeviceMotion._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = v3 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  *v6 = 0;
  *(v6 + 4) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type) = 15;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scanType) = 15;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__power) = 2;
  v7 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__associatedState;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scan;
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
  result = (*(*(v10 - 8) + 56))(v3 + v9, 1, 1, v10);
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__simulated) = 2;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__available) = 2;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInvoluntaryLinkDown) = 2;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isApAwake) = 2;
  static CLP_LogEntry_PrivateData_WifiNotification._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__receiptTime;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v6 = *(*(v5 - 8) + 56);
  v6(v3 + v4, 1, 1, v5);
  v6(v3 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__arrivalTime, 1, 1, v5);
  v6(v3 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__departureTime, 1, 1, v5);
  v6(v3 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__detectionTime, 1, 1, v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  result = (*(*(v10 - 8) + 56))(v3 + v9, 1, 1, v10);
  v12 = v3 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalAccuracyM;
  *v12 = 0;
  *(v12 + 8) = 1;
  static CLP_LogEntry_PrivateData_RoutineVisit._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for Proto_Gnss_Emergency_Init._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 18;
  v4 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__qop;
  v5 = type metadata accessor for Proto_Gnss_Emergency_QoP(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__slpAddress;
  v7 = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__notification;
  v9 = type metadata accessor for Proto_Gnss_Emergency_Notification(0);
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__suplInitv2Extension;
  inited = type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0);
  result = (*(*(inited - 8) + 56))(v3 + v10, 1, 1, inited);
  static Proto_Gnss_Emergency_Init._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 20) = 1;
  *(v3 + 21) = 8466;
  *(v3 + 23) = 24;
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;
  *(v3 + 40) = 0;
  *(v3 + 48) = 1;
  *(v3 + 56) = 0;
  *(v3 + 64) = 1;
  *(v3 + 72) = 0;
  *(v3 + 80) = 1;
  *(v3 + 88) = 0;
  *(v3 + 96) = 1;
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  *(v3 + 120) = 0;
  *(v3 + 128) = 1;
  *(v3 + 129) = 514;
  *(v3 + 131) = 2;
  v4 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
  v5 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
  v7 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
  result = (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  static Proto_Gnss_Emergency_SessionStatus._StorageClass.defaultInstance = v3;
  return result;
}

{
  type metadata accessor for Proto_Gnss_Emergency_PositionRequest._StorageClass();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 20) = 1281;
  *(result + 24) = 0;
  *(result + 28) = 1;
  *(result + 32) = 0;
  *(result + 36) = 1;
  *(result + 40) = 0;
  *(result + 44) = 1;
  *(result + 48) = 0;
  *(result + 52) = 1;
  *(result + 56) = 0;
  *(result + 60) = 1;
  *(result + 64) = 0;
  *(result + 68) = 1;
  *(result + 72) = 0;
  *(result + 76) = 1;
  *(result + 80) = 0;
  *(result + 84) = 1;
  *(result + 88) = 0;
  *(result + 92) = 1;
  *(result + 96) = 0;
  *(result + 100) = 1;
  *(result + 104) = 0;
  *(result + 108) = 1;
  *(result + 112) = 0;
  *(result + 116) = 1793;
  *(result + 120) = 0;
  *(result + 124) = 1;
  *(result + 128) = 0;
  *(result + 132) = 1;
  static Proto_Gnss_Emergency_PositionRequest._StorageClass.defaultInstance = result;
  return result;
}

{
  v0 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  v5 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  v7 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  v9 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  result = (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  static Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
  v5 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
  v7 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
  v9 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
  v11 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  v13 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  (*(*(v13 - 8) + 56))(v3 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  v15 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  (*(*(v15 - 8) + 56))(v3 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  v17 = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
  result = (*(*(v17 - 8) + 56))(v3 + v16, 1, 1, v17);
  v19 = v3 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__noLocation;
  *v19 = 0;
  *(v19 + 4) = 1;
  static Proto_Gnss_Emergency_ShapeInfo._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 9;
  *(v3 + 20) = 0;
  *(v3 + 24) = 1;
  v4 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  v5 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
  v7 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
  v11 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
  v13 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  result = (*(*(v13 - 8) + 56))(v3 + v12, 1, 1, v13);
  v15 = v3 + OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__technologySource;
  *v15 = 0;
  *(v15 + 4) = 1;
  static Proto_Gnss_Emergency_PositionReport._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 20) = 1;
  *(v3 + 24) = 0;
  *(v3 + 28) = 1;
  *(v3 + 32) = 0;
  *(v3 + 36) = 1;
  *(v3 + 40) = 0;
  *(v3 + 44) = 1;
  *(v3 + 48) = MEMORY[0x277D84F90];
  v4 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  v5 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = v3 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__codePhaseAmbiguity;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = v3 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTodpresent;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  result = (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  static Proto_Gnss_Emergency_GpsMeasurements._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 9;
  *(v3 + 20) = 0;
  *(v3 + 24) = 1;
  v4 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  v5 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  v7 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  result = (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  v11 = v3 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__moreGanssMeasurements;
  *v11 = 0;
  *(v11 + 4) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime) = 2;
  static Proto_Gnss_Emergency_MeasurementReport._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 7;
  *(v3 + 20) = 0;
  *(v3 + 24) = 1;
  *(v3 + 28) = 0;
  *(v3 + 32) = 1;
  *(v3 + 40) = MEMORY[0x277D84F90];
  v4 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
  v5 = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
  v7 = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  result = (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  static Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 9;
  *(v3 + 20) = 0;
  *(v3 + 24) = 1;
  v4 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  v5 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
  v7 = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  result = (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  static Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass.defaultInstance = v3;
  return result;
}

{
  type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 20) = 1;
  *(result + 24) = 0;
  *(result + 28) = 1;
  *(result + 32) = 0;
  *(result + 36) = 1;
  *(result + 40) = 0;
  *(result + 44) = 1;
  *(result + 48) = 0;
  *(result + 52) = 1;
  *(result + 56) = 0;
  *(result + 60) = 1;
  *(result + 64) = 0;
  *(result + 68) = 1;
  *(result + 72) = 0;
  *(result + 76) = 1;
  *(result + 80) = 0;
  *(result + 84) = 1;
  *(result + 88) = 0;
  *(result + 92) = 1;
  *(result + 96) = 0;
  *(result + 100) = 1;
  *(result + 104) = 0;
  *(result + 108) = 1;
  *(result + 112) = 0;
  *(result + 116) = 1;
  *(result + 120) = 0;
  *(result + 124) = 1;
  *(result + 128) = 0;
  *(result + 132) = 1;
  *(result + 136) = 0;
  *(result + 140) = 1;
  *(result + 144) = 0;
  *(result + 148) = 1;
  *(result + 152) = 0;
  *(result + 156) = 1;
  *(result + 160) = 0;
  *(result + 164) = 1;
  *(result + 168) = 0;
  *(result + 172) = 1;
  *(result + 176) = 0;
  *(result + 180) = 1;
  *(result + 184) = 0;
  *(result + 188) = 1;
  *(result + 192) = 0;
  *(result + 196) = 1;
  *(result + 200) = 0;
  *(result + 204) = 1;
  *(result + 208) = 0;
  *(result + 212) = 1;
  *(result + 216) = 0;
  *(result + 220) = 1;
  *(result + 224) = 0;
  *(result + 228) = 1;
  *(result + 232) = 0;
  *(result + 236) = 1;
  *(result + 240) = 0;
  *(result + 244) = 1;
  *(result + 248) = 0;
  *(result + 252) = 1;
  *(result + 256) = 0;
  *(result + 260) = 1;
  *(result + 264) = 0;
  *(result + 268) = 1;
  *(result + 272) = 0;
  *(result + 276) = 1;
  *(result + 280) = 0;
  *(result + 284) = 1;
  static Proto_Gnss_Emergency_GpsEphemeris._StorageClass.defaultInstance = result;
  return result;
}

{
  v0 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 9;
  *(v3 + 20) = 0;
  *(v3 + 24) = 1;
  v4 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  v5 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  v7 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationIndication;
  v9 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  result = (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__afltAction) = 4;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime) = 2;
  static Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for Proto_Gnss_Fix._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__time;
  v5 = type metadata accessor for Proto_Gnss_Time(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__position;
  v7 = type metadata accessor for Proto_Gnss_Position(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__velocity;
  v9 = type metadata accessor for Proto_Gnss_Velocity(0);
  result = (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  v11 = v3 + OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__spoofingFlags;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__estimationTechnology) = 5;
  static Proto_Gnss_Fix._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for Proto_Gnss_TimeTransferDataExtend._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__data;
  v5 = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  result = (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v7 = v3 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkBeforeMachAbsTick;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v3 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkAfterMachAbsTick;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v3 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__currentMachContMinusMachAbsNs;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v3 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkCenterMachAbsTimeNs;
  *v10 = 0;
  *(v10 + 8) = 1;
  static Proto_Gnss_TimeTransferDataExtend._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  *(v3 + 32) = 0;
  *(v3 + 40) = 1;
  *(v3 + 44) = 0;
  *(v3 + 48) = 1;
  *(v3 + 52) = 0;
  *(v3 + 56) = 1;
  *(v3 + 60) = 0;
  *(v3 + 64) = 1;
  *(v3 + 72) = xmmword_23D1B1460;
  *(v3 + 88) = 3;
  *(v3 + 96) = 0;
  *(v3 + 104) = 1;
  *(v3 + 112) = 0;
  *(v3 + 120) = 1;
  *(v3 + 124) = 0;
  *(v3 + 128) = 1;
  *(v3 + 152) = 0u;
  *(v3 + 136) = 0u;
  v4 = OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info;
  v5 = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  result = (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  static CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  *(v3 + 28) = 0;
  *(v3 + 32) = 15873;
  v4 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition;
  v5 = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
  v7 = type metadata accessor for Proto_Gpsd_InjectAssistanceTime(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistancePressure;
  v9 = type metadata accessor for Proto_Gpsd_SetAssistancePressure(0);
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAccel;
  v11 = type metadata accessor for Proto_Gpsd_SetAssistanceAccel(0);
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceGyro;
  v13 = type metadata accessor for Proto_Gpsd_SetAssistanceGyro(0);
  (*(*(v13 - 8) + 56))(v3 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceDem;
  v15 = type metadata accessor for Proto_Gpsd_SetAssistanceDem(0);
  (*(*(v15 - 8) + 56))(v3 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMapVector;
  v17 = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  (*(*(v17 - 8) + 56))(v3 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMotionActivityContext;
  v19 = type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0);
  (*(*(v19 - 8) + 56))(v3 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMountState;
  v21 = type metadata accessor for Proto_Gpsd_SetAssistanceMountState(0);
  (*(*(v21 - 8) + 56))(v3 + v20, 1, 1, v21);
  v22 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSignalEnvironment;
  v23 = type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment(0);
  (*(*(v23 - 8) + 56))(v3 + v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSpeedConstraint;
  v25 = type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0);
  (*(*(v25 - 8) + 56))(v3 + v24, 1, 1, v25);
  v26 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAlongTrackVelocity;
  v27 = type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity(0);
  (*(*(v27 - 8) + 56))(v3 + v26, 1, 1, v27);
  v28 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceFile;
  v29 = type metadata accessor for Proto_Gpsd_InjectAssistanceFile(0);
  (*(*(v29 - 8) + 56))(v3 + v28, 1, 1, v29);
  v30 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRtiFile;
  v31 = type metadata accessor for Proto_Gpsd_InjectRtiFile(0);
  (*(*(v31 - 8) + 56))(v3 + v30, 1, 1, v31);
  v32 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectSvidBlocklist;
  v33 = type metadata accessor for Proto_Gpsd_InjectSvidBlocklist(0);
  (*(*(v33 - 8) + 56))(v3 + v32, 1, 1, v33);
  v34 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__deleteGnssData;
  v35 = type metadata accessor for Proto_Gpsd_DeleteGnssData(0);
  (*(*(v35 - 8) + 56))(v3 + v34, 1, 1, v35);
  v36 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setPvtmReport;
  v37 = type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
  (*(*(v37 - 8) + 56))(v3 + v36, 1, 1, v37);
  v38 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setNmeaHandler;
  v39 = type metadata accessor for Proto_Gpsd_SetNmeaHandler(0);
  (*(*(v39 - 8) + 56))(v3 + v38, 1, 1, v39);
  v40 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigSimulatorMode;
  v41 = type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode(0);
  (*(*(v41 - 8) + 56))(v3 + v40, 1, 1, v41);
  v42 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigEnableGnssConstellations;
  v43 = type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations(0);
  (*(*(v43 - 8) + 56))(v3 + v42, 1, 1, v43);
  v44 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigDutyCycling;
  v45 = type metadata accessor for Proto_Gpsd_SetConfigDutyCycling(0);
  (*(*(v45 - 8) + 56))(v3 + v44, 1, 1, v45);
  v46 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__terminationImminent;
  v47 = type metadata accessor for Proto_Gpsd_TerminationImminent(0);
  (*(*(v47 - 8) + 56))(v3 + v46, 1, 1, v47);
  v48 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exitMessage;
  v49 = type metadata accessor for Proto_Gpsd_ExitMessage(0);
  (*(*(v49 - 8) + 56))(v3 + v48, 1, 1, v49);
  v50 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectLtlInfo;
  v51 = type metadata accessor for Proto_Gpsd_LtlInfo(0);
  (*(*(v51 - 8) + 56))(v3 + v50, 1, 1, v51);
  v52 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startContext;
  started = type metadata accessor for Proto_Gpsd_StartContext(0);
  (*(*(started - 8) + 56))(v3 + v52, 1, 1, started);
  v54 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setThermalRiskState;
  v55 = type metadata accessor for Proto_Gpsd_SetThermalRiskState(0);
  (*(*(v55 - 8) + 56))(v3 + v54, 1, 1, v55);
  v56 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigRfBandEnable;
  v57 = type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable(0);
  (*(*(v57 - 8) + 56))(v3 + v56, 1, 1, v57);
  v58 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRavenOrbitFile;
  v59 = type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile(0);
  (*(*(v59 - 8) + 56))(v3 + v58, 1, 1, v59);
  v60 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__emergConfig;
  v61 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  (*(*(v61 - 8) + 56))(v3 + v60, 1, 1, v61);
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gemProtocolRequest) = xmmword_23D1B1460;
  v62 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionRequest;
  v63 = type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0);
  (*(*(v63 - 8) + 56))(v3 + v62, 1, 1, v63);
  v64 = v3 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__sessionID;
  *v64 = 0;
  *(v64 + 4) = 1;
  v65 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsReferenceTime;
  v66 = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  (*(*(v66 - 8) + 56))(v3 + v65, 1, 1, v66);
  v67 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__referenceLocation;
  v68 = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  (*(*(v68 - 8) + 56))(v3 + v67, 1, 1, v68);
  v69 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsNavigationModel;
  v70 = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  (*(*(v70 - 8) + 56))(v3 + v69, 1, 1, v70);
  v71 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsAcqAssistance;
  v72 = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  (*(*(v72 - 8) + 56))(v3 + v71, 1, 1, v72);
  v73 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistance;
  v74 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  (*(*(v74 - 8) + 56))(v3 + v73, 1, 1, v74);
  v75 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneContext;
  v76 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
  (*(*(v76 - 8) + 56))(v3 + v75, 1, 1, v76);
  v77 = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitVec) = MEMORY[0x277D84F90];
  v78 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__locationID;
  v79 = type metadata accessor for Proto_Gnss_Emergency_LocationId(0);
  (*(*(v79 - 8) + 56))(v3 + v78, 1, 1, v79);
  v80 = v3 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitIndex;
  *v80 = 0;
  *(v80 + 4) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplCert) = v77;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__servingCellLte) = 2;
  v81 = v3 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__simInstance;
  *v81 = 0;
  *(v81 + 4) = 1;
  v82 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplContext;
  v83 = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  (*(*(v83 - 8) + 56))(v3 + v82, 1, 1, v83);
  v84 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementList;
  v85 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList(0);
  result = (*(*(v85 - 8) + 56))(v3 + v84, 1, 1, v85);
  static Proto_Gpsd_Request._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 15896;
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;
  v4 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__fix;
  v5 = type metadata accessor for Proto_Gnss_Fix(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__meas;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__powerMeasurement;
  v9 = type metadata accessor for Proto_Gnss_PwrMeasurement(0);
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__status;
  v11 = type metadata accessor for Proto_Gpsd_Status(0);
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__timeTransferDataExtend;
  v13 = type metadata accessor for Proto_Gnss_TimeTransferDataExtend(0);
  (*(*(v13 - 8) + 56))(v3 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__recoveryStatistics;
  v15 = type metadata accessor for Proto_Gpsd_RecoveryStatistics(0);
  (*(*(v15 - 8) + 56))(v3 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__ltlInfoRequest;
  v17 = type metadata accessor for Proto_Gpsd_LtlInfoRequest(0);
  (*(*(v17 - 8) + 56))(v3 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedExtendedEphemeris;
  v19 = type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0);
  (*(*(v19 - 8) + 56))(v3 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedRti;
  v21 = type metadata accessor for Proto_Gnss_DecodedRti(0);
  (*(*(v21 - 8) + 56))(v3 + v20, 1, 1, v21);
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startStatus) = 10;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__stopStatus) = 10;
  v22 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exception;
  v23 = type metadata accessor for Proto_Gpsd_Exception(0);
  (*(*(v23 - 8) + 56))(v3 + v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__askBasebandReset;
  v25 = type metadata accessor for Proto_Gpsd_AskBasebandReset(0);
  (*(*(v25 - 8) + 56))(v3 + v24, 1, 1, v25);
  v26 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__summaryReport;
  v27 = type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0);
  (*(*(v27 - 8) + 56))(v3 + v26, 1, 1, v27);
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gemProtocolIndication) = xmmword_23D1B1460;
  v28 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionReport;
  v29 = type metadata accessor for Proto_Gnss_Emergency_PositionReport(0);
  (*(*(v29 - 8) + 56))(v3 + v28, 1, 1, v29);
  v30 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneMeasurementReport;
  v31 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0);
  (*(*(v31 - 8) + 56))(v3 + v30, 1, 1, v31);
  v32 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__assistanceNeededReport;
  v33 = type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0);
  (*(*(v33 - 8) + 56))(v3 + v32, 1, 1, v33);
  v34 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistanceRequest;
  v35 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest(0);
  (*(*(v35 - 8) + 56))(v3 + v34, 1, 1, v35);
  v36 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneMeasurementReportWithEstimate;
  v37 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0);
  (*(*(v37 - 8) + 56))(v3 + v36, 1, 1, v37);
  v38 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplSessionStatus;
  v39 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0);
  (*(*(v39 - 8) + 56))(v3 + v38, 1, 1, v39);
  v40 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedSuplInit;
  v41 = type metadata accessor for Proto_Gnss_Emergency_Init(0);
  (*(*(v41 - 8) + 56))(v3 + v40, 1, 1, v41);
  v42 = v3 + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitIndex;
  *v42 = 0;
  *(v42 + 4) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitDecodeResult) = 4;
  v43 = v3 + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__simInstance;
  *v43 = 0;
  *(v43 + 4) = 1;
  v44 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementRequest;
  v45 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest(0);
  result = (*(*(v45 - 8) + 56))(v3 + v44, 1, 1, v45);
  static Proto_Gpsd_Indication._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for Proto_Gpsd_LtlInfo._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 2;
  *(v3 + 20) = 0;
  *(v3 + 24) = 1281;
  v4 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__initialParams;
  v5 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__lutParams;
  v7 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__currentSrcCalib;
  v9 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData(0);
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__racPmicAdcrPreCal;
  v11 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlRacPmicAdcPreCalData(0);
  result = (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  static Proto_Gpsd_LtlInfo._StorageClass.defaultInstance = v3;
  return result;
}

uint64_t CLP_LogEntry_AONLoc_Indication.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 24))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v11 = *(v9 + 16);
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if ((*(v9 + 32) & 1) == 0)
  {
    v12 = *(v9 + 28);
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  swift_beginAccess();
  if (*(v9 + 33) != 7)
  {
    v13 = *(v9 + 33);
    lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Indication.TypeEnum and conformance CLP_LogEntry_AONLoc_Indication.TypeEnum();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  closure #4 in closure #1 in CLP_LogEntry_AONLoc_Indication.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #5 in closure #1 in CLP_LogEntry_AONLoc_Indication.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #6 in closure #1 in CLP_LogEntry_AONLoc_Indication.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #7 in closure #1 in CLP_LogEntry_AONLoc_Indication.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #8 in closure #1 in CLP_LogEntry_AONLoc_Indication.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #9 in closure #1 in CLP_LogEntry_AONLoc_Indication.traverse<A>(visitor:)(v9, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #4 in closure #1 in CLP_LogEntry_AONLoc_Indication.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf19Proto_Gpsd_ResponseVSgMd, &_s10ALProtobuf19Proto_Gpsd_ResponseVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gpsd_Response(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdResponse;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf19Proto_Gpsd_ResponseVSgMd, &_s10ALProtobuf19Proto_Gpsd_ResponseVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf19Proto_Gpsd_ResponseVSgMd, &_s10ALProtobuf19Proto_Gpsd_ResponseVSgMR);
  }

  outlined init with take of CLP_LogEntry_AONLoc_Request.ResultOptions(v8, v13, type metadata accessor for Proto_Gpsd_Response);
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type Proto_Gpsd_Response and conformance Proto_Gpsd_Response, type metadata accessor for Proto_Gpsd_Response);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v13, type metadata accessor for Proto_Gpsd_Response);
}

uint64_t closure #5 in closure #1 in CLP_LogEntry_AONLoc_Indication.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf21Proto_Gpsd_IndicationVSgMd, &_s10ALProtobuf21Proto_Gpsd_IndicationVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gpsd_Indication(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdIndication;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf21Proto_Gpsd_IndicationVSgMd, &_s10ALProtobuf21Proto_Gpsd_IndicationVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf21Proto_Gpsd_IndicationVSgMd, &_s10ALProtobuf21Proto_Gpsd_IndicationVSgMR);
  }

  outlined init with take of CLP_LogEntry_AONLoc_Request.ResultOptions(v8, v13, type metadata accessor for Proto_Gpsd_Indication);
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type Proto_Gpsd_Indication and conformance Proto_Gpsd_Indication, type metadata accessor for Proto_Gpsd_Indication);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v13, type metadata accessor for Proto_Gpsd_Indication);
}

uint64_t closure #6 in closure #1 in CLP_LogEntry_AONLoc_Indication.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMd, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_AONLoc_Response(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiResponse;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMd, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMd, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMR);
  }

  outlined init with take of CLP_LogEntry_AONLoc_Request.ResultOptions(v8, v13, type metadata accessor for CLP_LogEntry_AONLoc_Response);
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Response and conformance CLP_LogEntry_AONLoc_Response, type metadata accessor for CLP_LogEntry_AONLoc_Response);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v13, type metadata accessor for CLP_LogEntry_AONLoc_Response);
}

uint64_t closure #7 in closure #1 in CLP_LogEntry_AONLoc_Indication.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSgMd, &_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiIndication;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSgMd, &_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSgMd, &_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSgMR);
  }

  outlined init with take of CLP_LogEntry_AONLoc_Request.ResultOptions(v8, v13, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication);
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_WiFiIndication and conformance CLP_LogEntry_AONLoc_WiFiIndication, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v13, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication);
}

uint64_t closure #8 in closure #1 in CLP_LogEntry_AONLoc_Indication.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMd, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_AONLoc_Response(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btResponse;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMd, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMd, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMR);
  }

  outlined init with take of CLP_LogEntry_AONLoc_Request.ResultOptions(v8, v13, type metadata accessor for CLP_LogEntry_AONLoc_Response);
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Response and conformance CLP_LogEntry_AONLoc_Response, type metadata accessor for CLP_LogEntry_AONLoc_Response);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v13, type metadata accessor for CLP_LogEntry_AONLoc_Response);
}

uint64_t closure #9 in closure #1 in CLP_LogEntry_AONLoc_Indication.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSgMd, &_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_AONLoc_BtIndication(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btIndication;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSgMd, &_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSgMd, &_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSgMR);
  }

  outlined init with take of CLP_LogEntry_AONLoc_Request.ResultOptions(v8, v13, type metadata accessor for CLP_LogEntry_AONLoc_BtIndication);
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtIndication and conformance CLP_LogEntry_AONLoc_BtIndication, type metadata accessor for CLP_LogEntry_AONLoc_BtIndication);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v13, type metadata accessor for CLP_LogEntry_AONLoc_BtIndication);
}

BOOL closure #1 in static CLP_LogEntry_AONLoc_Indication.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_AONLoc_BtIndication(0);
  v157 = *(v4 - 8);
  v158 = v4;
  v5 = *(v157 + 64);
  MEMORY[0x28223BE20](v4);
  v154 = (&v151 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSg_ADtMd, &_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSg_ADtMR);
  v7 = *(*(v156 - 8) + 64);
  MEMORY[0x28223BE20](v156);
  v159 = &v151 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSgMd, &_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v155 = (&v151 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v163 = &v151 - v13;
  v14 = type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication(0);
  v168 = *(v14 - 8);
  v169 = v14;
  v15 = *(v168 + 64);
  MEMORY[0x28223BE20](v14);
  v161 = (&v151 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSg_ADtMR);
  v17 = *(*(v167 - 8) + 64);
  MEMORY[0x28223BE20](v167);
  v170 = &v151 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSgMd, &_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSgMR);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v164 = (&v151 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v183 = &v151 - v23;
  v175 = type metadata accessor for CLP_LogEntry_AONLoc_Response(0);
  v177 = *(v175 - 8);
  v24 = *(v177 + 64);
  MEMORY[0x28223BE20](v175);
  v166 = &v151 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSg_ADtMd, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSg_ADtMR);
  v26 = *(*(v174 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v174);
  v162 = &v151 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v173 = &v151 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMd, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMR);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v160 = &v151 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v165 = &v151 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v171 = &v151 - v37;
  MEMORY[0x28223BE20](v36);
  v182 = &v151 - v38;
  v39 = type metadata accessor for Proto_Gpsd_Indication(0);
  v179 = *(v39 - 8);
  v180 = v39;
  v40 = *(v179 + 64);
  MEMORY[0x28223BE20](v39);
  v172 = &v151 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf21Proto_Gpsd_IndicationVSg_ADtMd, &_s10ALProtobuf21Proto_Gpsd_IndicationVSg_ADtMR);
  v42 = *(*(v178 - 8) + 64);
  MEMORY[0x28223BE20](v178);
  v181 = &v151 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf21Proto_Gpsd_IndicationVSgMd, &_s10ALProtobuf21Proto_Gpsd_IndicationVSgMR);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v44 - 8);
  v176 = &v151 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v184 = &v151 - v48;
  v49 = type metadata accessor for Proto_Gpsd_Response(0);
  v185 = *(v49 - 8);
  v186 = v49;
  v50 = *(v185 + 64);
  MEMORY[0x28223BE20](v49);
  v52 = &v151 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf19Proto_Gpsd_ResponseVSg_ADtMd, &_s10ALProtobuf19Proto_Gpsd_ResponseVSg_ADtMR);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v56 = &v151 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf19Proto_Gpsd_ResponseVSgMd, &_s10ALProtobuf19Proto_Gpsd_ResponseVSgMR);
  v58 = *(*(v57 - 8) + 64);
  v59 = MEMORY[0x28223BE20](v57 - 8);
  v61 = &v151 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v63 = &v151 - v62;
  swift_beginAccess();
  v64 = *(a1 + 16);
  v187 = a1;
  v65 = *(a1 + 24);
  swift_beginAccess();
  v66 = *(a2 + 24);
  if (v65)
  {
    v67 = a2;
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    v67 = a2;
    if (v64 != *(a2 + 16))
    {
      v66 = 1;
    }

    if (v66)
    {
      return 0;
    }
  }

  v68 = v187;
  swift_beginAccess();
  v69 = *(v68 + 28);
  v70 = *(v68 + 32);
  swift_beginAccess();
  v71 = *(v67 + 32);
  if (v70)
  {
    if (!*(v67 + 32))
    {
      return 0;
    }
  }

  else
  {
    if (v69 != *(v67 + 28))
    {
      v71 = 1;
    }

    if (v71)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v72 = *(v68 + 33);
  swift_beginAccess();
  v73 = *(v67 + 33);
  if (v72 == 7)
  {
    if (v73 != 7)
    {
      return 0;
    }
  }

  else if (v73 == 7 || qword_23D1B13B0[v72] != qword_23D1B13B0[v73])
  {
    return 0;
  }

  v152 = v67;
  v74 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdResponse;
  swift_beginAccess();
  v75 = v68 + v74;
  v76 = v152;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v75, v63, &_s10ALProtobuf19Proto_Gpsd_ResponseVSgMd, &_s10ALProtobuf19Proto_Gpsd_ResponseVSgMR);
  v77 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdResponse;
  swift_beginAccess();
  v78 = *(v53 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v63, v56, &_s10ALProtobuf19Proto_Gpsd_ResponseVSgMd, &_s10ALProtobuf19Proto_Gpsd_ResponseVSgMR);
  v153 = v78;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v76 + v77, &v56[v78], &_s10ALProtobuf19Proto_Gpsd_ResponseVSgMd, &_s10ALProtobuf19Proto_Gpsd_ResponseVSgMR);
  v79 = v186;
  v80 = *(v185 + 48);
  if (v80(v56, 1, v186) == 1)
  {

    outlined destroy of Any?(v63, &_s10ALProtobuf19Proto_Gpsd_ResponseVSgMd, &_s10ALProtobuf19Proto_Gpsd_ResponseVSgMR);
    if (v80(&v56[v153], 1, v79) == 1)
    {
      outlined destroy of Any?(v56, &_s10ALProtobuf19Proto_Gpsd_ResponseVSgMd, &_s10ALProtobuf19Proto_Gpsd_ResponseVSgMR);
      goto LABEL_26;
    }

LABEL_23:
    outlined destroy of Any?(v56, &_s10ALProtobuf19Proto_Gpsd_ResponseVSg_ADtMd, &_s10ALProtobuf19Proto_Gpsd_ResponseVSg_ADtMR);
    goto LABEL_54;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v56, v61, &_s10ALProtobuf19Proto_Gpsd_ResponseVSgMd, &_s10ALProtobuf19Proto_Gpsd_ResponseVSgMR);
  if (v80(&v56[v153], 1, v79) == 1)
  {

    outlined destroy of Any?(v63, &_s10ALProtobuf19Proto_Gpsd_ResponseVSgMd, &_s10ALProtobuf19Proto_Gpsd_ResponseVSgMR);
    outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v61, type metadata accessor for Proto_Gpsd_Response);
    goto LABEL_23;
  }

  outlined init with take of CLP_LogEntry_AONLoc_Request.ResultOptions(&v56[v153], v52, type metadata accessor for Proto_Gpsd_Response);
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type Proto_Gpsd_Response and conformance Proto_Gpsd_Response, type metadata accessor for Proto_Gpsd_Response);

  v81 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v52, type metadata accessor for Proto_Gpsd_Response);
  outlined destroy of Any?(v63, &_s10ALProtobuf19Proto_Gpsd_ResponseVSgMd, &_s10ALProtobuf19Proto_Gpsd_ResponseVSgMR);
  outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v61, type metadata accessor for Proto_Gpsd_Response);
  v68 = v187;
  outlined destroy of Any?(v56, &_s10ALProtobuf19Proto_Gpsd_ResponseVSgMd, &_s10ALProtobuf19Proto_Gpsd_ResponseVSgMR);
  if ((v81 & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_26:
  v82 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdIndication;
  swift_beginAccess();
  v83 = v184;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v68 + v82, v184, &_s10ALProtobuf21Proto_Gpsd_IndicationVSgMd, &_s10ALProtobuf21Proto_Gpsd_IndicationVSgMR);
  v84 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdIndication;
  swift_beginAccess();
  v85 = *(v178 + 48);
  v86 = v181;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v83, v181, &_s10ALProtobuf21Proto_Gpsd_IndicationVSgMd, &_s10ALProtobuf21Proto_Gpsd_IndicationVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v76 + v84, v86 + v85, &_s10ALProtobuf21Proto_Gpsd_IndicationVSgMd, &_s10ALProtobuf21Proto_Gpsd_IndicationVSgMR);
  v87 = v180;
  v88 = *(v179 + 48);
  if (v88(v86, 1, v180) == 1)
  {
    outlined destroy of Any?(v83, &_s10ALProtobuf21Proto_Gpsd_IndicationVSgMd, &_s10ALProtobuf21Proto_Gpsd_IndicationVSgMR);
    v89 = v88(v86 + v85, 1, v87);
    v90 = v182;
    v91 = v183;
    if (v89 == 1)
    {
      outlined destroy of Any?(v86, &_s10ALProtobuf21Proto_Gpsd_IndicationVSgMd, &_s10ALProtobuf21Proto_Gpsd_IndicationVSgMR);
      goto LABEL_33;
    }

LABEL_31:
    v94 = &_s10ALProtobuf21Proto_Gpsd_IndicationVSg_ADtMd;
    v95 = &_s10ALProtobuf21Proto_Gpsd_IndicationVSg_ADtMR;
    v96 = v86;
LABEL_53:
    outlined destroy of Any?(v96, v94, v95);
    goto LABEL_54;
  }

  v92 = v176;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v86, v176, &_s10ALProtobuf21Proto_Gpsd_IndicationVSgMd, &_s10ALProtobuf21Proto_Gpsd_IndicationVSgMR);
  v93 = v88(v86 + v85, 1, v87);
  v90 = v182;
  v91 = v183;
  if (v93 == 1)
  {
    outlined destroy of Any?(v184, &_s10ALProtobuf21Proto_Gpsd_IndicationVSgMd, &_s10ALProtobuf21Proto_Gpsd_IndicationVSgMR);
    outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v92, type metadata accessor for Proto_Gpsd_Indication);
    goto LABEL_31;
  }

  v97 = v172;
  outlined init with take of CLP_LogEntry_AONLoc_Request.ResultOptions(v86 + v85, v172, type metadata accessor for Proto_Gpsd_Indication);
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type Proto_Gpsd_Indication and conformance Proto_Gpsd_Indication, type metadata accessor for Proto_Gpsd_Indication);
  v98 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v97, type metadata accessor for Proto_Gpsd_Indication);
  outlined destroy of Any?(v184, &_s10ALProtobuf21Proto_Gpsd_IndicationVSgMd, &_s10ALProtobuf21Proto_Gpsd_IndicationVSgMR);
  outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v92, type metadata accessor for Proto_Gpsd_Indication);
  v76 = v152;
  outlined destroy of Any?(v86, &_s10ALProtobuf21Proto_Gpsd_IndicationVSgMd, &_s10ALProtobuf21Proto_Gpsd_IndicationVSgMR);
  if ((v98 & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_33:
  v99 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiResponse;
  v100 = v187;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v100 + v99, v90, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMd, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMR);
  v101 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiResponse;
  swift_beginAccess();
  v102 = v173;
  v103 = *(v174 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v90, v173, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMd, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMR);
  v104 = v102;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v76 + v101, v102 + v103, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMd, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMR);
  v106 = v177 + 48;
  v105 = *(v177 + 48);
  v107 = v175;
  if (v105(v104, 1, v175) == 1)
  {
    outlined destroy of Any?(v90, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMd, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMR);
    if (v105(v104 + v103, 1, v107) == 1)
    {
      v186 = v105;
      v177 = v106;
      outlined destroy of Any?(v104, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMd, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMR);
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v108 = v171;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v104, v171, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMd, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMR);
  if (v105(v104 + v103, 1, v107) == 1)
  {
    outlined destroy of Any?(v90, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMd, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMR);
    outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v108, type metadata accessor for CLP_LogEntry_AONLoc_Response);
LABEL_38:
    v94 = &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSg_ADtMd;
    v95 = &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSg_ADtMR;
    v96 = v104;
    goto LABEL_53;
  }

  v186 = v105;
  v177 = v106;
  v109 = v108;
  v110 = v166;
  outlined init with take of CLP_LogEntry_AONLoc_Request.ResultOptions(v104 + v103, v166, type metadata accessor for CLP_LogEntry_AONLoc_Response);
  v111 = specialized static CLP_LogEntry_AONLoc_Response.== infix(_:_:)(v109, v110);
  outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v110, type metadata accessor for CLP_LogEntry_AONLoc_Response);
  outlined destroy of Any?(v90, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMd, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMR);
  outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v109, type metadata accessor for CLP_LogEntry_AONLoc_Response);
  v76 = v152;
  outlined destroy of Any?(v104, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMd, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMR);
  if ((v111 & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_40:
  v112 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiIndication;
  v113 = v187;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v113 + v112, v91, &_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSgMd, &_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSgMR);
  v114 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiIndication;
  swift_beginAccess();
  v115 = *(v167 + 48);
  v116 = v170;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v91, v170, &_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSgMd, &_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v76 + v114, v116 + v115, &_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSgMd, &_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSgMR);
  v117 = v169;
  v118 = *(v168 + 48);
  if (v118(v116, 1, v169) == 1)
  {
    outlined destroy of Any?(v91, &_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSgMd, &_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSgMR);
    if (v118(v116 + v115, 1, v117) == 1)
    {
      outlined destroy of Any?(v116, &_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSgMd, &_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSgMR);
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  v119 = v164;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v116, v164, &_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSgMd, &_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSgMR);
  if (v118(v116 + v115, 1, v117) == 1)
  {
    outlined destroy of Any?(v183, &_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSgMd, &_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSgMR);
    outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v119, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication);
LABEL_45:
    v94 = &_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSg_ADtMd;
    v95 = &_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSg_ADtMR;
    v96 = v116;
    goto LABEL_53;
  }

  v120 = v161;
  outlined init with take of CLP_LogEntry_AONLoc_Request.ResultOptions(v116 + v115, v161, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication);
  v121 = specialized static CLP_LogEntry_AONLoc_WiFiIndication.== infix(_:_:)(v119, v120, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication, _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationV_Tt1g5);
  outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v120, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication);
  outlined destroy of Any?(v183, &_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSgMd, &_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSgMR);
  outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v119, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication);
  v76 = v152;
  outlined destroy of Any?(v116, &_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSgMd, &_s10ALProtobuf34CLP_LogEntry_AONLoc_WiFiIndicationVSgMR);
  if ((v121 & 1) == 0)
  {
LABEL_54:

    return 0;
  }

LABEL_47:
  v122 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btResponse;
  v123 = v187;
  swift_beginAccess();
  v124 = v165;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v123 + v122, v165, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMd, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMR);
  v125 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btResponse;
  swift_beginAccess();
  v126 = *(v174 + 48);
  v127 = v162;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v124, v162, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMd, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMR);
  v128 = v76 + v125;
  v129 = v127;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v128, v127 + v126, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMd, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMR);
  v130 = v127;
  v131 = v175;
  v132 = v186;
  if (v186(v130, 1, v175) == 1)
  {
    outlined destroy of Any?(v124, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMd, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMR);
    v133 = v132(v129 + v126, 1, v131);
    v134 = v163;
    if (v133 == 1)
    {
      outlined destroy of Any?(v129, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMd, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMR);
      goto LABEL_57;
    }

    goto LABEL_52;
  }

  v135 = v160;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v129, v160, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMd, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMR);
  v136 = v132(v129 + v126, 1, v131);
  v134 = v163;
  if (v136 == 1)
  {
    outlined destroy of Any?(v165, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMd, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMR);
    outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v135, type metadata accessor for CLP_LogEntry_AONLoc_Response);
LABEL_52:
    v94 = &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSg_ADtMd;
    v95 = &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSg_ADtMR;
    v96 = v129;
    goto LABEL_53;
  }

  v138 = v129 + v126;
  v139 = v166;
  outlined init with take of CLP_LogEntry_AONLoc_Request.ResultOptions(v138, v166, type metadata accessor for CLP_LogEntry_AONLoc_Response);
  v140 = specialized static CLP_LogEntry_AONLoc_Response.== infix(_:_:)(v135, v139);
  outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v139, type metadata accessor for CLP_LogEntry_AONLoc_Response);
  outlined destroy of Any?(v165, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMd, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMR);
  outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v135, type metadata accessor for CLP_LogEntry_AONLoc_Response);
  v76 = v152;
  outlined destroy of Any?(v129, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMd, &_s10ALProtobuf28CLP_LogEntry_AONLoc_ResponseVSgMR);
  if ((v140 & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_57:
  v141 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btIndication;
  v142 = v187;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v142 + v141, v134, &_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSgMd, &_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSgMR);
  v143 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btIndication;
  swift_beginAccess();
  v144 = *(v156 + 48);
  v145 = v159;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v134, v159, &_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSgMd, &_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v76 + v143, v145 + v144, &_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSgMd, &_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSgMR);
  v146 = v158;
  v147 = *(v157 + 48);
  if (v147(v145, 1, v158) != 1)
  {
    v148 = v155;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v145, v155, &_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSgMd, &_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSgMR);
    if (v147(v145 + v144, 1, v146) == 1)
    {

      outlined destroy of Any?(v163, &_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSgMd, &_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSgMR);
      outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v148, type metadata accessor for CLP_LogEntry_AONLoc_BtIndication);
      goto LABEL_62;
    }

    v149 = v154;
    outlined init with take of CLP_LogEntry_AONLoc_Request.ResultOptions(v145 + v144, v154, type metadata accessor for CLP_LogEntry_AONLoc_BtIndication);
    v150 = specialized static CLP_LogEntry_AONLoc_WiFiIndication.== infix(_:_:)(v148, v149, type metadata accessor for CLP_LogEntry_AONLoc_BtIndication, _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf34CLP_LogEntry_AONLoc_BtNotificationV_Tt1g5);

    outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v149, type metadata accessor for CLP_LogEntry_AONLoc_BtIndication);
    outlined destroy of Any?(v163, &_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSgMd, &_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSgMR);
    outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v148, type metadata accessor for CLP_LogEntry_AONLoc_BtIndication);
    outlined destroy of Any?(v145, &_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSgMd, &_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSgMR);
    return (v150 & 1) != 0;
  }

  outlined destroy of Any?(v134, &_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSgMd, &_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSgMR);
  if (v147(v145 + v144, 1, v146) != 1)
  {
LABEL_62:
    outlined destroy of Any?(v145, &_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSg_ADtMd, &_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSg_ADtMR);
    return 0;
  }

  outlined destroy of Any?(v145, &_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSgMd, &_s10ALProtobuf32CLP_LogEntry_AONLoc_BtIndicationVSgMR);
  return 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_AONLoc_Indication(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Indication and conformance CLP_LogEntry_AONLoc_Indication, type metadata accessor for CLP_LogEntry_AONLoc_Indication);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_AONLoc_Indication(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Indication and conformance CLP_LogEntry_AONLoc_Indication, type metadata accessor for CLP_LogEntry_AONLoc_Indication);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_AONLoc_Indication(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Indication and conformance CLP_LogEntry_AONLoc_Indication, type metadata accessor for CLP_LogEntry_AONLoc_Indication);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_AONLoc_Request._protobuf_nameMap.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for _NameMap();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t static CLP_LogEntry_AONLoc_Request._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t CLP_LogEntry_AONLoc_LogEntry.decodeMessage<A>(decoder:)()
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

      if (result == 3)
      {
        v3 = v0;
        v7 = *(type metadata accessor for CLP_LogEntry_AONLoc_LogEntry(0) + 24);
        type metadata accessor for CLP_LogEntry_AONLoc_Indication(0);
        v5 = type metadata accessor for CLP_LogEntry_AONLoc_Indication;
        v6 = &lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Indication and conformance CLP_LogEntry_AONLoc_Indication;
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v3 = v0;
    v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_LogEntry(0) + 20);
    type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
    v5 = type metadata accessor for CLP_LogEntry_AONLoc_Request;
    v6 = &lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request;
LABEL_5:
    lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(v6, v5);
    v0 = v3;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    goto LABEL_6;
  }

  return result;
}

uint64_t CLP_LogEntry_AONLoc_LogEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in CLP_LogEntry_AONLoc_LogEntry.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in CLP_LogEntry_AONLoc_LogEntry.traverse<A>(visitor:)(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CLP_LogEntry_AONLoc_LogEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestVSgMd, &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_AONLoc_LogEntry(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 20), v8, &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestVSgMd, &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestVSgMd, &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestVSgMR);
  }

  outlined init with take of CLP_LogEntry_AONLoc_Request.ResultOptions(v8, v13, type metadata accessor for CLP_LogEntry_AONLoc_Request);
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request, type metadata accessor for CLP_LogEntry_AONLoc_Request);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v13, type metadata accessor for CLP_LogEntry_AONLoc_Request);
}

uint64_t closure #2 in CLP_LogEntry_AONLoc_LogEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30CLP_LogEntry_AONLoc_IndicationVSgMd, &_s10ALProtobuf30CLP_LogEntry_AONLoc_IndicationVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_AONLoc_Indication(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_AONLoc_LogEntry(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 24), v8, &_s10ALProtobuf30CLP_LogEntry_AONLoc_IndicationVSgMd, &_s10ALProtobuf30CLP_LogEntry_AONLoc_IndicationVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf30CLP_LogEntry_AONLoc_IndicationVSgMd, &_s10ALProtobuf30CLP_LogEntry_AONLoc_IndicationVSgMR);
  }

  outlined init with take of CLP_LogEntry_AONLoc_Request.ResultOptions(v8, v13, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Indication and conformance CLP_LogEntry_AONLoc_Indication, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v13, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
}

Swift::Int CLP_LogEntry_AONLoc_Request.hashValue.getter(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_AONLoc_LogEntry@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for CLP_LogEntry_AONLoc_Indication(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_AONLoc_LogEntry(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_LogEntry and conformance CLP_LogEntry_AONLoc_LogEntry, type metadata accessor for CLP_LogEntry_AONLoc_LogEntry);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance CLP_LogEntry_AONLoc_Request@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_AONLoc_LogEntry(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_LogEntry and conformance CLP_LogEntry_AONLoc_LogEntry, type metadata accessor for CLP_LogEntry_AONLoc_LogEntry);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CLP_LogEntry_AONLoc_Request()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_AONLoc_LogEntry(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_LogEntry and conformance CLP_LogEntry_AONLoc_LogEntry, type metadata accessor for CLP_LogEntry_AONLoc_LogEntry);

  return MEMORY[0x28217E440](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CLP_LogEntry_AONLoc_Request()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions(v14, v11, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification);
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions(v15, v8, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification);
        lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiNotification and conformance CLP_LogEntry_PrivateData_WifiNotification, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification);
        v17 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v8, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification);
        outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v11, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf34CLP_LogEntry_AONLoc_BtNotificationV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions(v14, v11, type metadata accessor for CLP_LogEntry_AONLoc_BtNotification);
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions(v15, v8, type metadata accessor for CLP_LogEntry_AONLoc_BtNotification);
        lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtNotification and conformance CLP_LogEntry_AONLoc_BtNotification, type metadata accessor for CLP_LogEntry_AONLoc_BtNotification);
        v17 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v8, type metadata accessor for CLP_LogEntry_AONLoc_BtNotification);
        outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v11, type metadata accessor for CLP_LogEntry_AONLoc_BtNotification);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementV0G4TypeO_Tt1g5Tm(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *(a1 + 16);
  if (v3 == *(a2 + 16))
  {
    if (!v3 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v4 = (a1 + 32);
      v5 = (a2 + 32);
      a3();
      do
      {
        v6 = *v4++;
        v7 = *v5++;
        v8 = dispatch thunk of static Equatable.== infix(_:_:)();
        --v3;
      }

      while ((v8 & 1) != 0 && v3);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZs5Int32V_Tt1g5(uint64_t result, uint64_t a2)
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
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized CLP_LogEntry_AONLoc_Request.TypeEnum.init(rawValue:)(uint64_t result)
{
  if (result > 20)
  {
    switch(result)
    {
      case 21:
        return 3;
      case 31:
        return 4;
      case 41:
        return 5;
    }
  }

  else
  {
    if (result < 2)
    {
      return result;
    }

    if (result == 11)
    {
      return 2;
    }
  }

  return 6;
}

uint64_t specialized static CLP_LogEntry_AONLoc_WiFiIndication.== infix(_:_:)(void *a1, void *a2, uint64_t (*a3)(void), uint64_t (*a4)(void, void))
{
  v7 = a3(0);
  v8 = *(v7 + 24);
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = *(a2 + v8 + 8);
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (*v9 != *v11)
    {
      LOBYTE(v12) = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  v13 = *(v7 + 28);
  v14 = *(a1 + v13);
  v15 = *(a2 + v13);
  if (v14 == 2)
  {
    if (v15 != 2)
    {
      return 0;
    }
  }

  else if (v15 == 2 || ((v14 ^ v15) & 1) != 0)
  {
    return 0;
  }

  v16 = v7;
  if (a4(*a1, *a2))
  {
    v17 = *(v16 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static CLP_LogEntry_AONLoc_Indication.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = closure #1 in static CLP_LogEntry_AONLoc_Indication.== infix(_:_:)(v5, v6);

    if (!v8)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_AONLoc_Response.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_AONLoc_Response(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 6)
  {
    if (v7 != 6)
    {
      goto LABEL_18;
    }
  }

  else if (v7 == 6 || qword_23D1B13E8[v6] != qword_23D1B13E8[v7])
  {
    goto LABEL_18;
  }

  v8 = v4[6];
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = *(a2 + v8 + 8);
  if (v10)
  {
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (*v9 != *v11)
    {
      LOBYTE(v12) = 1;
    }

    if (v12)
    {
      goto LABEL_18;
    }
  }

  v13 = v4[7];
  v14 = *(a1 + v13);
  v15 = *(a2 + v13);
  if (v14 == 10)
  {
    if (v15 == 10)
    {
      goto LABEL_17;
    }

LABEL_18:
    v16 = 0;
    return v16 & 1;
  }

  if (v15 == 10)
  {
    goto LABEL_18;
  }

  lazy protocol witness table accessor for type Proto_Gnss_Result and conformance Proto_Gnss_Result();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_17:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v16 & 1;
}

uint64_t specialized static CLP_LogEntry_AONLoc_LogEntry.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v3 = type metadata accessor for CLP_LogEntry_AONLoc_Indication(0);
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30CLP_LogEntry_AONLoc_IndicationVSgMd, &_s10ALProtobuf30CLP_LogEntry_AONLoc_IndicationVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v51 = &v49 - v8;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30CLP_LogEntry_AONLoc_IndicationVSg_ADtMd, &_s10ALProtobuf30CLP_LogEntry_AONLoc_IndicationVSg_ADtMR);
  v9 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v56 = &v49 - v10;
  v11 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestVSgMd, &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v49 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestVSg_ADtMd, &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestVSg_ADtMR);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v49 - v23;
  v52 = type metadata accessor for CLP_LogEntry_AONLoc_LogEntry(0);
  v25 = *(v52 + 20);
  v26 = *(v21 + 56);
  v57 = a1;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v25, v24, &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestVSgMd, &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestVSgMR);
  v27 = v58 + v25;
  v28 = v58;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v27, &v24[v26], &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestVSgMd, &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestVSgMR);
  v29 = *(v12 + 48);
  if (v29(v24, 1, v11) != 1)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v24, v19, &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestVSgMd, &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestVSgMR);
    if (v29(&v24[v26], 1, v11) != 1)
    {
      outlined init with take of CLP_LogEntry_AONLoc_Request.ResultOptions(&v24[v26], v15, type metadata accessor for CLP_LogEntry_AONLoc_Request);
      v33 = specialized static CLP_LogEntry_AONLoc_Request.== infix(_:_:)(v19, v15);
      outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v15, type metadata accessor for CLP_LogEntry_AONLoc_Request);
      outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v19, type metadata accessor for CLP_LogEntry_AONLoc_Request);
      outlined destroy of Any?(v24, &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestVSgMd, &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestVSgMR);
      if ((v33 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_8;
    }

    outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v19, type metadata accessor for CLP_LogEntry_AONLoc_Request);
LABEL_6:
    v30 = &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestVSg_ADtMd;
    v31 = &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestVSg_ADtMR;
    v32 = v24;
LABEL_15:
    outlined destroy of Any?(v32, v30, v31);
    goto LABEL_16;
  }

  if (v29(&v24[v26], 1, v11) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of Any?(v24, &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestVSgMd, &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestVSgMR);
LABEL_8:
  v34 = *(v52 + 24);
  v35 = *(v53 + 48);
  v36 = v56;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v57 + v34, v56, &_s10ALProtobuf30CLP_LogEntry_AONLoc_IndicationVSgMd, &_s10ALProtobuf30CLP_LogEntry_AONLoc_IndicationVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v28 + v34, v36 + v35, &_s10ALProtobuf30CLP_LogEntry_AONLoc_IndicationVSgMd, &_s10ALProtobuf30CLP_LogEntry_AONLoc_IndicationVSgMR);
  v37 = v55;
  v38 = *(v54 + 48);
  if (v38(v36, 1, v55) == 1)
  {
    if (v38(v36 + v35, 1, v37) == 1)
    {
      outlined destroy of Any?(v36, &_s10ALProtobuf30CLP_LogEntry_AONLoc_IndicationVSgMd, &_s10ALProtobuf30CLP_LogEntry_AONLoc_IndicationVSgMR);
LABEL_21:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v40 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v40 & 1;
    }

    goto LABEL_13;
  }

  v39 = v51;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v36, v51, &_s10ALProtobuf30CLP_LogEntry_AONLoc_IndicationVSgMd, &_s10ALProtobuf30CLP_LogEntry_AONLoc_IndicationVSgMR);
  if (v38(v36 + v35, 1, v37) == 1)
  {
    outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v39, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
LABEL_13:
    v30 = &_s10ALProtobuf30CLP_LogEntry_AONLoc_IndicationVSg_ADtMd;
    v31 = &_s10ALProtobuf30CLP_LogEntry_AONLoc_IndicationVSg_ADtMR;
LABEL_14:
    v32 = v36;
    goto LABEL_15;
  }

  v42 = v50;
  outlined init with take of CLP_LogEntry_AONLoc_Request.ResultOptions(v36 + v35, v50, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
  v43 = *(v37 + 20);
  v44 = *(v39 + v43);
  v45 = *(v42 + v43);
  if (v44 != v45)
  {
    v46 = *(v39 + v43);

    v47 = closure #1 in static CLP_LogEntry_AONLoc_Indication.== infix(_:_:)(v44, v45);

    if (!v47)
    {
      outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v42, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
      outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v39, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
      v30 = &_s10ALProtobuf30CLP_LogEntry_AONLoc_IndicationVSgMd;
      v31 = &_s10ALProtobuf30CLP_LogEntry_AONLoc_IndicationVSgMR;
      goto LABEL_14;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v48 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v42, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
  outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v39, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
  outlined destroy of Any?(v36, &_s10ALProtobuf30CLP_LogEntry_AONLoc_IndicationVSgMd, &_s10ALProtobuf30CLP_LogEntry_AONLoc_IndicationVSgMR);
  if (v48)
  {
    goto LABEL_21;
  }

LABEL_16:
  v40 = 0;
  return v40 & 1;
}

uint64_t specialized static CLP_LogEntry_AONLoc_Request.ResultOptions.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v5 = v4[8];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v8 = v4[9];
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 4);
  v11 = (a2 + v8);
  v12 = *(a2 + v8 + 4);
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (*v9 != *v11)
    {
      LOBYTE(v12) = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  v13 = v4[10];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 4);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 4);
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (*v14 != *v16)
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v18 = v4[11];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 4);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 4);
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }
  }

  else
  {
    if (*v19 != *v21)
    {
      LOBYTE(v22) = 1;
    }

    if (v22)
    {
      return 0;
    }
  }

  v23 = v4[12];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 4);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 4);
  if (v25)
  {
    if (!v27)
    {
      return 0;
    }
  }

  else
  {
    if (*v24 != *v26)
    {
      LOBYTE(v27) = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  v28 = v4;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementV0G4TypeO_Tt1g5Tm(*a1, *a2, lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement.BtType and conformance CLP_LogEntry_AONLoc_BtAdvertisement.BtType) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementV0G4TypeO_Tt1g5Tm(a1[1], a2[1], lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WifiRfBand and conformance CLP_LogEntry_PrivateData_WifiRfBand) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZs5Int32V_Tt1g5(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v29 = v28[13];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = *(a2 + v29 + 8);
  if (v31)
  {
    if (!v33)
    {
      return 0;
    }
  }

  else
  {
    if (*v30 != *v32)
    {
      LOBYTE(v33) = 1;
    }

    if (v33)
    {
      return 0;
    }
  }

  v34 = v28[14];
  v35 = (a1 + v34);
  v36 = *(a1 + v34 + 8);
  v37 = (a2 + v34);
  v38 = *(a2 + v34 + 8);
  if (v36)
  {
    if (!v38)
    {
      return 0;
    }
  }

  else
  {
    if (*v35 != *v37)
    {
      LOBYTE(v38) = 1;
    }

    if (v38)
    {
      return 0;
    }
  }

  v40 = v28[7];
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_AONLoc_Request.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gpsd_Request(0);
  v68 = *(v4 - 8);
  v69 = v4;
  v5 = *(v68 + 64);
  MEMORY[0x28223BE20](v4);
  v66 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf18Proto_Gpsd_RequestVSgMd, &_s10ALProtobuf18Proto_Gpsd_RequestVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v67 = &v64 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf18Proto_Gpsd_RequestVSg_ADtMd, &_s10ALProtobuf18Proto_Gpsd_RequestVSg_ADtMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v64 - v12;
  v14 = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (&v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVSgMd, &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = (&v64 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVSg_AFtMd, &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVSg_AFtMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v64 - v25;
  v27 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  v28 = v27[5];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 8);
  if (v30)
  {
    if (!v32)
    {
      goto LABEL_38;
    }
  }

  else
  {
    if (*v29 != *v31)
    {
      LOBYTE(v32) = 1;
    }

    if (v32)
    {
      goto LABEL_38;
    }
  }

  v33 = v27[6];
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 4);
  v36 = (a2 + v33);
  v37 = *(a2 + v33 + 4);
  if (v35)
  {
    if (!v37)
    {
      goto LABEL_38;
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
      goto LABEL_38;
    }
  }

  v38 = v27[7];
  v39 = (a1 + v38);
  v40 = *(a1 + v38 + 4);
  v41 = (a2 + v38);
  v42 = *(a2 + v38 + 4);
  if (v40)
  {
    if (!v42)
    {
      goto LABEL_38;
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
      goto LABEL_38;
    }
  }

  v43 = v27[8];
  v44 = *(a1 + v43);
  v45 = *(a2 + v43);
  if (v44 == 6)
  {
    if (v45 != 6)
    {
      goto LABEL_38;
    }
  }

  else if (v45 == 6 || qword_23D1B13E8[v44] != qword_23D1B13E8[v45])
  {
    goto LABEL_38;
  }

  v46 = v27[9];
  v64 = v27;
  v65 = v46;
  v47 = *(v23 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v46, v26, &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVSgMd, &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVSgMR);
  v48 = a2 + v65;
  v65 = v47;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v48, &v26[v47], &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVSgMd, &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVSgMR);
  v49 = *(v15 + 48);
  if (v49(v26, 1, v14) != 1)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v26, v22, &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVSgMd, &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVSgMR);
    if (v49(&v26[v65], 1, v14) != 1)
    {
      outlined init with take of CLP_LogEntry_AONLoc_Request.ResultOptions(&v26[v65], v18, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
      v53 = specialized static CLP_LogEntry_AONLoc_Request.ResultOptions.== infix(_:_:)(v22, v18);
      outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v18, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
      outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v22, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
      outlined destroy of Any?(v26, &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVSgMd, &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVSgMR);
      if ((v53 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_31;
    }

    outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v22, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
LABEL_29:
    v50 = &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVSg_AFtMd;
    v51 = &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVSg_AFtMR;
    v52 = v26;
LABEL_37:
    outlined destroy of Any?(v52, v50, v51);
    goto LABEL_38;
  }

  if (v49(&v26[v65], 1, v14) != 1)
  {
    goto LABEL_29;
  }

  outlined destroy of Any?(v26, &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVSgMd, &_s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVSgMR);
LABEL_31:
  v54 = v64[10];
  v55 = *(v10 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v54, v13, &_s10ALProtobuf18Proto_Gpsd_RequestVSgMd, &_s10ALProtobuf18Proto_Gpsd_RequestVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v54, &v13[v55], &_s10ALProtobuf18Proto_Gpsd_RequestVSgMd, &_s10ALProtobuf18Proto_Gpsd_RequestVSgMR);
  v56 = v69;
  v57 = *(v68 + 48);
  if (v57(v13, 1, v69) == 1)
  {
    if (v57(&v13[v55], 1, v56) == 1)
    {
      outlined destroy of Any?(v13, &_s10ALProtobuf18Proto_Gpsd_RequestVSgMd, &_s10ALProtobuf18Proto_Gpsd_RequestVSgMR);
LABEL_41:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v59 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v59 & 1;
    }

    goto LABEL_36;
  }

  v58 = v67;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v13, v67, &_s10ALProtobuf18Proto_Gpsd_RequestVSgMd, &_s10ALProtobuf18Proto_Gpsd_RequestVSgMR);
  if (v57(&v13[v55], 1, v56) == 1)
  {
    outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v58, type metadata accessor for Proto_Gpsd_Request);
LABEL_36:
    v50 = &_s10ALProtobuf18Proto_Gpsd_RequestVSg_ADtMd;
    v51 = &_s10ALProtobuf18Proto_Gpsd_RequestVSg_ADtMR;
    v52 = v13;
    goto LABEL_37;
  }

  v61 = &v13[v55];
  v62 = v66;
  outlined init with take of CLP_LogEntry_AONLoc_Request.ResultOptions(v61, v66, type metadata accessor for Proto_Gpsd_Request);
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type Proto_Gpsd_Request and conformance Proto_Gpsd_Request, type metadata accessor for Proto_Gpsd_Request);
  v63 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v62, type metadata accessor for Proto_Gpsd_Request);
  outlined destroy of CLP_LogEntry_AONLoc_Request.ResultOptions(v58, type metadata accessor for Proto_Gpsd_Request);
  outlined destroy of Any?(v13, &_s10ALProtobuf18Proto_Gpsd_RequestVSgMd, &_s10ALProtobuf18Proto_Gpsd_RequestVSgMR);
  if (v63)
  {
    goto LABEL_41;
  }

LABEL_38:
  v59 = 0;
  return v59 & 1;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request.TypeEnum and conformance CLP_LogEntry_AONLoc_Request.TypeEnum()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Request.TypeEnum and conformance CLP_LogEntry_AONLoc_Request.TypeEnum;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Request.TypeEnum and conformance CLP_LogEntry_AONLoc_Request.TypeEnum)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Request.TypeEnum and conformance CLP_LogEntry_AONLoc_Request.TypeEnum);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Request.TypeEnum and conformance CLP_LogEntry_AONLoc_Request.TypeEnum;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Request.TypeEnum and conformance CLP_LogEntry_AONLoc_Request.TypeEnum)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Request.TypeEnum and conformance CLP_LogEntry_AONLoc_Request.TypeEnum);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Request.TypeEnum and conformance CLP_LogEntry_AONLoc_Request.TypeEnum;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Request.TypeEnum and conformance CLP_LogEntry_AONLoc_Request.TypeEnum)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Request.TypeEnum and conformance CLP_LogEntry_AONLoc_Request.TypeEnum);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Request.TypeEnum and conformance CLP_LogEntry_AONLoc_Request.TypeEnum;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Request.TypeEnum and conformance CLP_LogEntry_AONLoc_Request.TypeEnum)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Request.TypeEnum and conformance CLP_LogEntry_AONLoc_Request.TypeEnum);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [CLP_LogEntry_AONLoc_Request.TypeEnum] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata completion function for CLP_LogEntry_AONLoc_Request()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UInt64?(319, &lazy cache variable for type metadata for UInt64?, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UInt64?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UInt64?(319, &lazy cache variable for type metadata for CLP_LogEntry_AONLoc_Request.TypeEnum?, &type metadata for CLP_LogEntry_AONLoc_Request.TypeEnum, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions?(319, &lazy cache variable for type metadata for CLP_LogEntry_AONLoc_Request.ResultOptions?, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions?(319, &lazy cache variable for type metadata for Proto_Gpsd_Request?, type metadata accessor for Proto_Gpsd_Request, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for CLP_LogEntry_AONLoc_Request.TypeEnum(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CLP_LogEntry_AONLoc_Request.TypeEnum(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void type metadata completion function for CLP_LogEntry_AONLoc_Request.ResultOptions()
{
  type metadata accessor for UInt64?(319, &lazy cache variable for type metadata for [CLP_LogEntry_AONLoc_BtAdvertisement.BtType], &type metadata for CLP_LogEntry_AONLoc_BtAdvertisement.BtType, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UInt64?(319, &lazy cache variable for type metadata for [CLP_LogEntry_PrivateData_WifiRfBand], &type metadata for CLP_LogEntry_PrivateData_WifiRfBand, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UInt64?(319, &lazy cache variable for type metadata for [Int32], MEMORY[0x277D849A8], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UnknownStorage();
        if (v3 <= 0x3F)
        {
          type metadata accessor for UInt64?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for UInt64?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              type metadata accessor for UInt64?(319, &lazy cache variable for type metadata for Float?, MEMORY[0x277D83A90], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                type metadata accessor for UInt64?(319, &lazy cache variable for type metadata for Int32?, MEMORY[0x277D849A8], MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for UInt64?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_AONLoc_Response()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UInt64?(319, &lazy cache variable for type metadata for CLP_LogEntry_AONLoc_Request.TypeEnum?, &type metadata for CLP_LogEntry_AONLoc_Request.TypeEnum, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UInt64?(319, &lazy cache variable for type metadata for UInt64?, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UInt64?(319, &lazy cache variable for type metadata for Proto_Gnss_Result?, &type metadata for Proto_Gnss_Result, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for UInt64?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata completion function for CLP_LogEntry_AONLoc_BtIndication(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions?(319, a4, a5, MEMORY[0x277D83940]);
  if (v5 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v6 <= 0x3F)
    {
      type metadata accessor for UInt64?(319, &lazy cache variable for type metadata for UInt64?, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
      if (v7 <= 0x3F)
      {
        type metadata accessor for UInt64?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata completion function for CLP_LogEntry_AONLoc_Indication()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CLP_LogEntry_AONLoc_Indication._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for CLP_LogEntry_AONLoc_LogEntry()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions?(319, &lazy cache variable for type metadata for CLP_LogEntry_AONLoc_Request?, type metadata accessor for CLP_LogEntry_AONLoc_Request, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions?(319, &lazy cache variable for type metadata for CLP_LogEntry_AONLoc_Indication?, type metadata accessor for CLP_LogEntry_AONLoc_Indication, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_AONLoc_Indication._StorageClass()
{
  type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions?(319, &lazy cache variable for type metadata for Proto_Gpsd_Response?, type metadata accessor for Proto_Gpsd_Response, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v11 = *(v0 - 8) + 64;
    type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions?(319, &lazy cache variable for type metadata for Proto_Gpsd_Indication?, type metadata accessor for Proto_Gpsd_Indication, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v12 = *(v2 - 8) + 64;
      type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions?(319, &lazy cache variable for type metadata for CLP_LogEntry_AONLoc_Response?, type metadata accessor for CLP_LogEntry_AONLoc_Response, MEMORY[0x277D83D88]);
      if (v5 <= 0x3F)
      {
        v6 = *(v4 - 8) + 64;
        type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions?(319, &lazy cache variable for type metadata for CLP_LogEntry_AONLoc_WiFiIndication?, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication, MEMORY[0x277D83D88]);
        if (v8 <= 0x3F)
        {
          v13 = *(v7 - 8) + 64;
          type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions?(319, &lazy cache variable for type metadata for CLP_LogEntry_AONLoc_BtIndication?, type metadata accessor for CLP_LogEntry_AONLoc_BtIndication, MEMORY[0x277D83D88]);
          if (v10 <= 0x3F)
          {
            v14 = *(v9 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Result and conformance Proto_Gnss_Result()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Result and conformance Proto_Gnss_Result;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Result and conformance Proto_Gnss_Result)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Result and conformance Proto_Gnss_Result);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Result and conformance Proto_Gnss_Result;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Result and conformance Proto_Gnss_Result)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Result and conformance Proto_Gnss_Result);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Result and conformance Proto_Gnss_Result;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Result and conformance Proto_Gnss_Result)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Result and conformance Proto_Gnss_Result);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Result and conformance Proto_Gnss_Result;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Result and conformance Proto_Gnss_Result)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Result and conformance Proto_Gnss_Result);
  }

  return result;
}

uint64_t ALBtAdvertisement.BtType.init(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ALBtAdvertisement.BtType();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_278BC48C0 + a1);

  return v5(a2, v6, v4);
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.BtType.init(_:)(uint64_t a1)
{
  v2 = type metadata accessor for ALBtAdvertisement.BtType();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 88))(a1, v2);
  if (v4 == *MEMORY[0x277CE48E0])
  {
    return 0;
  }

  if (v4 == *MEMORY[0x277CE48D0])
  {
    return 1;
  }

  if (v4 != *MEMORY[0x277CE48D8])
  {
    (*(v3 + 8))(a1, v2);
    return 0;
  }

  return 2;
}

uint64_t ALBtAdvertisement.toPb(pb:)()
{
  v0 = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v49 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ALDataTypes16ALBtAdvInfoType7VSgMd, &_s11ALDataTypes16ALBtAdvInfoType7VSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v47 - v5;
  v50 = type metadata accessor for ALBtAdvInfoType7();
  v7 = *(v50 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v50);
  v48 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ALDataTypes17ALBtAdvertisementV6BtTypeOSgMd, &_s11ALDataTypes17ALBtAdvertisementV6BtTypeOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v47 - v12;
  v14 = type metadata accessor for ALBtAdvertisement.BtType();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v47 - v21;
  v23 = MEMORY[0x23EED9EB0](v20);
  if ((v24 & 1) == 0)
  {
    v23 = CLP_LogEntry_AONLoc_BtAdvertisement.machContTimeNs.setter(v23);
  }

  v25 = MEMORY[0x23EED9ED0](v23);
  if ((v26 & 1) == 0)
  {
    v25 = CLP_LogEntry_AONLoc_BtAdvertisement.mac.setter(v25);
  }

  v27 = MEMORY[0x23EED9F20](v25);
  if ((v27 & 0x100000000) == 0)
  {
    CLP_LogEntry_AONLoc_BtAdvertisement.rssiDb.setter(v27);
  }

  v28 = ALBtAdvertisement._antennaIndex.getter();
  if ((v28 & 0x100000000) == 0)
  {
    v28 = CLP_LogEntry_AONLoc_BtAdvertisement.antennaIndex.setter(v28);
  }

  v29 = MEMORY[0x23EED9F60](v28);
  if (v30 >> 60 != 15)
  {
    v29 = CLP_LogEntry_AONLoc_BtAdvertisement.payload.setter(v29, v30);
  }

  v31 = MEMORY[0x23EED9F40](v29);
  if ((v31 & 0x100000000) == 0)
  {
    CLP_LogEntry_AONLoc_BtAdvertisement.channel.setter(v31);
  }

  v32 = ALBtAdvertisement._productID.getter();
  if ((v32 & 0x100000000) == 0)
  {
    v32 = CLP_LogEntry_AONLoc_BtAdvertisement.productID.setter(v32);
  }

  v33 = MEMORY[0x23EED9E10](v32);
  if (v34)
  {
    v33 = CLP_LogEntry_AONLoc_BtAdvertisement.identifier.setter(v33, v34);
  }

  v35 = MEMORY[0x23EED9E50](v33);
  if (v36)
  {
    v35 = CLP_LogEntry_AONLoc_BtAdvertisement.idsDeviceID.setter(v35, v36);
  }

  v37 = MEMORY[0x23EED9E30](v35);
  if ((v38 & 1) == 0)
  {
    v37 = CLP_LogEntry_AONLoc_BtAdvertisement.deviceFlags.setter(v37);
  }

  v39 = MEMORY[0x23EED9E90](v37);
  if ((v40 & 1) == 0)
  {
    v39 = CLP_LogEntry_AONLoc_BtAdvertisement.discoveryFlags.setter(v39);
  }

  MEMORY[0x23EED9EF0](v39);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of Any?(v13, &_s11ALDataTypes17ALBtAdvertisementV6BtTypeOSgMd, &_s11ALDataTypes17ALBtAdvertisementV6BtTypeOSgMR);
    goto LABEL_32;
  }

  (*(v15 + 32))(v22, v13, v14);
  (*(v15 + 16))(v19, v22, v14);
  v41 = (*(v15 + 88))(v19, v14);
  if (v41 != *MEMORY[0x277CE48E0])
  {
    if (v41 == *MEMORY[0x277CE48D0])
    {
      v42 = 1;
      goto LABEL_31;
    }

    if (v41 == *MEMORY[0x277CE48D8])
    {
      v42 = 2;
      goto LABEL_31;
    }

    (*(v15 + 8))(v19, v14);
  }

  v42 = 0;
LABEL_31:
  CLP_LogEntry_AONLoc_BtAdvertisement.btType.setter(v42);
  (*(v15 + 8))(v22, v14);
LABEL_32:
  ALBtAdvertisement._type7Info.getter();
  v43 = v50;
  if ((*(v7 + 48))(v6, 1, v50) == 1)
  {
    return outlined destroy of Any?(v6, &_s11ALDataTypes16ALBtAdvInfoType7VSgMd, &_s11ALDataTypes16ALBtAdvInfoType7VSgMR);
  }

  v45 = v48;
  (*(v7 + 32))(v48, v6, v43);
  v46 = v49;
  ALBtAdvInfoType7.toPb()(v49);
  CLP_LogEntry_AONLoc_BtAdvertisement.type7Info.setter(v46);
  return (*(v7 + 8))(v45, v43);
}

uint64_t ALBtAdvInfoType7.toPb()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ALDataTypes16ALBtAdvInfoType7V9PlacementOSgMd, &_s11ALDataTypes16ALBtAdvInfoType7V9PlacementOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23 - v4;
  v6 = type metadata accessor for ALBtAdvInfoType7.Placement();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  v14 = CLP_LogEntry_AONLoc_Type7Info.init()(a1);
  v15 = MEMORY[0x23EED9C10](v14);
  if (v15 != 2)
  {
    v15 = CLP_LogEntry_AONLoc_Type7Info.isSameAccount.setter(v15 & 1);
  }

  v16 = MEMORY[0x23EED9C60](v15);
  if (v16 != 2)
  {
    v16 = CLP_LogEntry_AONLoc_Type7Info.isFamily.setter(v16 & 1);
  }

  v17 = MEMORY[0x23EED9BF0](v16);
  if (v17 != 2)
  {
    CLP_LogEntry_AONLoc_Type7Info.isSharedHome.setter(v17 & 1);
  }

  isLeft = ALBtAdvInfoType7._isLeftBud.getter();
  if (isLeft != 2)
  {
    isLeft = CLP_LogEntry_AONLoc_Type7Info.isLeftBud.setter(isLeft & 1);
  }

  v19 = MEMORY[0x23EED9C30](isLeft);
  if (v19 != 2)
  {
    CLP_LogEntry_AONLoc_Type7Info.isCase.setter(v19 & 1);
  }

  ALBtAdvInfoType7._placement.getter();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return outlined destroy of Any?(v5, &_s11ALDataTypes16ALBtAdvInfoType7V9PlacementOSgMd, &_s11ALDataTypes16ALBtAdvInfoType7V9PlacementOSgMR);
  }

  (*(v7 + 32))(v13, v5, v6);
  (*(v7 + 16))(v11, v13, v6);
  v21 = (*(v7 + 88))(v11, v6);
  if (v21 != *MEMORY[0x277CE48B0])
  {
    if (v21 == *MEMORY[0x277CE4888])
    {
      v22 = 1;
      goto LABEL_29;
    }

    if (v21 == *MEMORY[0x277CE48C0])
    {
      v22 = 2;
      goto LABEL_29;
    }

    if (v21 == *MEMORY[0x277CE4898])
    {
      v22 = 3;
      goto LABEL_29;
    }

    if (v21 == *MEMORY[0x277CE4890])
    {
      v22 = 4;
      goto LABEL_29;
    }

    if (v21 == *MEMORY[0x277CE48A0])
    {
      v22 = 5;
      goto LABEL_29;
    }

    if (v21 == *MEMORY[0x277CE48A8])
    {
      v22 = 6;
      goto LABEL_29;
    }

    if (v21 == *MEMORY[0x277CE48B8])
    {
      v22 = 7;
      goto LABEL_29;
    }

    (*(v7 + 8))(v11, v6);
  }

  v22 = 0;
LABEL_29:
  CLP_LogEntry_AONLoc_Type7Info.placement.setter(v22);
  return (*(v7 + 8))(v13, v6);
}

uint64_t ALBtAdvertisement.toPb()@<X0>(uint64_t a1@<X8>)
{
  CLP_LogEntry_AONLoc_BtAdvertisement.init()(a1);

  return ALBtAdvertisement.toPb(pb:)();
}

uint64_t ALBtAdvertisement.init(data:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for BinaryDecodingOptions();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - v12;
  v17 = a1;
  v18 = a2;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v2)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  outlined init with copy of CLP_LogEntry_AONLoc_BtAdvertisement(v13, v11, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);
  ALBtAdvertisement.init(pb:)(v11);
  outlined consume of Data._Representation(a1, a2);
  return outlined destroy of CLP_LogEntry_AONLoc_BtAdvertisement(v13, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);
}

uint64_t ALBtNotification.toPb()@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0);
  v47 = *(v3 - 8);
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for ALBtAdvertisement();
  v46 = *(v48 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ALDataTypes11ALTimeStampVSgMd, &_s11ALDataTypes11ALTimeStampVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v42 - v16;
  v18 = type metadata accessor for ALTimeStamp();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = CLP_LogEntry_AONLoc_BtNotification.init()(a1);
  MEMORY[0x23EED9CC0](v23);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v24 = outlined destroy of Any?(v17, &_s11ALDataTypes11ALTimeStampVSgMd, &_s11ALDataTypes11ALTimeStampVSgMR);
  }

  else
  {
    (*(v19 + 32))(v22, v17, v18);
    ALTimeStamp.toPb()(v13);
    CLP_LogEntry_AONLoc_BtNotification.eventReceiptTime.setter(v13);
    v24 = (*(v19 + 8))(v22, v18);
  }

  v25 = MEMORY[0x23EED9D10](v24);
  v26 = *(v25 + 16);
  if (v26)
  {
    v42[1] = v1;
    v43 = a1;
    v27 = *a1;
    v28 = v46 + 16;
    v29 = *(v46 + 16);
    v30 = *(v46 + 80);
    v44 = v25;
    v31 = v25 + ((v30 + 32) & ~v30);
    v45 = *(v46 + 72);
    v46 = v29;
    v32 = (v28 - 8);
    v33 = v48;
    do
    {
      (v46)(v9, v31, v33);
      CLP_LogEntry_AONLoc_BtAdvertisement.init()(v6);
      ALBtAdvertisement.toPb(pb:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27[2] + 1, 1, v27, &_ss23_ContiguousArrayStorageCy10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementVGMd, &_ss23_ContiguousArrayStorageCy10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementVGMR, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);
      }

      v35 = v27[2];
      v34 = v27[3];
      if (v35 >= v34 >> 1)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v34 > 1, v35 + 1, 1, v27, &_ss23_ContiguousArrayStorageCy10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementVGMd, &_ss23_ContiguousArrayStorageCy10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementVGMR, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);
      }

      v33 = v48;
      (*v32)(v9, v48);
      v27[2] = v35 + 1;
      outlined init with take of CLP_LogEntry_AONLoc_BtAdvertisement(v6, v27 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v35, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);
      v31 += v45;
      --v26;
    }

    while (v26);

    a1 = v43;
    *v43 = v27;
  }

  else
  {
  }

  v36 = ALBtNotification._simulated.getter();
  if (v36 != 2)
  {
    v36 = CLP_LogEntry_AONLoc_BtNotification.isSimulated.setter(v36 & 1);
  }

  v37 = MEMORY[0x23EED9D20](v36);
  if (v37 != 2)
  {
    v37 = CLP_LogEntry_AONLoc_BtNotification.isApOn.setter(v37 & 1);
  }

  v38 = MEMORY[0x23EED9CE0](v37);
  if (v38 != 2)
  {
    CLP_LogEntry_AONLoc_BtNotification.isScreenOn.setter(v38 & 1);
  }

  type metadata accessor for ALProtobufUtil();
  v39 = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
  v40 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtNotification and conformance CLP_LogEntry_AONLoc_BtNotification, type metadata accessor for CLP_LogEntry_AONLoc_BtNotification);
  return ALFWiFiScanResultsRequester.query(options:callback:start:end:)(a1, v39, v40);
}

uint64_t ALBtNotifications.toPb()@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v44 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ALBtNotification();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_AONLoc_BtIndication(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v40 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = (v35 - v16);
  CLP_LogEntry_AONLoc_Indication.init()(a1);
  CLP_LogEntry_AONLoc_Indication.type.setter(6);
  CLP_LogEntry_AONLoc_BtIndication.init()(v17);
  v18 = ALBtNotifications.results.getter();
  v19 = *(v18 + 16);
  if (v19)
  {
    v37 = v1;
    v38 = a1;
    v39 = v2;
    v35[1] = v18;
    v36 = v17;
    v20 = *v17;
    v22 = *(v8 + 16);
    v21 = v8 + 16;
    v23 = v18 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v41 = *(v21 + 56);
    v42 = v22;
    v24 = (v21 - 8);
    v25 = v21;
    v26 = v44;
    do
    {
      v27 = v25;
      v42(v11, v23, v7);
      ALBtNotification.toPb()(v26);
      (*v24)(v11, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20, &_ss23_ContiguousArrayStorageCy10ALProtobuf34CLP_LogEntry_AONLoc_BtNotificationVGMd, &_ss23_ContiguousArrayStorageCy10ALProtobuf34CLP_LogEntry_AONLoc_BtNotificationVGMR, type metadata accessor for CLP_LogEntry_AONLoc_BtNotification);
      }

      v29 = v20[2];
      v28 = v20[3];
      if (v29 >= v28 >> 1)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v28 > 1, v29 + 1, 1, v20, &_ss23_ContiguousArrayStorageCy10ALProtobuf34CLP_LogEntry_AONLoc_BtNotificationVGMd, &_ss23_ContiguousArrayStorageCy10ALProtobuf34CLP_LogEntry_AONLoc_BtNotificationVGMR, type metadata accessor for CLP_LogEntry_AONLoc_BtNotification);
      }

      v20[2] = v29 + 1;
      v26 = v44;
      outlined init with take of CLP_LogEntry_AONLoc_BtAdvertisement(v44, v20 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v29, type metadata accessor for CLP_LogEntry_AONLoc_BtNotification);
      v23 += v41;
      --v19;
      v25 = v27;
    }

    while (v19);

    v17 = v36;
    *v36 = v20;
    a1 = v38;
  }

  else
  {
  }

  v30 = ALBtNotifications.isLastBatch.getter();
  CLP_LogEntry_AONLoc_BtIndication.isLastBatch.setter(v30 & 1);
  v31 = v40;
  outlined init with copy of CLP_LogEntry_AONLoc_BtAdvertisement(v17, v40, type metadata accessor for CLP_LogEntry_AONLoc_BtIndication);
  CLP_LogEntry_AONLoc_Indication.btIndication.setter(v31);
  type metadata accessor for ALProtobufUtil();
  v32 = type metadata accessor for CLP_LogEntry_AONLoc_Indication(0);
  v33 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Indication and conformance CLP_LogEntry_AONLoc_Indication, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
  ALFWiFiScanResultsRequester.query(options:callback:start:end:)(a1, v32, v33);
  return outlined destroy of CLP_LogEntry_AONLoc_BtAdvertisement(v17, type metadata accessor for CLP_LogEntry_AONLoc_BtIndication);
}

uint64_t ALBtNotifications.serializedData()()
{
  v2 = v1;
  v3 = type metadata accessor for ALBtNotifications();
  v43 = *(v3 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v35[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for CLP_LogEntry_AONLoc_Indication(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v35[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  ALBtNotifications.toPb()(v15);
  if (!v1)
  {
    v38 = v0;
    v39 = v6;
    v16 = v43;
    v40 = v11;
    v41 = v7;
    v42 = v8;
    lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Indication and conformance CLP_LogEntry_AONLoc_Indication, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
    v2 = Message.serializedData(partial:)();
    v18 = v17;
    outlined destroy of CLP_LogEntry_AONLoc_BtAdvertisement(v15, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
    v37 = 0;
    v20 = v40;
    corelog.getter(v40);
    v21 = v16;
    v22 = v20;
    v23 = v39;
    v24 = v3;
    (*(v21 + 16))(v39, v38, v3);
    outlined copy of Data._Representation(v2, v18);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    outlined consume of Data._Representation(v2, v18);
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v44 = v38;
      *v27 = 136446466;
      v36 = v26;
      v28 = ALBtNotifications.description()();
      (*(v21 + 8))(v23, v24);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28._countAndFlagsBits, v28._object, &v44);

      *(v27 + 4) = v29;
      *(v27 + 12) = 2082;
      outlined copy of Data._Representation(v2, v18);
      v30 = Data.description.getter();
      v32 = v31;
      outlined consume of Data._Representation(v2, v18);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v44);

      *(v27 + 14) = v33;
      _os_log_impl(&dword_23CEAD000, v25, v36, "#BT,serializedData,notif,%{public}s,data,%{public}s", v27, 0x16u);
      v34 = v38;
      swift_arrayDestroy();
      MEMORY[0x23EEDAF70](v34, -1, -1);
      MEMORY[0x23EEDAF70](v27, -1, -1);
    }

    else
    {

      (*(v21 + 8))(v23, v24);
    }

    (*(v42 + 8))(v22, v41);
  }

  return v2;
}

uint64_t static ALBtNotifications.serializedIndications(results:isLastBatch:)()
{
  v0 = type metadata accessor for ALBtNotifications();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  ALBtNotifications.init(results:isLastBatch:)();
  v5 = ALBtNotifications.serializedData()();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t ALBtAdvInfoType7.Placement.init(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ALBtAdvInfoType7.Placement();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_278BC48D8 + a1);

  return v5(a2, v6, v4);
}

uint64_t CLP_LogEntry_AONLoc_Type7Info.Placement.init(_:)(uint64_t a1)
{
  v2 = type metadata accessor for ALBtAdvInfoType7.Placement();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 88))(a1, v2);
  if (v4 == *MEMORY[0x277CE48B0])
  {
    return 0;
  }

  if (v4 == *MEMORY[0x277CE4888])
  {
    return 1;
  }

  if (v4 == *MEMORY[0x277CE48C0])
  {
    return 2;
  }

  if (v4 == *MEMORY[0x277CE4898])
  {
    return 3;
  }

  if (v4 == *MEMORY[0x277CE4890])
  {
    return 4;
  }

  if (v4 == *MEMORY[0x277CE48A0])
  {
    return 5;
  }

  if (v4 == *MEMORY[0x277CE48A8])
  {
    return 6;
  }

  if (v4 != *MEMORY[0x277CE48B8])
  {
    (*(v3 + 8))(a1, v2);
    return 0;
  }

  return 7;
}

uint64_t outlined init with take of CLP_LogEntry_AONLoc_BtAdvertisement(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GlonassSlotSource(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotSource and conformance CLP_LogEntry_PrivateData_GlonassSlotSource();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance CLP_LogEntry_PrivateData_GlonassSlotSource@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Proto_Gpsd_LtlInfoType.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CLP_LogEntry_PrivateData_GlonassSlotSource@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Proto_Gpsd_LtlInfoType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_SatelliteSystem(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SatelliteSystem and conformance CLP_LogEntry_PrivateData_SatelliteSystem();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Enum.init(rawValue:) in conformance CLP_LogEntry_PrivateData_SatelliteSystem@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CLP_LogEntry_PrivateData_SatelliteSystem.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CLP_LogEntry_PrivateData_SatelliteSystem@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CLP_LogEntry_PrivateData_SatelliteSystem.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_Band(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_Band and conformance CLP_LogEntry_PrivateData_Band();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance CLP_LogEntry_PrivateData_Band@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CLP_LogEntry_PrivateData_Band.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CLP_LogEntry_PrivateData_Band@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CLP_LogEntry_PrivateData_Band.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_FullSvTimeSource(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_FullSvTimeSource and conformance CLP_LogEntry_PrivateData_FullSvTimeSource();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance CLP_LogEntry_PrivateData_FullSvTimeSource@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Proto_Gnss_GnssContent.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CLP_LogEntry_PrivateData_FullSvTimeSource@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Proto_Gnss_GnssContent.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MeasurementDetectionMethod(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MeasurementDetectionMethod and conformance CLP_LogEntry_PrivateData_MeasurementDetectionMethod();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MultipathIndicator(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MultipathIndicator and conformance CLP_LogEntry_PrivateData_MultipathIndicator();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_SvPositionSource(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvPositionSource and conformance CLP_LogEntry_PrivateData_SvPositionSource();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance CLP_LogEntry_PrivateData_SvPositionSource@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Proto_Gnss_TimeQuality.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CLP_LogEntry_PrivateData_SvPositionSource@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Proto_Gnss_TimeQuality.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_SvHealthIndication(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication();

  return MEMORY[0x28217E238](a1, a2, v4);
}

ALProtobuf::CLP_LogEntry_PrivateData_IonosphericCorrectionSource_optional __swiftcall CLP_LogEntry_PrivateData_IonosphericCorrectionSource.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_IonosphericCorrectionSource(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_IonosphericCorrectionSource and conformance CLP_LogEntry_PrivateData_IonosphericCorrectionSource();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance CLP_LogEntry_PrivateData_IonosphericCorrectionSource@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t *protocol witness for RawRepresentable.init(rawValue:) in conformance CLP_LogEntry_PrivateData_IonosphericCorrectionSource@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge and conformance CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated and conformance CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_SvReferencePoint(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvReferencePoint and conformance CLP_LogEntry_PrivateData_SvReferencePoint();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CLP_LogEntry_PrivateData_SvReferencePoint@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CLP_LogEntry_PrivateData_SvReferencePoint.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_GlonassSlotInfo.slotNum.setter(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GlonassSlotInfo.slotNum.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0) + 20);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_GlonassSlotInfo.clearSlotNum()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_GlonassSlotInfo.slotSource.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0) + 24));
  if (v1 == 5)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_GlonassSlotInfo.slotSource.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GlonassSlotInfo.slotSource.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GlonassSlotInfo.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0);
  v3 = a1 + *(result + 20);
  *v3 = 0;
  *(v3 + 4) = 1;
  *(a1 + *(result + 24)) = 5;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_GlonassSlotInfo.slotNum.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t CLP_LogEntry_PrivateData_GlonassId.freqNum.setter(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GlonassId.freqNum.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0) + 20);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_GlonassId.clearFreqNum()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_GlonassId.slotInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 24), v6, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 4) = 1;
  *(a1 + *(v8 + 24)) = 5;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GlonassId.slotInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_PrivateData_GlonassId.slotInfo.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + *(v9 + 20);
    *v17 = 0;
    *(v17 + 4) = 1;
    *(v14 + *(v9 + 24)) = 5;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo);
  }

  return CLP_LogEntry_PrivateData_GlonassId.slotInfo.modify;
}

uint64_t CLP_LogEntry_PrivateData_ConstellationId.gpsPrn.setter(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ConstellationId.gpsPrn.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 20);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_ConstellationId.clearGpsPrn()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_ConstellationId.glonassID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 24), v6, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = *(v8 + 24);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_ConstellationId.glonassID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_PrivateData_ConstellationId.glonassID.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + *(v9 + 20);
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = *(v9 + 24);
    v19 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0);
    (*(*(v19 - 8) + 56))(v14 + v18, 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);
  }

  return CLP_LogEntry_PrivateData_ConstellationId.glonassID.modify;
}

BOOL CLP_LogEntry_PrivateData_GlonassId.hasSlotInfo.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + *(v13 + 24), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  outlined destroy of Any?(v12, a1, a2);
  return v15;
}

uint64_t CLP_LogEntry_PrivateData_GlonassId.clearSlotInfo()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 24);
  outlined destroy of Any?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t CLP_LogEntry_PrivateData_ConstellationId.beidouRangingCode.getter()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 28));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_ConstellationId.beidouRangingCode.setter(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ConstellationId.beidouRangingCode.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 28);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_ConstellationId.clearBeidouRangingCode()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_ConstellationId.galileoSpreadingCode.getter()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 32));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_ConstellationId.galileoSpreadingCode.setter(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ConstellationId.galileoSpreadingCode.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 32);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_ConstellationId.clearGalileoSpreadingCode()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_ConstellationId.qzssPrn.getter()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 36));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_ConstellationId.qzssPrn.setter(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ConstellationId.qzssPrn.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 36);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_ConstellationId.clearQzssPrn()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_ConstellationId.sbasPrn.getter()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 40));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_ConstellationId.sbasPrn.setter(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ConstellationId.sbasPrn.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 40);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_ConstellationId.clearSbasPrn()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_ConstellationId.navicPrn.getter()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 44));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_ConstellationId.navicPrn.setter(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ConstellationId.navicPrn.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 44);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_ConstellationId.clearNavicPrn()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 44);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_ConstellationId.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = v2[6];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0);
  result = (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v7 = a1 + v2[7];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1 + v2[8];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a1 + v2[9];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + v2[10];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v2[11];
  *v11 = 0;
  *(v11 + 4) = 1;
  return result;
}

uint64_t variable initialization expression of CLP_LogEntry_PrivateData_GlonassId._slotInfo@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t CLP_LogEntry_PrivateData_SvId.system.setter(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_SvId.system.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvId(0) + 20);
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
  return CLP_LogEntry_AONLoc_Request.ResultOptions.minimalRssiDb.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_SvId.clearSystem()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SvId(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_SvId.constelID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 24), v6, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = v8[6];
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = a1 + v8[7];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1 + v8[8];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a1 + v8[9];
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a1 + v8[10];
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = a1 + v8[11];
  *v17 = 0;
  *(v17 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_SvId.constelID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvId(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_PrivateData_SvId.constelID.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvId(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v9[6];
    v19 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0);
    (*(*(v19 - 8) + 56))(v14 + v18, 1, 1, v19);
    v20 = v14 + v9[7];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v14 + v9[8];
    *v21 = 0;
    *(v21 + 4) = 1;
    v22 = v14 + v9[9];
    *v22 = 0;
    *(v22 + 4) = 1;
    v23 = v14 + v9[10];
    *v23 = 0;
    *(v23 + 4) = 1;
    v24 = v14 + v9[11];
    *v24 = 0;
    *(v24 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId);
  }

  return CLP_LogEntry_PrivateData_SvId.constelID.modify;
}

uint64_t CLP_LogEntry_PrivateData_GlonassId.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  UnknownStorage.init()();
  v6 = a1(0);
  v7 = a3 + *(v6 + 20);
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = *(v6 + 24);
  v9 = a2(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a3 + v8, 1, 1, v9);
}

uint64_t CLP_LogEntry_PrivateData_GpsL1SyncState.codeLock.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GpsL1SyncState.codeLock.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GpsL1SyncState.navBit.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GpsL1SyncState.navBit.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GpsL1SyncState.subframe.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GpsL1SyncState.subframe.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GpsL1SyncState.towDecoded.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GpsL1SyncState.towDecoded.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GpsL2CSyncState.cmCodeLock.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GpsL2CSyncState.cmCodeLock.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GpsL2CSyncState.clCodeLock.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GpsL2CSyncState.clCodeLock.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GpsL2CSyncState.cNavBit.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GpsL2CSyncState.cNavBit.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GpsL2CSyncState.cNavFrame.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GpsL2CSyncState.cNavFrame.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GpsL2CSyncState.towDecoded.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GpsL2CSyncState.towDecoded.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GpsL5SyncState.codeLock.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GpsL5SyncState.codeLock.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GpsL5SyncState.cNavBit.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GpsL5SyncState.cNavBit.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GpsL5SyncState.cNavFrame.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GpsL5SyncState.cNavFrame.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GpsL5SyncState.towDecoded.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GpsL5SyncState.towDecoded.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

int *CLP_LogEntry_PrivateData_GpsL1SyncState.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = a1(0);
  *(a2 + result[5]) = 2;
  *(a2 + result[6]) = 2;
  *(a2 + result[7]) = 2;
  *(a2 + result[8]) = 2;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_GlonassL1fSyncState.codeLock.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GlonassL1fSyncState.codeLock.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GlonassL1fSyncState.symbol.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GlonassL1fSyncState.symbol.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GlonassL1fSyncState.navBit.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GlonassL1fSyncState.navBit.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GlonassL1fSyncState.string.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GlonassL1fSyncState.string.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GlonassL1fSyncState.todDecoded.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GlonassL1fSyncState.todDecoded.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

int *CLP_LogEntry_PrivateData_GpsL2CSyncState.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = a1(0);
  *(a2 + result[5]) = 2;
  *(a2 + result[6]) = 2;
  *(a2 + result[7]) = 2;
  *(a2 + result[8]) = 2;
  *(a2 + result[9]) = 2;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_BeidouB1SyncState.codeLock.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_BeidouB1SyncState.codeLock.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_BeidouB1SyncState.navBit.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_BeidouB1SyncState.navBit.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_BeidouB1SyncState.subframe.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_BeidouB1SyncState.subframe.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_BeidouB1SyncState.towDecoded.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_BeidouB1SyncState.towDecoded.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_BeidouB2SyncState.codeLock.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_BeidouB2SyncState.codeLock.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_BeidouB2SyncState.navBit.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_BeidouB2SyncState.navBit.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_BeidouB2SyncState.subframe.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_BeidouB2SyncState.subframe.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_BeidouB2SyncState.towDecoded.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_BeidouB2SyncState.towDecoded.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GalileoE1SyncState.e1BcCodeLock.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GalileoE1SyncState.e1BcCodeLock.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GalileoE1SyncState.e1CCodeLock.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GalileoE1SyncState.e1CCodeLock.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GalileoE1SyncState.e1BPage.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GalileoE1SyncState.e1BPage.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GalileoE1SyncState.towDecoded.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GalileoE1SyncState.towDecoded.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GalileoE5SyncState.e5BPrimCodeLock.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GalileoE5SyncState.e5BPrimCodeLock.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GalileoE5SyncState.e5APrimCodeLock.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GalileoE5SyncState.e5APrimCodeLock.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GalileoE5SyncState.e5AltBocPrimCodeLock.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GalileoE5SyncState.e5AltBocPrimCodeLock.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GalileoE5SyncState.e5BDataBit.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GalileoE5SyncState.e5BDataBit.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GalileoE5SyncState.e5ADataBit.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GalileoE5SyncState.e5ADataBit.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GalileoE5SyncState.e5BSecCodeLock.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GalileoE5SyncState.e5BSecCodeLock.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0) + 40);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GalileoE5SyncState.e5ASecCodeLock.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GalileoE5SyncState.e5ASecCodeLock.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0) + 44);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GalileoE5SyncState.e5BPageSync.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GalileoE5SyncState.e5BPageSync.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0) + 48);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GalileoE5SyncState.e5APageSync.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GalileoE5SyncState.e5APageSync.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0) + 52);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_GalileoE5SyncState.towDecoded.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GalileoE5SyncState.towDecoded.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0) + 56);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

int *CLP_LogEntry_PrivateData_GalileoE5SyncState.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  *(a1 + result[5]) = 2;
  *(a1 + result[6]) = 2;
  *(a1 + result[7]) = 2;
  *(a1 + result[8]) = 2;
  *(a1 + result[9]) = 2;
  *(a1 + result[10]) = 2;
  *(a1 + result[11]) = 2;
  *(a1 + result[12]) = 2;
  *(a1 + result[13]) = 2;
  *(a1 + result[14]) = 2;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_SbasL1SyncState.codeLock.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_SbasL1SyncState.codeLock.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_SbasL1SyncState.symbol.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_SbasL1SyncState.symbol.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_SbasL1SyncState.message.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_SbasL1SyncState.message.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

int *CLP_LogEntry_PrivateData_SbasL1SyncState.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
  *(a1 + result[5]) = 2;
  *(a1 + result[6]) = 2;
  *(a1 + result[7]) = 2;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_SyncState.band.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  swift_beginAccess();
  if (*(v1 + 16) == 13)
  {
    return 0;
  }

  else
  {
    return *(v1 + 16);
  }
}

uint64_t CLP_LogEntry_PrivateData_SyncState.band.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    CLP_LogEntry_PrivateData_SyncState._StorageClass.init(copying:)(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 16) = a1;
  return result;
}

void (*CLP_LogEntry_PrivateData_SyncState.band.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (v7 == 13)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return CLP_LogEntry_PrivateData_SyncState.band.modify;
}

void CLP_LogEntry_PrivateData_SyncState.band.modify(uint64_t *a1)
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
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    CLP_LogEntry_PrivateData_SyncState._StorageClass.init(copying:)(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 16) = v2;

  free(v1);
}

BOOL CLP_LogEntry_PrivateData_SyncState.hasBand.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  swift_beginAccess();
  return *(v1 + 16) != 13;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_SyncState.clearBand()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    v10 = v5;
    v5 = v9;
    CLP_LogEntry_PrivateData_SyncState._StorageClass.init(copying:)(v10);
    *(v1 + v2) = v9;
  }

  swift_beginAccess();
  *(v5 + 16) = 13;
}

uint64_t CLP_LogEntry_PrivateData_SyncState.gpsL1.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL1;
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

uint64_t CLP_LogEntry_PrivateData_SyncState.gpsL1.setter(uint64_t a1)
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
  v18 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL1;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_SyncState.gpsL1.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v17 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL1;
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

  return CLP_LogEntry_PrivateData_SyncState.gpsL1.modify;
}

void CLP_LogEntry_PrivateData_SyncState.gpsL1.modify(uint64_t *a1, char a2)
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
    v20 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL1;
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
    v33 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL1;
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

BOOL CLP_LogEntry_PrivateData_SyncState.hasGpsL1.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL1;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_SyncState.clearGpsL1()()
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
  v16 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL1;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_SyncState.gpsL2C.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL2C;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
  }

  UnknownStorage.init()();
  *(a1 + v9[5]) = 2;
  *(a1 + v9[6]) = 2;
  *(a1 + v9[7]) = 2;
  *(a1 + v9[8]) = 2;
  *(a1 + v9[9]) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_SyncState.gpsL2C.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
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

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL2C;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_SyncState.gpsL2C.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
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
  v17 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL2C;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + v9[5]) = 2;
    *(v14 + v9[6]) = 2;
    *(v14 + v9[7]) = 2;
    *(v14 + v9[8]) = 2;
    *(v14 + v9[9]) = 2;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
  }

  return CLP_LogEntry_PrivateData_SyncState.gpsL2C.modify;
}

void CLP_LogEntry_PrivateData_SyncState.gpsL2C.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
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
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL2C;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
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
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL2C;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_SyncState.hasGpsL2C.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL2C;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_SyncState.clearGpsL2C()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
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

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL2C;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_SyncState.gpsL5.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
  }

  UnknownStorage.init()();
  *(a1 + v9[5]) = 2;
  *(a1 + v9[6]) = 2;
  *(a1 + v9[7]) = 2;
  *(a1 + v9[8]) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_SyncState.gpsL5.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
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

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_SyncState.gpsL5.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0);
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
  v17 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
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
      outlined destroy of Any?(v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
  }

  return CLP_LogEntry_PrivateData_SyncState.gpsL5.modify;
}

void CLP_LogEntry_PrivateData_SyncState.gpsL5.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
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
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
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
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_SyncState.hasGpsL5.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_SyncState.clearGpsL5()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
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

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_SyncState.glonassL1F.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
  }

  UnknownStorage.init()();
  *(a1 + v9[5]) = 2;
  *(a1 + v9[6]) = 2;
  *(a1 + v9[7]) = 2;
  *(a1 + v9[8]) = 2;
  *(a1 + v9[9]) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_SyncState.glonassL1F.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
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

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_SyncState.glonassL1F.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
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
  v17 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + v9[5]) = 2;
    *(v14 + v9[6]) = 2;
    *(v14 + v9[7]) = 2;
    *(v14 + v9[8]) = 2;
    *(v14 + v9[9]) = 2;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
  }

  return CLP_LogEntry_PrivateData_SyncState.glonassL1F.modify;
}

void CLP_LogEntry_PrivateData_SyncState.glonassL1F.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
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
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
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
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_SyncState.hasGlonassL1F.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_SyncState.clearGlonassL1F()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
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

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_SyncState.beidouB1.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
  }

  UnknownStorage.init()();
  *(a1 + v9[5]) = 2;
  *(a1 + v9[6]) = 2;
  *(a1 + v9[7]) = 2;
  *(a1 + v9[8]) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_SyncState.beidouB1.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
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

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_SyncState.beidouB1.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0);
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
  v17 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
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
      outlined destroy of Any?(v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
  }

  return CLP_LogEntry_PrivateData_SyncState.beidouB1.modify;
}

void CLP_LogEntry_PrivateData_SyncState.beidouB1.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
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
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
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
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_SyncState.hasBeidouB1.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_SyncState.clearBeidouB1()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
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

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_SyncState.beidouB2.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
  }

  UnknownStorage.init()();
  *(a1 + v9[5]) = 2;
  *(a1 + v9[6]) = 2;
  *(a1 + v9[7]) = 2;
  *(a1 + v9[8]) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_SyncState.beidouB2.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
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

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_SyncState.beidouB2.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0);
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
  v17 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
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
      outlined destroy of Any?(v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
  }

  return CLP_LogEntry_PrivateData_SyncState.beidouB2.modify;
}

void CLP_LogEntry_PrivateData_SyncState.beidouB2.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
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
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
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
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_SyncState.hasBeidouB2.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_SyncState.clearBeidouB2()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
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

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_SyncState.galileoE1.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
  }

  UnknownStorage.init()();
  *(a1 + v9[5]) = 2;
  *(a1 + v9[6]) = 2;
  *(a1 + v9[7]) = 2;
  *(a1 + v9[8]) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_SyncState.galileoE1.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
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

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_SyncState.galileoE1.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0);
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
  v17 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
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
      outlined destroy of Any?(v8, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
  }

  return CLP_LogEntry_PrivateData_SyncState.galileoE1.modify;
}

void CLP_LogEntry_PrivateData_SyncState.galileoE1.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
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
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
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
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_SyncState.hasGalileoE1.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_SyncState.clearGalileoE1()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
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

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_SyncState.galileoE5.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
  }

  UnknownStorage.init()();
  *(a1 + v9[5]) = 2;
  *(a1 + v9[6]) = 2;
  *(a1 + v9[7]) = 2;
  *(a1 + v9[8]) = 2;
  *(a1 + v9[9]) = 2;
  *(a1 + v9[10]) = 2;
  *(a1 + v9[11]) = 2;
  *(a1 + v9[12]) = 2;
  *(a1 + v9[13]) = 2;
  *(a1 + v9[14]) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_SyncState.galileoE5.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
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

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_SyncState.galileoE5.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
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
  v17 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
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
    *(v14 + v9[11]) = 2;
    *(v14 + v9[12]) = 2;
    *(v14 + v9[13]) = 2;
    *(v14 + v9[14]) = 2;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
  }

  return CLP_LogEntry_PrivateData_SyncState.galileoE5.modify;
}

void CLP_LogEntry_PrivateData_SyncState.galileoE5.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
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
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
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
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_SyncState.hasGalileoE5.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
  return v8;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_SyncState.clearGalileoE5()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
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

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_SyncState.sbasL1.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
  }

  UnknownStorage.init()();
  *(a1 + v9[5]) = 2;
  *(a1 + v9[6]) = 2;
  *(a1 + v9[7]) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_SyncState.sbasL1.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
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

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_SyncState.sbasL1.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
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
  v17 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + v9[5]) = 2;
    *(v14 + v9[6]) = 2;
    *(v14 + v9[7]) = 2;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
  }

  return CLP_LogEntry_PrivateData_SyncState.sbasL1.modify;
}