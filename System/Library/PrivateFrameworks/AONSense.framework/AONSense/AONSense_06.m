uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf42CLP_LogEntry_PrivateData_SvBandCorrectionsV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v40 - v10;
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
        outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v11, type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections);
        outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v8, type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections);
        v17 = v4[5];
        v18 = v11[v17];
        v19 = v8[v17];
        if (v18 == 13)
        {
          if (v19 != 13)
          {
            goto LABEL_35;
          }
        }

        else if (v18 != v19)
        {
          goto LABEL_35;
        }

        v20 = v4[6];
        v21 = &v11[v20];
        v22 = v11[v20 + 8];
        v23 = &v8[v20];
        v24 = v8[v20 + 8];
        if (v22)
        {
          if (!v24)
          {
            goto LABEL_35;
          }
        }

        else
        {
          if (*v21 != *v23)
          {
            LOBYTE(v24) = 1;
          }

          if (v24)
          {
LABEL_35:
            outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections);
            outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections);
            goto LABEL_36;
          }
        }

        v25 = v4[7];
        v26 = &v11[v25];
        v27 = v11[v25 + 8];
        v28 = &v8[v25];
        v29 = v8[v25 + 8];
        if (v27)
        {
          if (!v29)
          {
            goto LABEL_35;
          }
        }

        else
        {
          if (*v26 != *v28)
          {
            LOBYTE(v29) = 1;
          }

          if (v29)
          {
            goto LABEL_35;
          }
        }

        v30 = v4[8];
        v31 = &v11[v30];
        v32 = v11[v30 + 8];
        v33 = &v8[v30];
        v34 = v8[v30 + 8];
        if (v32)
        {
          if (!v34)
          {
            goto LABEL_35;
          }
        }

        else
        {
          if (*v31 != *v33)
          {
            LOBYTE(v34) = 1;
          }

          if (v34)
          {
            goto LABEL_35;
          }
        }

        v35 = v4[9];
        v36 = v11[v35];
        v37 = v8[v35];
        if (v36 == 3)
        {
          if (v37 != 3)
          {
            goto LABEL_35;
          }
        }

        else if (v36 != v37)
        {
          goto LABEL_35;
        }

        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v38 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections);
        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections);
        if (v38)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v38 & 1;
      }
    }

    v38 = 1;
  }

  else
  {
LABEL_36:
    v38 = 0;
  }

  return v38 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t))
{
  v27 = a5;
  v28 = a3(0);
  v8 = *(*(v28 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v28);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v14 = &v27 - v13;
  v15 = *(a1 + 16);
  if (v15 == *(a2 + 16))
  {
    if (!v15 || a1 == a2)
    {
      v25 = 1;
    }

    else
    {
      v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v17 = a1 + v16;
      v18 = a2 + v16;
      v19 = *(v12 + 72);
      while (1)
      {
        outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v17, v14, a4);
        outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v18, v11, a4);
        v20 = *(v28 + 20);
        v21 = *&v14[v20];
        v22 = *&v11[v20];
        if (v21 != v22)
        {
          v23 = *&v14[v20];

          v24 = v27(v21, v22);

          if ((v24 & 1) == 0)
          {
            break;
          }
        }

        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v25 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, a4);
        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, a4);
        if (v25)
        {
          v18 += v19;
          v17 += v19;
          if (--v15)
          {
            continue;
          }
        }

        return v25 & 1;
      }

      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, a4);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, a4);
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf48CLP_LogEntry_PrivateData_ReceiverBandCorrectionsV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0);
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v37 - v10;
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
        outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v11, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections);
        outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v8, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections);
        v17 = v4[5];
        v18 = v11[v17];
        v19 = v8[v17];
        if (v18 == 13)
        {
          if (v19 != 13)
          {
            goto LABEL_31;
          }
        }

        else if (v18 != v19)
        {
          goto LABEL_31;
        }

        v20 = v4[6];
        v21 = &v11[v20];
        v22 = v11[v20 + 8];
        v23 = &v8[v20];
        v24 = v8[v20 + 8];
        if (v22)
        {
          if (!v24)
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (*v21 != *v23)
          {
            LOBYTE(v24) = 1;
          }

          if (v24)
          {
LABEL_31:
            outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections);
            outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections);
            goto LABEL_32;
          }
        }

        v25 = v4[7];
        v26 = &v11[v25];
        v27 = v11[v25 + 4];
        v28 = &v8[v25];
        v29 = v8[v25 + 4];
        if (v27)
        {
          if (!v29)
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (*v26 != *v28)
          {
            LOBYTE(v29) = 1;
          }

          if (v29)
          {
            goto LABEL_31;
          }
        }

        v30 = v4[8];
        v31 = &v11[v30];
        v32 = v11[v30 + 4];
        v33 = &v8[v30];
        v34 = v8[v30 + 4];
        if (v32)
        {
          if (!v34)
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (*v31 != *v33)
          {
            LOBYTE(v34) = 1;
          }

          if (v34)
          {
            goto LABEL_31;
          }
        }

        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v35 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections);
        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections);
        if (v35)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v35 & 1;
      }
    }

    v35 = 1;
  }

  else
  {
LABEL_32:
    v35 = 0;
  }

  return v35 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf51CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffsetV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
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
        outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v11, type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset);
        outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v8, type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset);
        v17 = specialized static CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.== infix(_:_:)(v11, v8);
        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset);
        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset);
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

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = MEMORY[0x23EED9A40]();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = MEMORY[0x23EED9A40]();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    outlined consume of Data._Representation(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  closure #1 in static Data.== infix(_:_:)(v14, a3, a4, &v13);
  v10 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t specialized CLP_LogEntry_PrivateData_SatelliteSystem.init(rawValue:)(uint64_t result)
{
  if (result > 7)
  {
    if (result > 31)
    {
      if (result == 32)
      {
        return 6;
      }

      if (result == 64)
      {
        return 7;
      }
    }

    else
    {
      if (result == 8)
      {
        return 4;
      }

      if (result == 16)
      {
        return 5;
      }
    }

    return 8;
  }

  if (result <= 1)
  {
    if (result <= 1)
    {
      return result;
    }

    return 8;
  }

  if (result != 2)
  {
    if (result == 4)
    {
      return 3;
    }

    return 8;
  }

  return result;
}

unint64_t specialized CLP_LogEntry_PrivateData_Band.init(rawValue:)(unint64_t result)
{
  if (result >= 0xD)
  {
    return 13;
  }

  return result;
}

uint64_t outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized CLP_LogEntry_PrivateData_SvInfo._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v95 = &v76 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v77 = &v76 - v8;
  v9 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__referenceTimeNanoseconds;
  *v11 = 0;
  *(v11 + 8) = 1;
  v79 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__positionSource;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__positionSource) = 7;
  v76 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__anchorPositions;
  v12 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__anchorPositions) = MEMORY[0x277D84F90];
  v13 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockBiasCorrectionNanoseconds;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyCorrectionPpb;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyChangeCorrectionPpbPerSec;
  v80 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyChangeCorrectionPpbPerSec;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyPositionM;
  v81 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyPositionM;
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyClockNanoseconds;
  v82 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyClockNanoseconds;
  *v17 = 0;
  *(v17 + 4) = 1;
  v83 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL1;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL1) = 5;
  v84 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL1;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL1) = 5;
  v85 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL1;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL1) = 5;
  v86 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL1;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL1) = 5;
  v87 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL1;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL1) = 5;
  v18 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svBandCorrections;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svBandCorrections) = v12;
  v19 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit;
  v88 = v18;
  v89 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit;
  v20 = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  v90 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL5;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL5) = 5;
  v91 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL5;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL5) = 5;
  v92 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL5;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL5) = 5;
  v93 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL5;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL5) = 5;
  v94 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL5;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL5) = 5;
  v21 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyAccelCorrectionPpbPerSecPerSec;
  v78 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyAccelCorrectionPpbPerSecPerSec;
  *v21 = 0;
  *(v21 + 8) = 1;
  v96 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svReferencePoint;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svReferencePoint) = 4;
  v22 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  v23 = v77;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v22, v77, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v23, v1 + v9, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  swift_endAccess();
  v24 = (a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__referenceTimeNanoseconds);
  swift_beginAccess();
  v25 = *v24;
  LOBYTE(v24) = *(v24 + 8);
  swift_beginAccess();
  *v11 = v25;
  *(v11 + 8) = v24;
  v26 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__positionSource;
  swift_beginAccess();
  LOBYTE(v26) = *(a1 + v26);
  v27 = v79;
  swift_beginAccess();
  *(v1 + v27) = v26;
  v28 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__anchorPositions;
  swift_beginAccess();
  v29 = *(a1 + v28);
  v30 = v76;
  swift_beginAccess();
  v31 = *(v1 + v30);
  *(v1 + v30) = v29;

  v32 = (a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockBiasCorrectionNanoseconds);
  swift_beginAccess();
  v33 = *v32;
  LOBYTE(v32) = *(v32 + 8);
  swift_beginAccess();
  *v13 = v33;
  *(v13 + 8) = v32;
  v34 = (a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyCorrectionPpb);
  swift_beginAccess();
  v35 = *v34;
  LOBYTE(v34) = *(v34 + 8);
  swift_beginAccess();
  *v14 = v35;
  *(v14 + 8) = v34;
  v36 = (a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyChangeCorrectionPpbPerSec);
  swift_beginAccess();
  v37 = *v36;
  LOBYTE(v36) = *(v36 + 8);
  v38 = v80;
  swift_beginAccess();
  *v38 = v37;
  *(v38 + 8) = v36;
  v39 = a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyPositionM;
  swift_beginAccess();
  LODWORD(v37) = *v39;
  LOBYTE(v39) = *(v39 + 4);
  v40 = v81;
  swift_beginAccess();
  *v40 = v37;
  *(v40 + 4) = v39;
  v41 = a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyClockNanoseconds;
  swift_beginAccess();
  LODWORD(v37) = *v41;
  LOBYTE(v41) = *(v41 + 4);
  v42 = v82;
  swift_beginAccess();
  *v42 = v37;
  *(v42 + 4) = v41;
  v43 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL1;
  swift_beginAccess();
  LOBYTE(v43) = *(a1 + v43);
  v44 = v83;
  swift_beginAccess();
  *(v1 + v44) = v43;
  v45 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL1;
  swift_beginAccess();
  LOBYTE(v45) = *(a1 + v45);
  v46 = v84;
  swift_beginAccess();
  *(v1 + v46) = v45;
  v47 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL1;
  swift_beginAccess();
  LOBYTE(v47) = *(a1 + v47);
  v48 = v85;
  swift_beginAccess();
  *(v1 + v48) = v47;
  v49 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL1;
  swift_beginAccess();
  LOBYTE(v49) = *(a1 + v49);
  v50 = v86;
  swift_beginAccess();
  *(v1 + v50) = v49;
  v51 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL1;
  swift_beginAccess();
  LOBYTE(v51) = *(a1 + v51);
  v52 = v87;
  swift_beginAccess();
  *(v1 + v52) = v51;
  v53 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svBandCorrections;
  swift_beginAccess();
  v54 = *(a1 + v53);
  v55 = v88;
  swift_beginAccess();
  v56 = *(v1 + v55);
  *(v1 + v55) = v54;

  v57 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit;
  swift_beginAccess();
  v58 = v95;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v57, v95, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
  v59 = v89;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v58, v1 + v59, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
  swift_endAccess();
  v60 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL5;
  swift_beginAccess();
  LOBYTE(v60) = *(a1 + v60);
  v61 = v90;
  swift_beginAccess();
  *(v1 + v61) = v60;
  v62 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL5;
  swift_beginAccess();
  LOBYTE(v62) = *(a1 + v62);
  v63 = v91;
  swift_beginAccess();
  *(v1 + v63) = v62;
  v64 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL5;
  swift_beginAccess();
  LOBYTE(v64) = *(a1 + v64);
  v65 = v92;
  swift_beginAccess();
  *(v1 + v65) = v64;
  v66 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL5;
  swift_beginAccess();
  LOBYTE(v66) = *(a1 + v66);
  v67 = v93;
  swift_beginAccess();
  *(v1 + v67) = v66;
  v68 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL5;
  swift_beginAccess();
  LOBYTE(v68) = *(a1 + v68);
  v69 = v94;
  swift_beginAccess();
  *(v1 + v69) = v68;
  v70 = (a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyAccelCorrectionPpbPerSecPerSec);
  swift_beginAccess();
  v71 = *v70;
  LOBYTE(v70) = *(v70 + 8);
  v72 = v78;
  swift_beginAccess();
  *v72 = v71;
  *(v72 + 8) = v70;
  v73 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svReferencePoint;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v73);
  v74 = v96;
  swift_beginAccess();
  *(v1 + v74) = a1;
  return v1;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  MEMORY[0x23EED9A40]();
  closure #1 in static Data.== infix(_:_:)(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t specialized static Data.== infix(_:_:)(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          outlined copy of Data._Representation(a3, a4);
          return specialized Data.withUnsafeBytes<A>(_:)(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t specialized static CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16 == 2)
  {
    if (v17 != 2)
    {
      return 0;
    }
  }

  else if (v17 == 2 || ((v16 ^ v17) & 1) != 0)
  {
    return 0;
  }

  v18 = v4[8];
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 2)
  {
    if (v20 != 2)
    {
      return 0;
    }
  }

  else if (v20 == 2 || ((v19 ^ v20) & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 8);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[9];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 4);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 4);
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v3);
  v54 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v55 = &v53 - v8;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSg_ADtMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSg_ADtMR);
  v9 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v59 = &v53 - v10;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v53 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSg_ADtMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSg_ADtMR);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v53 - v23;
  v60 = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
  v61 = a1;
  v25 = v60[5];
  v26 = *(v21 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v25, v24, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v27 = v62 + v25;
  v28 = v62;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v27, &v24[v26], &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v29 = *(v12 + 48);
  if (v29(v24, 1, v11) == 1)
  {
    if (v29(&v24[v26], 1, v11) == 1)
    {
      outlined destroy of Any?(v24, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
      goto LABEL_11;
    }

LABEL_6:
    v30 = &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSg_ADtMd;
    v31 = &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSg_ADtMR;
    v32 = v24;
LABEL_7:
    outlined destroy of Any?(v32, v30, v31);
    goto LABEL_8;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v24, v19, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  if (v29(&v24[v26], 1, v11) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v19, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
    goto LABEL_6;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v24[v26], v15, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  v35 = specialized static CLP_LogEntry_PrivateData_SvId.== infix(_:_:)(v19, v15);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v19, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  outlined destroy of Any?(v24, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  if ((v35 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v36 = v60[6];
  v37 = *(v61 + v36);
  v38 = *(v28 + v36);
  if (v37 == 13)
  {
    if (v38 != 13)
    {
      goto LABEL_8;
    }
  }

  else if (v37 != v38)
  {
    goto LABEL_8;
  }

  v39 = v60[7];
  v40 = *(v61 + v39);
  v41 = *(v28 + v39);
  if (v40 == 4)
  {
    if (v41 != 4)
    {
      goto LABEL_8;
    }
  }

  else if (v40 != v41)
  {
    goto LABEL_8;
  }

  v42 = v60[8];
  v43 = *(v56 + 48);
  v44 = v59;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v61 + v42, v59, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMR);
  v45 = v28 + v42;
  v46 = v44;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v45, v44 + v43, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMR);
  v47 = v58;
  v48 = *(v57 + 48);
  if (v48(v44, 1, v58) == 1)
  {
    if (v48(v44 + v43, 1, v47) == 1)
    {
      outlined destroy of Any?(v44, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMR);
LABEL_26:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v33 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v33 & 1;
    }

    goto LABEL_24;
  }

  v49 = v55;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v46, v55, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMR);
  if (v48(v46 + v43, 1, v47) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v49, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
LABEL_24:
    v30 = &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSg_ADtMd;
    v31 = &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSg_ADtMR;
    v32 = v46;
    goto LABEL_7;
  }

  v50 = v46 + v43;
  v51 = v54;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v50, v54, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
  v52 = specialized static CLP_LogEntry_PrivateData_ReceivedTimeStamp.== infix(_:_:)(v49, v51, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v51, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v49, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
  outlined destroy of Any?(v46, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMR);
  if (v52)
  {
    goto LABEL_26;
  }

LABEL_8:
  v33 = 0;
  return v33 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_ReceiverClockCorrections.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 8);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[9];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 8);
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_KlobucharModelParameters.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[9];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 4);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 4);
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  v30 = v4[10];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 4);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 4);
  if (v32)
  {
    if (!v34)
    {
      return 0;
    }
  }

  else
  {
    if (*v31 != *v33)
    {
      LOBYTE(v34) = 1;
    }

    if (v34)
    {
      return 0;
    }
  }

  v35 = v4[11];
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 4);
  v38 = (a2 + v35);
  v39 = *(a2 + v35 + 4);
  if (v37)
  {
    if (!v39)
    {
      return 0;
    }
  }

  else
  {
    if (*v36 != *v38)
    {
      LOBYTE(v39) = 1;
    }

    if (v39)
    {
      return 0;
    }
  }

  v40 = v4[12];
  v41 = (a1 + v40);
  v42 = *(a1 + v40 + 4);
  v43 = (a2 + v40);
  v44 = *(a2 + v40 + 4);
  if (v42)
  {
    if (!v44)
    {
      return 0;
    }
  }

  else
  {
    if (*v41 != *v43)
    {
      LOBYTE(v44) = 1;
    }

    if (v44)
    {
      return 0;
    }
  }

  v45 = v4[13];
  v46 = (a1 + v45);
  v47 = *(a1 + v45 + 4);
  v48 = (a2 + v45);
  v49 = *(a2 + v45 + 4);
  if (v47)
  {
    if (!v49)
    {
      return 0;
    }
  }

  else
  {
    if (*v46 != *v48)
    {
      LOBYTE(v49) = 1;
    }

    if (v49)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_ReceiverBandCorrections.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 13)
  {
    if (v7 != 13)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
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

  v13 = v4[7];
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

  v18 = v4[8];
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

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_SignalCorrelationPeak.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v3);
  v53 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v54 = &v52 - v8;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSg_ADtMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSg_ADtMR);
  v9 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v59 = &v52 - v10;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v52 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSg_ADtMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSg_ADtMR);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v52 - v23;
  v56 = type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0);
  v25 = *(v56 + 20);
  v26 = *(v21 + 56);
  v60 = a1;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v25, v24, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  v27 = v61 + v25;
  v28 = v61;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v27, &v24[v26], &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  v29 = *(v12 + 48);
  if (v29(v24, 1, v11) == 1)
  {
    if (v29(&v24[v26], 1, v11) == 1)
    {
      outlined destroy of Any?(v24, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v30 = &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSg_ADtMd;
    v31 = &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSg_ADtMR;
    v32 = v24;
LABEL_14:
    outlined destroy of Any?(v32, v30, v31);
    goto LABEL_15;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v24, v19, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  if (v29(&v24[v26], 1, v11) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v19, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
    goto LABEL_6;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v24[v26], v15, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  v33 = specialized static CLP_LogEntry_PrivateData_FrequencyOffset.== infix(_:_:)(v19, v15, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v19, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  outlined destroy of Any?(v24, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  if ((v33 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v34 = v56;
  v35 = *(v56 + 24);
  v36 = *(v55 + 48);
  v38 = v59;
  v37 = v60;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v60 + v35, v59, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v28 + v35, v38 + v36, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  v39 = v58;
  v40 = *(v57 + 48);
  if (v40(v38, 1, v58) != 1)
  {
    v41 = v54;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v38, v54, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
    if (v40(v38 + v36, 1, v39) != 1)
    {
      v44 = v38 + v36;
      v45 = v53;
      outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v44, v53, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
      v46 = specialized static CLP_LogEntry_PrivateData_FrequencyOffset.== infix(_:_:)(v41, v45, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v45, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v41, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
      outlined destroy of Any?(v38, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
      if ((v46 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v41, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
    goto LABEL_13;
  }

  if (v40(v38 + v36, 1, v39) != 1)
  {
LABEL_13:
    v30 = &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSg_ADtMd;
    v31 = &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSg_ADtMR;
    v32 = v38;
    goto LABEL_14;
  }

  outlined destroy of Any?(v38, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
LABEL_18:
  v47 = *(v34 + 28);
  v48 = (v37 + v47);
  v49 = *(v37 + v47 + 4);
  v50 = (v28 + v47);
  v51 = *(v28 + v47 + 4);
  if (v49)
  {
    if (v51)
    {
LABEL_24:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v42 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v42 & 1;
    }
  }

  else
  {
    if (*v48 != *v50)
    {
      LOBYTE(v51) = 1;
    }

    if ((v51 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

LABEL_15:
  v42 = 0;
  return v42 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_SvMeasurementUsage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_GpsToUtcConversion.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 8);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_GalileoE5SyncState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  v5 = v4[5];
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

  v8 = v4[6];
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }
  }

  else if (v10 == 2 || ((v9 ^ v10) & 1) != 0)
  {
    return 0;
  }

  v11 = v4[7];
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (v12 == 2)
  {
    if (v13 != 2)
    {
      return 0;
    }
  }

  else if (v13 == 2 || ((v12 ^ v13) & 1) != 0)
  {
    return 0;
  }

  v14 = v4[8];
  v15 = *(a1 + v14);
  v16 = *(a2 + v14);
  if (v15 == 2)
  {
    if (v16 != 2)
    {
      return 0;
    }
  }

  else if (v16 == 2 || ((v15 ^ v16) & 1) != 0)
  {
    return 0;
  }

  v17 = v4[9];
  v18 = *(a1 + v17);
  v19 = *(a2 + v17);
  if (v18 == 2)
  {
    if (v19 != 2)
    {
      return 0;
    }
  }

  else if (v19 == 2 || ((v18 ^ v19) & 1) != 0)
  {
    return 0;
  }

  v20 = v4[10];
  v21 = *(a1 + v20);
  v22 = *(a2 + v20);
  if (v21 == 2)
  {
    if (v22 != 2)
    {
      return 0;
    }
  }

  else if (v22 == 2 || ((v21 ^ v22) & 1) != 0)
  {
    return 0;
  }

  v23 = v4[11];
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24 == 2)
  {
    if (v25 != 2)
    {
      return 0;
    }
  }

  else if (v25 == 2 || ((v24 ^ v25) & 1) != 0)
  {
    return 0;
  }

  v26 = v4[12];
  v27 = *(a1 + v26);
  v28 = *(a2 + v26);
  if (v27 == 2)
  {
    if (v28 != 2)
    {
      return 0;
    }
  }

  else if (v28 == 2 || ((v27 ^ v28) & 1) != 0)
  {
    return 0;
  }

  v29 = v4[13];
  v30 = *(a1 + v29);
  v31 = *(a2 + v29);
  if (v30 == 2)
  {
    if (v31 != 2)
    {
      return 0;
    }
  }

  else if (v31 == 2 || ((v30 ^ v31) & 1) != 0)
  {
    return 0;
  }

  v32 = v4[14];
  v33 = *(a1 + v32);
  v34 = *(a2 + v32);
  if (v33 == 2)
  {
    if (v34 != 2)
    {
      return 0;
    }
  }

  else if (v34 == 2 || ((v33 ^ v34) & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_SvBandCorrections.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 13)
  {
    if (v7 != 13)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
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

  v13 = v4[7];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 8);
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

  v18 = v4[8];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 8);
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

  v23 = v4[9];
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24 == 3)
  {
    if (v25 != 3)
    {
      return 0;
    }
  }

  else if (v24 != v25)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_SvPositionAtTime.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0);
  v18 = *(v17 + 20);
  v31 = a1;
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 8);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_13;
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
      goto LABEL_13;
    }
  }

  v23 = a2;
  v24 = *(v17 + 24);
  v25 = *(v13 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v31 + v24, v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v23 + v24, &v16[v25], &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMR);
  v26 = *(v5 + 48);
  if (v26(v16, 1, v4) == 1)
  {
    if (v26(&v16[v25], 1, v4) == 1)
    {
      outlined destroy of Any?(v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMR);
LABEL_16:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v27 & 1;
    }

    goto LABEL_12;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16, v12, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMR);
  if (v26(&v16[v25], 1, v4) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v12, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
LABEL_12:
    outlined destroy of Any?(v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSg_ADtMR);
    goto LABEL_13;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v16[v25], v8, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
  v29 = specialized static CLP_LogEntry_PrivateData_ReceivedTimeStamp.== infix(_:_:)(v12, v8, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v12, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
  outlined destroy of Any?(v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMR);
  if (v29)
  {
    goto LABEL_16;
  }

LABEL_13:
  v27 = 0;
  return v27 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_SbasL1SyncState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
  v5 = v4[5];
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

  v8 = v4[6];
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }
  }

  else if (v10 == 2 || ((v9 ^ v10) & 1) != 0)
  {
    return 0;
  }

  v11 = v4[7];
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (v12 == 2)
  {
    if (v13 != 2)
    {
      return 0;
    }
  }

  else if (v13 == 2 || ((v12 ^ v13) & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_PolynomialOrbit.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
  v5 = v4;
  v6 = *(v4 + 32);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 8);
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (*v7 != *v9)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = *(v4 + 36);
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = *(a2 + v11 + 8);
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (*v12 != *v14)
    {
      LOBYTE(v15) = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZSd_Tt1g5(*a1, *a2) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZSd_Tt1g5(a1[1], a2[1]) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZSd_Tt1g5(a1[2], a2[2]))
  {
    v16 = *(v5 + 28);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static CLP_LogEntry_PrivateData_GlonassL1fSyncState.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = v5[5];
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if (v7 == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }
  }

  else if (v8 == 2 || ((v7 ^ v8) & 1) != 0)
  {
    return 0;
  }

  v9 = v5[6];
  v10 = *(a1 + v9);
  v11 = *(a2 + v9);
  if (v10 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else if (v11 == 2 || ((v10 ^ v11) & 1) != 0)
  {
    return 0;
  }

  v12 = v5[7];
  v13 = *(a1 + v12);
  v14 = *(a2 + v12);
  if (v13 == 2)
  {
    if (v14 != 2)
    {
      return 0;
    }
  }

  else if (v14 == 2 || ((v13 ^ v14) & 1) != 0)
  {
    return 0;
  }

  v15 = v5[8];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16 == 2)
  {
    if (v17 != 2)
    {
      return 0;
    }
  }

  else if (v17 == 2 || ((v16 ^ v17) & 1) != 0)
  {
    return 0;
  }

  v18 = v5[9];
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 2)
  {
    if (v20 != 2)
    {
      return 0;
    }
  }

  else if (v20 == 2 || ((v19 ^ v20) & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_GlonassSubsecondConversion.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = *(v4 + 24);
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_GlonassTimeInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v54 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSg_ADtMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSg_ADtMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v54 - v21;
  v23 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  v24 = v23[5];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 4);
  v27 = (a2 + v24);
  v28 = *(a2 + v24 + 4);
  if (v26)
  {
    if (!v28)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (*v25 != *v27)
    {
      LOBYTE(v28) = 1;
    }

    if (v28)
    {
      goto LABEL_31;
    }
  }

  v29 = v23[6];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 4);
  v32 = (a2 + v29);
  v33 = *(a2 + v29 + 4);
  if (v31)
  {
    if (!v33)
    {
      goto LABEL_31;
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
      goto LABEL_31;
    }
  }

  v34 = v23[7];
  v35 = *(a1 + v34);
  v36 = *(a2 + v34);
  if (v35 == 6)
  {
    if (v36 != 6)
    {
      goto LABEL_31;
    }
  }

  else if (v35 != v36)
  {
    goto LABEL_31;
  }

  v55 = v13;
  v57 = v23;
  v59 = v5;
  v37 = v23[8];
  v38 = *(v16 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v37, v22, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  v39 = a2 + v37;
  v40 = v59;
  v58 = v38;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v39, &v22[v38], &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  v43 = *(v40 + 48);
  v42 = v40 + 48;
  v41 = v43;
  v44 = v43(v22, 1, v4);
  v56 = v43;
  if (v44 != 1)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v22, v15, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
    if (v41(&v22[v58], 1, v4) != 1)
    {
      v59 = v42;
      outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v22[v58], v8, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
      v46 = specialized static CLP_LogEntry_PrivateData_GlonassSubsecondConversion.== infix(_:_:)(v15, v8);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
      outlined destroy of Any?(v22, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
      if ((v46 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_24;
    }

    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
LABEL_22:
    v45 = v22;
LABEL_30:
    outlined destroy of Any?(v45, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSg_ADtMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSg_ADtMR);
    goto LABEL_31;
  }

  if (v41(&v22[v58], 1, v4) != 1)
  {
    goto LABEL_22;
  }

  v59 = v42;
  outlined destroy of Any?(v22, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
LABEL_24:
  v47 = v57[9];
  v48 = *(v16 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v47, v20, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v47, &v20[v48], &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  v49 = v56;
  if (v56(v20, 1, v4) == 1)
  {
    if (v49(&v20[v48], 1, v4) == 1)
    {
      outlined destroy of Any?(v20, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
LABEL_34:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v51 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v51 & 1;
    }

    goto LABEL_29;
  }

  v50 = v55;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v20, v55, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  if (v49(&v20[v48], 1, v4) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v50, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
LABEL_29:
    v45 = v20;
    goto LABEL_30;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v20[v48], v8, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
  v53 = specialized static CLP_LogEntry_PrivateData_GlonassSubsecondConversion.== infix(_:_:)(v50, v8);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v50, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
  outlined destroy of Any?(v20, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  if (v53)
  {
    goto LABEL_34;
  }

LABEL_31:
  v51 = 0;
  return v51 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_GalileoTimeInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v74 = *(v4 - 8);
  v5 = *(v74 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v70 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v72 = &v66 - v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSg_ADtMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSg_ADtMR);
  v13 = *(*(v75 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v75);
  v71 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v73 = &v66 - v16;
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v66 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSg_ADtMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSg_ADtMR);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v66 - v28;
  v30 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  v31 = *(v30 + 20);
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 4);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 4);
  if (v33)
  {
    if (!v35)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (*v32 != *v34)
    {
      LOBYTE(v35) = 1;
    }

    if (v35)
    {
      goto LABEL_26;
    }
  }

  v68 = v30;
  v69 = v4;
  v66 = v7;
  v36 = *(v30 + 24);
  v37 = a1;
  v38 = *(v26 + 48);
  v67 = v37;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v37 + v36, v29, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v39 = a2 + v36;
  v40 = a2;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v39, &v29[v38], &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v41 = *(v18 + 48);
  if (v41(v29, 1, v17) == 1)
  {
    v42 = v41(&v29[v38], 1, v17);
    v43 = v69;
    if (v42 == 1)
    {
      outlined destroy of Any?(v29, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
      goto LABEL_14;
    }

LABEL_12:
    v45 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSg_ADtMd;
    v46 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSg_ADtMR;
    v47 = v29;
LABEL_25:
    outlined destroy of Any?(v47, v45, v46);
    goto LABEL_26;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v29, v25, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v44 = v41(&v29[v38], 1, v17);
  v43 = v69;
  if (v44 == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v25, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
    goto LABEL_12;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v29[v38], v21, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  v48 = specialized static CLP_LogEntry_PrivateData_LeapSecondInfo.== infix(_:_:)(v25, v21);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v21, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v25, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  outlined destroy of Any?(v29, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  if ((v48 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_14:
  v49 = v67;
  v50 = *(v68 + 28);
  v51 = *(v75 + 48);
  v52 = v73;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v67 + v50, v73, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v40 + v50, v52 + v51, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v53 = *(v74 + 48);
  if (v53(v52, 1, v43) == 1)
  {
    if (v53(v52 + v51, 1, v43) != 1)
    {
LABEL_24:
      v45 = &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSg_ADtMd;
      v46 = &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSg_ADtMR;
      v47 = v52;
      goto LABEL_25;
    }

    outlined destroy of Any?(v52, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
LABEL_19:
    v58 = *(v68 + 32);
    v59 = *(v75 + 48);
    v60 = v71;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v49 + v58, v71, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    v61 = v40 + v58;
    v52 = v60;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v61, v60 + v59, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    if (v53(v60, 1, v43) == 1)
    {
      if (v53(v60 + v59, 1, v43) == 1)
      {
        outlined destroy of Any?(v60, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
LABEL_29:
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v62 = dispatch thunk of static Equatable.== infix(_:_:)();
        return v62 & 1;
      }

      goto LABEL_24;
    }

    v54 = v70;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v60, v70, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    if (v53(v60 + v59, 1, v43) == 1)
    {
      goto LABEL_23;
    }

    v64 = v66;
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v60 + v59, v66, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    v65 = specialized static CLP_LogEntry_PrivateData_SubSecondConversion.== infix(_:_:)(v54, v64);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v64, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v54, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    outlined destroy of Any?(v60, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    if (v65)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  v54 = v72;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v52, v72, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  if (v53(v52 + v51, 1, v43) == 1)
  {
LABEL_23:
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v54, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    goto LABEL_24;
  }

  v55 = v52 + v51;
  v56 = v66;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v55, v66, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  v57 = specialized static CLP_LogEntry_PrivateData_SubSecondConversion.== infix(_:_:)(v54, v56);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v56, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v54, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  outlined destroy of Any?(v52, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  if (v57)
  {
    goto LABEL_19;
  }

LABEL_26:
  v62 = 0;
  return v62 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_PhaseTracking.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 8);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[9];
  v26 = *(a1 + v25);
  v27 = *(a2 + v25);
  if (v26 == 2)
  {
    if (v27 != 2)
    {
      return 0;
    }
  }

  else if (v27 == 2 || ((v26 ^ v27) & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_SubSecondConversion.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_NavicTimeInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSg_ADtMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v31 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  v32 = a1;
  v17 = *(v31 + 20);
  v18 = *(v13 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v17, v16, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v17, &v16[v18], &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16, v11, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v22 = v30;
      outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v16[v18], v30, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
      v23 = specialized static CLP_LogEntry_PrivateData_SubSecondConversion.== infix(_:_:)(v11, v22);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v22, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
      outlined destroy of Any?(v16, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
      if ((v23 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
LABEL_6:
    outlined destroy of Any?(v16, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSg_ADtMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSg_ADtMR);
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of Any?(v16, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
LABEL_10:
  v24 = *(v31 + 24);
  v25 = (v32 + v24);
  v26 = *(v32 + v24 + 4);
  v27 = (a2 + v24);
  v28 = *(a2 + v24 + 4);
  if (v26)
  {
    if (v28)
    {
LABEL_16:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }
  }

  else
  {
    if (*v25 != *v27)
    {
      LOBYTE(v28) = 1;
    }

    if ((v28 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_LeapSecondChange.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = *(v4 + 24);
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_LeapSecondInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSg_ADtMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - v15;
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v18 = v17[5];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 4);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 4);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_17;
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
      goto LABEL_17;
    }
  }

  v23 = v17[6];
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24 == 5)
  {
    if (v25 != 5)
    {
      goto LABEL_17;
    }
  }

  else if (v24 != v25)
  {
    goto LABEL_17;
  }

  v26 = v17[7];
  v27 = *(v13 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v26, v16, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMR);
  v28 = a2 + v26;
  v29 = v27;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v28, &v16[v27], &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMR);
  v30 = *(v5 + 48);
  if (v30(v16, 1, v4) == 1)
  {
    if (v30(&v16[v29], 1, v4) == 1)
    {
      outlined destroy of Any?(v16, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMR);
LABEL_20:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v31 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v31 & 1;
    }

    goto LABEL_16;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16, v12, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMR);
  if (v30(&v16[v29], 1, v4) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v12, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);
LABEL_16:
    outlined destroy of Any?(v16, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSg_ADtMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSg_ADtMR);
    goto LABEL_17;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v16[v29], v8, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);
  v33 = specialized static CLP_LogEntry_PrivateData_LeapSecondChange.== infix(_:_:)(v12, v8);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v12, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);
  outlined destroy of Any?(v16, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMR);
  if (v33)
  {
    goto LABEL_20;
  }

LABEL_17:
  v31 = 0;
  return v31 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_GpsTimeInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
  v56 = *(v4 - 8);
  v57 = v4;
  v5 = *(v56 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v55 = &v52 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSg_ADtMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSg_ADtMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v58 = &v52 - v13;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v52 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSg_ADtMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSg_ADtMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v52 - v25;
  v27 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  v28 = *(v27 + 20);
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 4);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 4);
  if (v30)
  {
    if (!v32)
    {
      goto LABEL_21;
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
      goto LABEL_21;
    }
  }

  v52 = v7;
  v59 = a2;
  v33 = *(v27 + 24);
  v34 = a1;
  v35 = *(v23 + 48);
  v53 = v34;
  v54 = v27;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v34 + v33, v26, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v59 + v33, &v26[v35], &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v36 = *(v15 + 48);
  if (v36(v26, 1, v14) != 1)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v26, v22, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
    if (v36(&v26[v35], 1, v14) != 1)
    {
      outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v26[v35], v18, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
      v40 = specialized static CLP_LogEntry_PrivateData_LeapSecondInfo.== infix(_:_:)(v22, v18);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v18, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v22, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
      outlined destroy of Any?(v26, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
      if ((v40 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_14;
    }

    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v22, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
LABEL_12:
    v37 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSg_ADtMd;
    v38 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSg_ADtMR;
    v39 = v26;
LABEL_20:
    outlined destroy of Any?(v39, v37, v38);
    goto LABEL_21;
  }

  if (v36(&v26[v35], 1, v14) != 1)
  {
    goto LABEL_12;
  }

  outlined destroy of Any?(v26, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
LABEL_14:
  v41 = *(v54 + 28);
  v42 = *(v11 + 48);
  v43 = v58;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v53 + v41, v58, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v59 + v41, v43 + v42, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMR);
  v44 = v57;
  v45 = *(v56 + 48);
  if (v45(v43, 1, v57) == 1)
  {
    if (v45(v43 + v42, 1, v44) == 1)
    {
      outlined destroy of Any?(v43, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMR);
LABEL_24:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v47 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v47 & 1;
    }

    goto LABEL_19;
  }

  v46 = v55;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v43, v55, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMR);
  if (v45(v43 + v42, 1, v44) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v46, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);
LABEL_19:
    v37 = &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSg_ADtMd;
    v38 = &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSg_ADtMR;
    v39 = v43;
    goto LABEL_20;
  }

  v49 = v43 + v42;
  v50 = v52;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v49, v52, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);
  v51 = specialized static CLP_LogEntry_PrivateData_GpsToUtcConversion.== infix(_:_:)(v46, v50);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v50, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v46, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);
  outlined destroy of Any?(v43, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMR);
  if (v51)
  {
    goto LABEL_24;
  }

LABEL_21:
  v47 = 0;
  return v47 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_FullSvTime.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16 == 6)
  {
    if (v17 != 6)
    {
      return 0;
    }
  }

  else if (v16 != v17)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_GalileoE1SyncState.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = v5[5];
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if (v7 == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }
  }

  else if (v8 == 2 || ((v7 ^ v8) & 1) != 0)
  {
    return 0;
  }

  v9 = v5[6];
  v10 = *(a1 + v9);
  v11 = *(a2 + v9);
  if (v10 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else if (v11 == 2 || ((v10 ^ v11) & 1) != 0)
  {
    return 0;
  }

  v12 = v5[7];
  v13 = *(a1 + v12);
  v14 = *(a2 + v12);
  if (v13 == 2)
  {
    if (v14 != 2)
    {
      return 0;
    }
  }

  else if (v14 == 2 || ((v13 ^ v14) & 1) != 0)
  {
    return 0;
  }

  v15 = v5[8];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16 == 2)
  {
    if (v17 != 2)
    {
      return 0;
    }
  }

  else if (v17 == 2 || ((v16 ^ v17) & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_ReceivedTimeStamp.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = v5[5];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 8);
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (*v7 != *v9)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = v5[6];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = *(a2 + v11 + 8);
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (*v12 != *v14)
    {
      LOBYTE(v15) = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  v16 = v5[7];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = *(a2 + v16 + 8);
  if (v18)
  {
    if (!v20)
    {
      return 0;
    }
  }

  else
  {
    if (*v17 != *v19)
    {
      LOBYTE(v20) = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_FrequencyOffset.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = v5[5];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 8);
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (*v7 != *v9)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = v5[6];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = *(a2 + v11 + 8);
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (*v12 != *v14)
    {
      LOBYTE(v15) = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  v16 = v5[7];
  v17 = *(a1 + v16);
  v18 = *(a2 + v16);
  if (v17 == 2)
  {
    if (v18 != 2)
    {
      return 0;
    }
  }

  else if (v18 == 2 || ((v17 ^ v18) & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *(a3(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8 != v9)
  {
    v10 = *(a1 + v7);

    v11 = a4(v8, v9);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_ReceiverClockModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[9];
  v26 = *(a1 + v25);
  v27 = *(a2 + v25);
  if (v26 == 2)
  {
    if (v27 != 2)
    {
      return 0;
    }
  }

  else if (v27 == 2 || ((v26 ^ v27) & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_Clock.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
  v80 = *(v4 - 8);
  v81 = v4;
  v5 = *(v80 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMd, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v77 = &v73 - v10;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSg_ADtMd, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSg_ADtMR);
  v11 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v13 = &v73 - v12;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  v84 = *(v14 - 8);
  v85 = v14;
  v15 = *(v84 + 64);
  MEMORY[0x28223BE20](v14);
  v78 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v82 = &v73 - v19;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSg_ADtMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSg_ADtMR);
  v20 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v86 = &v73 - v21;
  v22 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMR);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v73 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSg_ADtMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSg_ADtMR);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v34 = &v73 - v33;
  v35 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  v36 = *(v35 + 20);
  v37 = (a1 + v36);
  v38 = *(a1 + v36 + 8);
  v39 = (a2 + v36);
  v40 = *(a2 + v36 + 8);
  if (v38)
  {
    if (!v40)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (*v37 != *v39)
    {
      LOBYTE(v40) = 1;
    }

    if (v40)
    {
      goto LABEL_28;
    }
  }

  v73 = v7;
  v74 = v13;
  v41 = *(v35 + 24);
  v42 = *(v31 + 48);
  v75 = a1;
  v76 = v35;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v41, v34, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMR);
  v43 = a2 + v41;
  v44 = a2;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v43, &v34[v42], &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMR);
  v45 = *(v23 + 48);
  if (v45(v34, 1, v22) == 1)
  {
    if (v45(&v34[v42], 1, v22) == 1)
    {
      outlined destroy of Any?(v34, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMR);
      goto LABEL_14;
    }

LABEL_12:
    v46 = &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSg_ADtMd;
    v47 = &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSg_ADtMR;
    v48 = v34;
LABEL_27:
    outlined destroy of Any?(v48, v46, v47);
    goto LABEL_28;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v34, v30, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMR);
  if (v45(&v34[v42], 1, v22) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v30, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);
    goto LABEL_12;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v34[v42], v26, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);
  v49 = specialized static CLP_LogEntry_PrivateData_ReceiverClockModel.== infix(_:_:)(v30, v26);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v26, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v30, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);
  outlined destroy of Any?(v34, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMR);
  if ((v49 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  v50 = v75;
  v51 = *(v76 + 28);
  v52 = *(v83 + 48);
  v53 = v86;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v75 + v51, v86, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v44 + v51, v53 + v52, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMR);
  v54 = v85;
  v55 = *(v84 + 48);
  if (v55(v53, 1, v85) != 1)
  {
    v58 = v82;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v53, v82, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMR);
    v59 = v55(v53 + v52, 1, v54);
    v57 = v74;
    if (v59 != 1)
    {
      v60 = v53 + v52;
      v61 = v78;
      outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v60, v78, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);
      v62 = specialized static CLP_LogEntry_PrivateData_ReceiverClockCorrections.== infix(_:_:)(v58, v61);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v61, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v58, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);
      outlined destroy of Any?(v53, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMR);
      if ((v62 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_21;
    }

    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v58, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);
    goto LABEL_19;
  }

  v56 = v55(v53 + v52, 1, v54);
  v57 = v74;
  if (v56 != 1)
  {
LABEL_19:
    v46 = &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSg_ADtMd;
    v47 = &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSg_ADtMR;
    v48 = v53;
    goto LABEL_27;
  }

  outlined destroy of Any?(v53, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMR);
LABEL_21:
  v63 = *(v76 + 32);
  v64 = *(v79 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v50 + v63, v57, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMd, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v44 + v63, v57 + v64, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMd, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMR);
  v65 = v81;
  v66 = *(v80 + 48);
  if (v66(v57, 1, v81) == 1)
  {
    if (v66(v57 + v64, 1, v65) == 1)
    {
      outlined destroy of Any?(v57, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMd, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMR);
LABEL_31:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v68 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v68 & 1;
    }

    goto LABEL_26;
  }

  v67 = v77;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v57, v77, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMd, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMR);
  if (v66(v57 + v64, 1, v65) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v67, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);
LABEL_26:
    v46 = &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSg_ADtMd;
    v47 = &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSg_ADtMR;
    v48 = v57;
    goto LABEL_27;
  }

  v70 = v57 + v64;
  v71 = v73;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v70, v73, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);
  v72 = specialized static CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion.== infix(_:_:)(v67, v71);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v71, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v67, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);
  outlined destroy of Any?(v57, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMd, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMR);
  if (v72)
  {
    goto LABEL_31;
  }

LABEL_28:
  v68 = 0;
  return v68 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_GlonassId.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSg_ADtMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0);
  v18 = *(v17 + 20);
  v31 = a1;
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 4);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 4);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_13;
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
      goto LABEL_13;
    }
  }

  v23 = a2;
  v24 = *(v17 + 24);
  v25 = *(v13 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v31 + v24, v16, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v23 + v24, &v16[v25], &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMR);
  v26 = *(v5 + 48);
  if (v26(v16, 1, v4) == 1)
  {
    if (v26(&v16[v25], 1, v4) == 1)
    {
      outlined destroy of Any?(v16, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMR);
LABEL_16:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v27 & 1;
    }

    goto LABEL_12;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16, v12, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMR);
  if (v26(&v16[v25], 1, v4) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v12, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo);
LABEL_12:
    outlined destroy of Any?(v16, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSg_ADtMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSg_ADtMR);
    goto LABEL_13;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v16[v25], v8, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo);
  v29 = specialized static CLP_LogEntry_PrivateData_GlonassSlotInfo.== infix(_:_:)(v12, v8);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v12, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo);
  outlined destroy of Any?(v16, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMR);
  if (v29)
  {
    goto LABEL_16;
  }

LABEL_13:
  v27 = 0;
  return v27 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_ConstellationId.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v56 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v56 - v15;
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v18 = *(v17 + 20);
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 4);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 4);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_13;
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
      goto LABEL_13;
    }
  }

  v23 = a1;
  v24 = a2;
  v25 = *(v17 + 24);
  v26 = *(v13 + 48);
  v56 = v23;
  v57 = v17;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v23 + v25, v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v24 + v25, &v16[v26], &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMR);
  v27 = *(v5 + 48);
  if (v27(v16, 1, v4) != 1)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16, v12, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMR);
    if (v27(&v16[v26], 1, v4) != 1)
    {
      outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v16[v26], v8, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);
      v30 = specialized static CLP_LogEntry_PrivateData_GlonassId.== infix(_:_:)(v12, v8);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v12, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);
      outlined destroy of Any?(v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMR);
      if ((v30 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_16;
    }

    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v12, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);
LABEL_12:
    outlined destroy of Any?(v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSg_ADtMR);
    goto LABEL_13;
  }

  if (v27(&v16[v26], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  outlined destroy of Any?(v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMR);
LABEL_16:
  v31 = v57[7];
  v32 = (v56 + v31);
  v33 = *(v56 + v31 + 4);
  v34 = (v24 + v31);
  v35 = *(v24 + v31 + 4);
  if (v33)
  {
    if (!v35)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (*v32 != *v34)
    {
      LOBYTE(v35) = 1;
    }

    if (v35)
    {
      goto LABEL_13;
    }
  }

  v36 = v57[8];
  v37 = (v56 + v36);
  v38 = *(v56 + v36 + 4);
  v39 = (v24 + v36);
  v40 = *(v24 + v36 + 4);
  if (v38)
  {
    if (!v40)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (*v37 != *v39)
    {
      LOBYTE(v40) = 1;
    }

    if (v40)
    {
      goto LABEL_13;
    }
  }

  v41 = v57[9];
  v42 = (v56 + v41);
  v43 = *(v56 + v41 + 4);
  v44 = (v24 + v41);
  v45 = *(v24 + v41 + 4);
  if (v43)
  {
    if (!v45)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (*v42 != *v44)
    {
      LOBYTE(v45) = 1;
    }

    if (v45)
    {
      goto LABEL_13;
    }
  }

  v46 = v57[10];
  v47 = (v56 + v46);
  v48 = *(v56 + v46 + 4);
  v49 = (v24 + v46);
  v50 = *(v24 + v46 + 4);
  if (v48)
  {
    if (!v50)
    {
      goto LABEL_13;
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
      goto LABEL_13;
    }
  }

  v51 = v57[11];
  v52 = (v56 + v51);
  v53 = *(v56 + v51 + 4);
  v54 = (v24 + v51);
  v55 = *(v24 + v51 + 4);
  if ((v53 & 1) == 0)
  {
    if (*v52 != *v54)
    {
      LOBYTE(v55) = 1;
    }

    if (v55)
    {
      goto LABEL_13;
    }

LABEL_46:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v28 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v28 & 1;
  }

  if (v55)
  {
    goto LABEL_46;
  }

LABEL_13:
  v28 = 0;
  return v28 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_SvId.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSg_ADtMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v18 = *(v17 + 20);
  v31 = a1;
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 4);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 4);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_13;
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
      goto LABEL_13;
    }
  }

  v23 = a2;
  v24 = *(v17 + 24);
  v25 = *(v13 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v31 + v24, v16, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v23 + v24, &v16[v25], &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMR);
  v26 = *(v5 + 48);
  if (v26(v16, 1, v4) == 1)
  {
    if (v26(&v16[v25], 1, v4) == 1)
    {
      outlined destroy of Any?(v16, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMR);
LABEL_16:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v27 & 1;
    }

    goto LABEL_12;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16, v12, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMR);
  if (v26(&v16[v25], 1, v4) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v12, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId);
LABEL_12:
    outlined destroy of Any?(v16, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSg_ADtMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSg_ADtMR);
    goto LABEL_13;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v16[v25], v8, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId);
  v29 = specialized static CLP_LogEntry_PrivateData_ConstellationId.== infix(_:_:)(v12, v8);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v12, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId);
  outlined destroy of Any?(v16, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMR);
  if (v29)
  {
    goto LABEL_16;
  }

LABEL_13:
  v27 = 0;
  return v27 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_GlonassSlotInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = *(v4 + 24);
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11 == 5)
  {
    if (v12 != 5)
    {
      return 0;
    }
  }

  else if (v11 != v12)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotSource and conformance CLP_LogEntry_PrivateData_GlonassSlotSource()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSlotSource and conformance CLP_LogEntry_PrivateData_GlonassSlotSource;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSlotSource and conformance CLP_LogEntry_PrivateData_GlonassSlotSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSlotSource and conformance CLP_LogEntry_PrivateData_GlonassSlotSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSlotSource and conformance CLP_LogEntry_PrivateData_GlonassSlotSource;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSlotSource and conformance CLP_LogEntry_PrivateData_GlonassSlotSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSlotSource and conformance CLP_LogEntry_PrivateData_GlonassSlotSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSlotSource and conformance CLP_LogEntry_PrivateData_GlonassSlotSource;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSlotSource and conformance CLP_LogEntry_PrivateData_GlonassSlotSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSlotSource and conformance CLP_LogEntry_PrivateData_GlonassSlotSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSlotSource and conformance CLP_LogEntry_PrivateData_GlonassSlotSource;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSlotSource and conformance CLP_LogEntry_PrivateData_GlonassSlotSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSlotSource and conformance CLP_LogEntry_PrivateData_GlonassSlotSource);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SatelliteSystem and conformance CLP_LogEntry_PrivateData_SatelliteSystem()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SatelliteSystem and conformance CLP_LogEntry_PrivateData_SatelliteSystem;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SatelliteSystem and conformance CLP_LogEntry_PrivateData_SatelliteSystem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SatelliteSystem and conformance CLP_LogEntry_PrivateData_SatelliteSystem);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SatelliteSystem and conformance CLP_LogEntry_PrivateData_SatelliteSystem;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SatelliteSystem and conformance CLP_LogEntry_PrivateData_SatelliteSystem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SatelliteSystem and conformance CLP_LogEntry_PrivateData_SatelliteSystem);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SatelliteSystem and conformance CLP_LogEntry_PrivateData_SatelliteSystem;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SatelliteSystem and conformance CLP_LogEntry_PrivateData_SatelliteSystem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SatelliteSystem and conformance CLP_LogEntry_PrivateData_SatelliteSystem);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SatelliteSystem and conformance CLP_LogEntry_PrivateData_SatelliteSystem;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SatelliteSystem and conformance CLP_LogEntry_PrivateData_SatelliteSystem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SatelliteSystem and conformance CLP_LogEntry_PrivateData_SatelliteSystem);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_Band and conformance CLP_LogEntry_PrivateData_Band()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Band and conformance CLP_LogEntry_PrivateData_Band;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Band and conformance CLP_LogEntry_PrivateData_Band)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Band and conformance CLP_LogEntry_PrivateData_Band);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Band and conformance CLP_LogEntry_PrivateData_Band;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Band and conformance CLP_LogEntry_PrivateData_Band)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Band and conformance CLP_LogEntry_PrivateData_Band);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Band and conformance CLP_LogEntry_PrivateData_Band;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Band and conformance CLP_LogEntry_PrivateData_Band)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Band and conformance CLP_LogEntry_PrivateData_Band);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Band and conformance CLP_LogEntry_PrivateData_Band;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Band and conformance CLP_LogEntry_PrivateData_Band)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Band and conformance CLP_LogEntry_PrivateData_Band);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_FullSvTimeSource and conformance CLP_LogEntry_PrivateData_FullSvTimeSource()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FullSvTimeSource and conformance CLP_LogEntry_PrivateData_FullSvTimeSource;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FullSvTimeSource and conformance CLP_LogEntry_PrivateData_FullSvTimeSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FullSvTimeSource and conformance CLP_LogEntry_PrivateData_FullSvTimeSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FullSvTimeSource and conformance CLP_LogEntry_PrivateData_FullSvTimeSource;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FullSvTimeSource and conformance CLP_LogEntry_PrivateData_FullSvTimeSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FullSvTimeSource and conformance CLP_LogEntry_PrivateData_FullSvTimeSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FullSvTimeSource and conformance CLP_LogEntry_PrivateData_FullSvTimeSource;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FullSvTimeSource and conformance CLP_LogEntry_PrivateData_FullSvTimeSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FullSvTimeSource and conformance CLP_LogEntry_PrivateData_FullSvTimeSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FullSvTimeSource and conformance CLP_LogEntry_PrivateData_FullSvTimeSource;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FullSvTimeSource and conformance CLP_LogEntry_PrivateData_FullSvTimeSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FullSvTimeSource and conformance CLP_LogEntry_PrivateData_FullSvTimeSource);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MeasurementDetectionMethod and conformance CLP_LogEntry_PrivateData_MeasurementDetectionMethod()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementDetectionMethod and conformance CLP_LogEntry_PrivateData_MeasurementDetectionMethod;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementDetectionMethod and conformance CLP_LogEntry_PrivateData_MeasurementDetectionMethod)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementDetectionMethod and conformance CLP_LogEntry_PrivateData_MeasurementDetectionMethod);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementDetectionMethod and conformance CLP_LogEntry_PrivateData_MeasurementDetectionMethod;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementDetectionMethod and conformance CLP_LogEntry_PrivateData_MeasurementDetectionMethod)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementDetectionMethod and conformance CLP_LogEntry_PrivateData_MeasurementDetectionMethod);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementDetectionMethod and conformance CLP_LogEntry_PrivateData_MeasurementDetectionMethod;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementDetectionMethod and conformance CLP_LogEntry_PrivateData_MeasurementDetectionMethod)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementDetectionMethod and conformance CLP_LogEntry_PrivateData_MeasurementDetectionMethod);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementDetectionMethod and conformance CLP_LogEntry_PrivateData_MeasurementDetectionMethod;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementDetectionMethod and conformance CLP_LogEntry_PrivateData_MeasurementDetectionMethod)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementDetectionMethod and conformance CLP_LogEntry_PrivateData_MeasurementDetectionMethod);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MultipathIndicator and conformance CLP_LogEntry_PrivateData_MultipathIndicator()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MultipathIndicator and conformance CLP_LogEntry_PrivateData_MultipathIndicator;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MultipathIndicator and conformance CLP_LogEntry_PrivateData_MultipathIndicator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MultipathIndicator and conformance CLP_LogEntry_PrivateData_MultipathIndicator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MultipathIndicator and conformance CLP_LogEntry_PrivateData_MultipathIndicator;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MultipathIndicator and conformance CLP_LogEntry_PrivateData_MultipathIndicator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MultipathIndicator and conformance CLP_LogEntry_PrivateData_MultipathIndicator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MultipathIndicator and conformance CLP_LogEntry_PrivateData_MultipathIndicator;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MultipathIndicator and conformance CLP_LogEntry_PrivateData_MultipathIndicator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MultipathIndicator and conformance CLP_LogEntry_PrivateData_MultipathIndicator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MultipathIndicator and conformance CLP_LogEntry_PrivateData_MultipathIndicator;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MultipathIndicator and conformance CLP_LogEntry_PrivateData_MultipathIndicator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MultipathIndicator and conformance CLP_LogEntry_PrivateData_MultipathIndicator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvPositionSource and conformance CLP_LogEntry_PrivateData_SvPositionSource()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvPositionSource and conformance CLP_LogEntry_PrivateData_SvPositionSource;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvPositionSource and conformance CLP_LogEntry_PrivateData_SvPositionSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvPositionSource and conformance CLP_LogEntry_PrivateData_SvPositionSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvPositionSource and conformance CLP_LogEntry_PrivateData_SvPositionSource;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvPositionSource and conformance CLP_LogEntry_PrivateData_SvPositionSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvPositionSource and conformance CLP_LogEntry_PrivateData_SvPositionSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvPositionSource and conformance CLP_LogEntry_PrivateData_SvPositionSource;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvPositionSource and conformance CLP_LogEntry_PrivateData_SvPositionSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvPositionSource and conformance CLP_LogEntry_PrivateData_SvPositionSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvPositionSource and conformance CLP_LogEntry_PrivateData_SvPositionSource;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvPositionSource and conformance CLP_LogEntry_PrivateData_SvPositionSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvPositionSource and conformance CLP_LogEntry_PrivateData_SvPositionSource);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_IonosphericCorrectionSource and conformance CLP_LogEntry_PrivateData_IonosphericCorrectionSource()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IonosphericCorrectionSource and conformance CLP_LogEntry_PrivateData_IonosphericCorrectionSource;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IonosphericCorrectionSource and conformance CLP_LogEntry_PrivateData_IonosphericCorrectionSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IonosphericCorrectionSource and conformance CLP_LogEntry_PrivateData_IonosphericCorrectionSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IonosphericCorrectionSource and conformance CLP_LogEntry_PrivateData_IonosphericCorrectionSource;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IonosphericCorrectionSource and conformance CLP_LogEntry_PrivateData_IonosphericCorrectionSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IonosphericCorrectionSource and conformance CLP_LogEntry_PrivateData_IonosphericCorrectionSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IonosphericCorrectionSource and conformance CLP_LogEntry_PrivateData_IonosphericCorrectionSource;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IonosphericCorrectionSource and conformance CLP_LogEntry_PrivateData_IonosphericCorrectionSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IonosphericCorrectionSource and conformance CLP_LogEntry_PrivateData_IonosphericCorrectionSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IonosphericCorrectionSource and conformance CLP_LogEntry_PrivateData_IonosphericCorrectionSource;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IonosphericCorrectionSource and conformance CLP_LogEntry_PrivateData_IonosphericCorrectionSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IonosphericCorrectionSource and conformance CLP_LogEntry_PrivateData_IonosphericCorrectionSource);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge and conformance CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge and conformance CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge and conformance CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge and conformance CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge and conformance CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge and conformance CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge and conformance CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge and conformance CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge and conformance CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge and conformance CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge and conformance CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge and conformance CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge and conformance CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated and conformance CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated and conformance CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated and conformance CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated and conformance CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated and conformance CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated and conformance CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated and conformance CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated and conformance CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated and conformance CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated and conformance CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated and conformance CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated and conformance CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated and conformance CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvReferencePoint and conformance CLP_LogEntry_PrivateData_SvReferencePoint()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvReferencePoint and conformance CLP_LogEntry_PrivateData_SvReferencePoint;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvReferencePoint and conformance CLP_LogEntry_PrivateData_SvReferencePoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvReferencePoint and conformance CLP_LogEntry_PrivateData_SvReferencePoint);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvReferencePoint and conformance CLP_LogEntry_PrivateData_SvReferencePoint;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvReferencePoint and conformance CLP_LogEntry_PrivateData_SvReferencePoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvReferencePoint and conformance CLP_LogEntry_PrivateData_SvReferencePoint);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvReferencePoint and conformance CLP_LogEntry_PrivateData_SvReferencePoint;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvReferencePoint and conformance CLP_LogEntry_PrivateData_SvReferencePoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvReferencePoint and conformance CLP_LogEntry_PrivateData_SvReferencePoint);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvReferencePoint and conformance CLP_LogEntry_PrivateData_SvReferencePoint;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvReferencePoint and conformance CLP_LogEntry_PrivateData_SvReferencePoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvReferencePoint and conformance CLP_LogEntry_PrivateData_SvReferencePoint);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CLP_LogEntry_PrivateData_SatelliteSystem(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CLP_LogEntry_PrivateData_SatelliteSystem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CLP_LogEntry_PrivateData_Band(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CLP_LogEntry_PrivateData_Band(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CLP_LogEntry_PrivateData_GlonassSlotSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CLP_LogEntry_PrivateData_GlonassSlotSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void type metadata completion function for CLP_LogEntry_PrivateData_ConstellationId()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_GlonassId?, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_SvPositionAtTime(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6, void (*a7)(uint64_t))
{
  type metadata accessor for UnknownStorage();
  if (v11 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, a4, a5, MEMORY[0x277D83D88]);
    if (v12 <= 0x3F)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, a6, a7);
      if (v13 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_GpsL1SyncState()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_GpsL2CSyncState(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, a4, a5, MEMORY[0x277D83D88]);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_GalileoE5SyncState()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_234Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t __swift_store_extra_inhabitant_index_235Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void type metadata completion function for CLP_LogEntry_PrivateData_SvTime(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    if (v8 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, a4, a5, MEMORY[0x277D83D88]);
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_324Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t __swift_store_extra_inhabitant_index_325Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void type metadata completion function for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_PhaseTracking()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for UInt64?, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_SignalCorrelationPeak()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_SvTime?, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_FrequencyOffset?, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Float?, MEMORY[0x277D83A90], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_SbasL1SyncState(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, a4, a5, MEMORY[0x277D83D88]);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for CLP_LogEntry_PrivateData_SyncState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = type metadata accessor for UnknownStorage();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_351Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t __swift_store_extra_inhabitant_index_352Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void type metadata completion function for CLP_LogEntry_PrivateData_ReceiverClockModel()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Float?, MEMORY[0x277D83A90], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Int64?, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Float?, MEMORY[0x277D83A90], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_Clock()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for UInt64?, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_ReceiverClockModel?, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_ReceiverClockCorrections?, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);
        if (v3 <= 0x3F)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion?, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_SvBandCorrections()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_Band?, &type metadata for CLP_LogEntry_PrivateData_Band, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_IonosphericCorrectionSource?, &type metadata for CLP_LogEntry_PrivateData_IonosphericCorrectionSource, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_207Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = type metadata accessor for UnknownStorage();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = *(v11 + 48);

    return v12(a1, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + *(a3 + 24);

    return v15(v16, a2, v14);
  }
}

uint64_t __swift_store_extra_inhabitant_index_208Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = type metadata accessor for UnknownStorage();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = *(v13 + 56);

    return v14(a1, a2, a2, v12);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + *(a4 + 24);

    return v17(v18, a2, a2, v16);
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_PolynomialOrbit()
{
  type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for [Double], MEMORY[0x277D839F8], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_ReceiverBandCorrections()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_Band?, &type metadata for CLP_LogEntry_PrivateData_Band, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Float?, MEMORY[0x277D83A90], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_GlonassSlotInfo(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6, uint64_t a7)
{
  type metadata accessor for UnknownStorage();
  if (v11 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, a4, a5, MEMORY[0x277D83D88]);
    if (v12 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, a6, a7, MEMORY[0x277D83D88]);
      if (v13 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_LeapSecondInfo()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge?, &type metadata for CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_LeapSecondChange?, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_GpsToUtcConversion()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for UInt64?, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_GpsTimeInfo()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_LeapSecondInfo?, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_GpsToUtcConversion?, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_GlonassTimeInfo()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated?, &type metadata for CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_GlonassSubsecondConversion?, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_SubSecondConversion()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for UInt64?, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_531Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = type metadata accessor for UnknownStorage();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = v10;
    v13 = *(v11 + 48);
    v14 = a1;
LABEL_5:

    return v13(v14, a2, v12);
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v16 = *(v15 - 8);
  if (*(v16 + 84) == a2)
  {
    v12 = v15;
    v13 = *(v16 + 48);
    v14 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + *(a3 + 28);

  return v19(v20, a2, v18);
}

uint64_t __swift_store_extra_inhabitant_index_532Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = type metadata accessor for UnknownStorage();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = v12;
    v15 = *(v13 + 56);
    v16 = a1;
LABEL_5:

    return v15(v16, a2, a2, v14);
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v18 = *(v17 - 8);
  if (*(v18 + 84) == a3)
  {
    v14 = v17;
    v15 = *(v18 + 56);
    v16 = a1 + *(a4 + 24);
    goto LABEL_5;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + *(a4 + 28);

  return v21(v22, a2, a2, v20);
}

void type metadata completion function for CLP_LogEntry_PrivateData_GalileoTimeInfo()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_LeapSecondInfo?, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_SubSecondConversion?, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_NavicTimeInfo()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_SubSecondConversion?, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_KlobucharModelParameters()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for UInt64?, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Float?, MEMORY[0x277D83A90], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_SvId?, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_Band?, &type metadata for CLP_LogEntry_PrivateData_Band, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_SvReferencePoint?, &type metadata for CLP_LogEntry_PrivateData_SvReferencePoint, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_SfcfXyz?, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for UInt32?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata completion function for CLP_LogEntry_PrivateData_SyncState._StorageClass()
{
  type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_GpsL1SyncState?, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_GpsL2CSyncState?, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
    if (v4 <= 0x3F)
    {
      v19 = *(v3 - 8) + 64;
      type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_GpsL5SyncState?, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
      if (v6 <= 0x3F)
      {
        v20 = *(v5 - 8) + 64;
        type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_GlonassL1fSyncState?, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
        if (v8 <= 0x3F)
        {
          v21 = *(v7 - 8) + 64;
          type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_BeidouB1SyncState?, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
          if (v10 <= 0x3F)
          {
            v22 = *(v9 - 8) + 64;
            type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_BeidouB2SyncState?, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
            if (v12 <= 0x3F)
            {
              v23 = *(v11 - 8) + 64;
              type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_GalileoE1SyncState?, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
              if (v14 <= 0x3F)
              {
                v24 = *(v13 - 8) + 64;
                type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_GalileoE5SyncState?, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
                if (v16 <= 0x3F)
                {
                  v25 = *(v15 - 8) + 64;
                  type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_SbasL1SyncState?, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
                  if (v18 <= 0x3F)
                  {
                    v26 = *(v17 - 8) + 64;
                    swift_updateClassMetadata2();
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

void type metadata completion function for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass()
{
  type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_FullSvTime?, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_SvMeasurementUsage?, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_Measurement._StorageClass()
{
  type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_SvId?, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  if (v1 <= 0x3F)
  {
    v15 = *(v0 - 8) + 64;
    type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_SyncState?, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
    if (v3 <= 0x3F)
    {
      v16 = *(v2 - 8) + 64;
      type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_SvTime?, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
      if (v5 <= 0x3F)
      {
        v17 = *(v4 - 8) + 64;
        type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_FrequencyOffset?, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
        if (v7 <= 0x3F)
        {
          v8 = *(v6 - 8) + 64;
          type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_PhaseTracking?, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
          if (v10 <= 0x3F)
          {
            v18 = *(v9 - 8) + 64;
            type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_MeasurementExtension?, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
            if (v12 <= 0x3F)
            {
              v19 = *(v11 - 8) + 64;
              type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking?, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
              if (v14 <= 0x3F)
              {
                v20 = *(v13 - 8) + 64;
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_MeasurementReport._StorageClass()
{
  type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_Clock?, type metadata accessor for CLP_LogEntry_PrivateData_Clock);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_SvInfo._StorageClass()
{
  type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_SvId?, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_PolynomialOrbit?, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass()
{
  type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_LeapSecondInfo?, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_SubSecondConversion?, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass()
{
  type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_GpsTimeInfo?, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_GlonassTimeInfo?, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_BeidouTimeInfo?, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_GalileoTimeInfo?, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_NavicTimeInfo?, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass()
{
  type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_ReceivedTimeStamp?, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_MeasurementReport?, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_TimeConversionInfo?, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_KlobucharModelParameters?, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t CLP_LogEntry_LogEntry.eventRecordTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for CLP_LogEntry_LogEntry(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 24), v6, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_LogEntry.TimeStamp(v6, a1, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
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
    return outlined destroy of Any?(v6, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR);
  }

  return result;
}

int *CLP_LogEntry_LogEntry.TimeStamp.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
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

uint64_t CLP_LogEntry_LogEntry.eventRecordTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_LogEntry(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR);
  outlined init with take of CLP_LogEntry_LogEntry.TimeStamp(a1, v1 + v3, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
  v4 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_LogEntry.eventRecordTime.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_LogEntry(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR);
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
      outlined destroy of Any?(v8, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_LogEntry.TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
  }

  return CLP_LogEntry_LogEntry.eventRecordTime.modify;
}

BOOL CLP_LogEntry_LogEntry.hasEventRecordTime.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for CLP_LogEntry_LogEntry(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v0 + *(v5 + 24), v4, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_LogEntry.clearEventRecordTime()()
{
  v1 = *(type metadata accessor for CLP_LogEntry_LogEntry(0) + 24);
  outlined destroy of Any?(v0 + v1, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR);
  v2 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t CLP_LogEntry_LogEntry.privateDataCapture.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for CLP_LogEntry_LogEntry(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 28), v6, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_LogEntry.TimeStamp(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
  }

  CLP_LogEntry_PrivateData_PrivateDataCapture.init()(a1);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR);
  }

  return result;
}

uint64_t outlined init with take of CLP_LogEntry_LogEntry.TimeStamp(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t CLP_LogEntry_LogEntry.privateDataCapture.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_LogEntry(0) + 28);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR);
  outlined init with take of CLP_LogEntry_LogEntry.TimeStamp(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_LogEntry.privateDataCapture.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_LogEntry(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    CLP_LogEntry_PrivateData_PrivateDataCapture.init()(v14);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_LogEntry.TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
  }

  return CLP_LogEntry_LogEntry.privateDataCapture.modify;
}

void CLP_LogEntry_LogEntry.eventRecordTime.modify(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 12);
  v10 = (*a1)[4];
  v11 = (*a1)[5];
  v12 = (*a1)[2];
  v13 = (*a1)[3];
  v14 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of CLP_LogEntry_LogEntry.TimeStamp(v11, v10, a5);
    outlined destroy of Any?(v14 + v9, a3, a4);
    outlined init with take of CLP_LogEntry_LogEntry.TimeStamp(v10, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
    outlined destroy of CLP_LogEntry_LogEntry.TimeStamp(v11, a5);
  }

  else
  {
    outlined destroy of Any?(v14 + v9, a3, a4);
    outlined init with take of CLP_LogEntry_LogEntry.TimeStamp(v11, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
  }

  free(v11);
  free(v10);
  free(v15);

  free(v8);
}

uint64_t outlined init with copy of CLP_LogEntry_LogEntry.TimeStamp(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of CLP_LogEntry_LogEntry.TimeStamp(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL CLP_LogEntry_LogEntry.hasPrivateDataCapture.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for CLP_LogEntry_LogEntry(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v0 + *(v5 + 28), v4, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_LogEntry.clearPrivateDataCapture()()
{
  v1 = *(type metadata accessor for CLP_LogEntry_LogEntry(0) + 28);
  outlined destroy of Any?(v0 + v1, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR);
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

double CLP_LogEntry_LogEntry.TimeStamp.cfAbsoluteTimeS.getter()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 20);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_LogEntry.TimeStamp.cfAbsoluteTimeS.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_LogEntry.TimeStamp.cfAbsoluteTimeS.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 20);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return CLP_LogEntry_AONLoc_Request.ResultOptions.endCfaTimeSec.modify;
}

Swift::Void __swiftcall CLP_LogEntry_LogEntry.TimeStamp.clearCfAbsoluteTimeS()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double CLP_LogEntry_LogEntry.TimeStamp.machAbsoluteTimeS.getter()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 24);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_LogEntry.TimeStamp.machAbsoluteTimeS.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_LogEntry.TimeStamp.machAbsoluteTimeS.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 24);
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

Swift::Void __swiftcall CLP_LogEntry_LogEntry.TimeStamp.clearMachAbsoluteTimeS()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double CLP_LogEntry_LogEntry.TimeStamp.machContinuousTimeS.getter()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 28);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_LogEntry.TimeStamp.machContinuousTimeS.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_LogEntry.TimeStamp.machContinuousTimeS.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 28);
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

Swift::Void __swiftcall CLP_LogEntry_LogEntry.TimeStamp.clearMachContinuousTimeS()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_LogEntry.TimeStamp.pipelinedMonotonicTimeNs.getter()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 32));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t CLP_LogEntry_LogEntry.TimeStamp.pipelinedMonotonicTimeNs.setter(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_LogEntry.TimeStamp.pipelinedMonotonicTimeNs.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 32);
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

Swift::Void __swiftcall CLP_LogEntry_LogEntry.TimeStamp.clearPipelinedMonotonicTimeNs()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_LogEntry.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_LogEntry(0);
  v3 = a1 + v2[5];
  ExtensionFieldValueSet.init()();
  v4 = v2[6];
  v5 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v2[7];
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, 1, 1, v7);
}

uint64_t variable initialization expression of CLP_LogEntry_LogEntry._eventRecordTime@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t CLP_LogEntry_LogEntry._protobuf_extensionFieldValues.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CLP_LogEntry_LogEntry(0) + 20);
  v4 = type metadata accessor for ExtensionFieldValueSet();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CLP_LogEntry_LogEntry._protobuf_extensionFieldValues.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_LogEntry(0) + 20);
  v4 = type metadata accessor for ExtensionFieldValueSet();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t protocol witness for ExtensibleMessage._protobuf_extensionFieldValues.getter in conformance CLP_LogEntry_LogEntry@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for ExtensionFieldValueSet();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for ExtensibleMessage._protobuf_extensionFieldValues.setter in conformance CLP_LogEntry_LogEntry(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for ExtensionFieldValueSet();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t CLP_LogEntry_LogEntry.decodeMessage<A>(decoder:)()
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

      if (result == 4)
      {
        break;
      }

      if (result == 2)
      {
        v3 = type metadata accessor for CLP_LogEntry_LogEntry(0);
        lazy protocol witness table accessor for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry(&lazy protocol witness table cache variable for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry, type metadata accessor for CLP_LogEntry_LogEntry);
        v4 = *(v3 + 20);
        dispatch thunk of Decoder.decodeExtensionField(values:messageType:fieldNumber:)();
        goto LABEL_5;
      }

      if (result == 1)
      {
        v5 = v0;
        v6 = *(type metadata accessor for CLP_LogEntry_LogEntry(0) + 24);
        type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
        v7 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp;
        v8 = &lazy protocol witness table cache variable for type CLP_LogEntry_LogEntry.TimeStamp and conformance CLP_LogEntry_LogEntry.TimeStamp;
LABEL_12:
        lazy protocol witness table accessor for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry(v8, v7);
        v0 = v5;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v5 = v0;
    v9 = *(type metadata accessor for CLP_LogEntry_LogEntry(0) + 28);
    type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture;
    v8 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PrivateDataCapture and conformance CLP_LogEntry_PrivateData_PrivateDataCapture;
    goto LABEL_12;
  }

  return result;
}

uint64_t CLP_LogEntry_LogEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in CLP_LogEntry_LogEntry.traverse<A>(visitor:)(v5, a1, a2, a3);
  if (!v4)
  {
    v10 = *(type metadata accessor for CLP_LogEntry_LogEntry(0) + 20);
    dispatch thunk of Visitor.visitExtensionFields(fields:start:end:)();
    closure #2 in CLP_LogEntry_LogEntry.traverse<A>(visitor:)(v5, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CLP_LogEntry_LogEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_LogEntry(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 24), v8, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_LogEntry.TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry(&lazy protocol witness table cache variable for type CLP_LogEntry_LogEntry.TimeStamp and conformance CLP_LogEntry_LogEntry.TimeStamp, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_LogEntry.TimeStamp(v13, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
}

uint64_t closure #2 in CLP_LogEntry_LogEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_LogEntry(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 28), v8, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR);
  }

  outlined init with take of CLP_LogEntry_LogEntry.TimeStamp(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
  lazy protocol witness table accessor for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PrivateDataCapture and conformance CLP_LogEntry_PrivateData_PrivateDataCapture, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_LogEntry.TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_LogEntry@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a2 + a1[5];
  ExtensionFieldValueSet.init()();
  v5 = a1[6];
  v6 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[7];
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_LogEntry(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry(&lazy protocol witness table cache variable for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry, type metadata accessor for CLP_LogEntry_LogEntry);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_LogEntry(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry(&lazy protocol witness table cache variable for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry, type metadata accessor for CLP_LogEntry_LogEntry);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_LogEntry(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry(&lazy protocol witness table cache variable for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry, type metadata accessor for CLP_LogEntry_LogEntry);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t *CLP_LogEntry_LogEntry.TimeStamp.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static CLP_LogEntry_LogEntry.TimeStamp.protoMessageName;
}

uint64_t static CLP_LogEntry_LogEntry.TimeStamp.protoMessageName.getter()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  v0 = static CLP_LogEntry_LogEntry.TimeStamp.protoMessageName;

  return v0;
}

uint64_t CLP_LogEntry_LogEntry.TimeStamp.decodeMessage<A>(decoder:)()
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
        v1 = *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 28);
        goto LABEL_3;
      }

      if (result == 4)
      {
        v5 = *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 32);
        dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
      }
    }

    else if (result == 1)
    {
      v6 = *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 20);
LABEL_3:
      v0 = 0;
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }

    else if (result == 2)
    {
      v4 = *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 24);
      goto LABEL_3;
    }
  }
}

uint64_t CLP_LogEntry_LogEntry.TimeStamp.traverse<A>(visitor:)()
{
  result = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
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

  v10 = (v0 + v3[8]);
  if ((v10[1] & 1) == 0)
  {
    v11 = *v10;
    dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

Swift::Int CLP_LogEntry_LogEntry.hashValue.getter(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  lazy protocol witness table accessor for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_LogEntry.TimeStamp(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry(&lazy protocol witness table cache variable for type CLP_LogEntry_LogEntry.TimeStamp and conformance CLP_LogEntry_LogEntry.TimeStamp, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_LogEntry.TimeStamp(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry(&lazy protocol witness table cache variable for type CLP_LogEntry_LogEntry.TimeStamp and conformance CLP_LogEntry_LogEntry.TimeStamp, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_LogEntry.TimeStamp(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry(&lazy protocol witness table cache variable for type CLP_LogEntry_LogEntry.TimeStamp and conformance CLP_LogEntry_LogEntry.TimeStamp, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t specialized static CLP_LogEntry_LogEntry.TimeStamp.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 8);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_LogEntry.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v53 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
  v51 = *(v53 - 8);
  v3 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  v47 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = &v46 - v7;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSg_ADtMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSg_ADtMR);
  v8 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v52 = &v46 - v9;
  v10 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v46 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSg_AFtMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSg_AFtMR);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v46 - v22;
  v50 = type metadata accessor for CLP_LogEntry_LogEntry(0);
  v24 = *(v50 + 24);
  v25 = *(v20 + 56);
  v54 = a1;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v24, v23, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR);
  v26 = v55 + v24;
  v27 = v55;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v26, &v23[v25], &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR);
  v28 = *(v11 + 48);
  if (v28(v23, 1, v10) == 1)
  {
    if (v28(&v23[v25], 1, v10) == 1)
    {
      outlined destroy of Any?(v23, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v29 = &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSg_AFtMd;
    v30 = &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSg_AFtMR;
    v31 = v23;
LABEL_14:
    outlined destroy of Any?(v31, v29, v30);
    goto LABEL_15;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v23, v18, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR);
  if (v28(&v23[v25], 1, v10) == 1)
  {
    outlined destroy of CLP_LogEntry_LogEntry.TimeStamp(v18, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
    goto LABEL_6;
  }

  outlined init with take of CLP_LogEntry_LogEntry.TimeStamp(&v23[v25], v14, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
  v32 = specialized static CLP_LogEntry_LogEntry.TimeStamp.== infix(_:_:)(v18, v14);
  outlined destroy of CLP_LogEntry_LogEntry.TimeStamp(v14, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
  outlined destroy of CLP_LogEntry_LogEntry.TimeStamp(v18, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
  outlined destroy of Any?(v23, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR);
  if ((v32 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v33 = v50;
  v34 = *(v50 + 28);
  v35 = *(v49 + 48);
  v36 = v52;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v54 + v34, v52, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v27 + v34, v36 + v35, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR);
  v37 = *(v51 + 48);
  v38 = v53;
  if (v37(v36, 1, v53) != 1)
  {
    v39 = v48;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v36, v48, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR);
    if (v37(v36 + v35, 1, v38) != 1)
    {
      v42 = v36 + v35;
      v43 = v47;
      outlined init with take of CLP_LogEntry_LogEntry.TimeStamp(v42, v47, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
      lazy protocol witness table accessor for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PrivateDataCapture and conformance CLP_LogEntry_PrivateData_PrivateDataCapture, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
      v44 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of CLP_LogEntry_LogEntry.TimeStamp(v43, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
      outlined destroy of CLP_LogEntry_LogEntry.TimeStamp(v39, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
      outlined destroy of Any?(v36, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR);
      if ((v44 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    outlined destroy of CLP_LogEntry_LogEntry.TimeStamp(v39, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
    goto LABEL_13;
  }

  if (v37(v36 + v35, 1, v38) != 1)
  {
LABEL_13:
    v29 = &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSg_ADtMd;
    v30 = &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSg_ADtMR;
    v31 = v36;
    goto LABEL_14;
  }

  outlined destroy of Any?(v36, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR);
LABEL_18:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v45 = *(v33 + 20);
    type metadata accessor for ExtensionFieldValueSet();
    lazy protocol witness table accessor for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry(&lazy protocol witness table cache variable for type ExtensionFieldValueSet and conformance ExtensionFieldValueSet, MEMORY[0x277D21710]);
    v40 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v40 & 1;
  }

LABEL_15:
  v40 = 0;
  return v40 & 1;
}

uint64_t lazy protocol witness table accessor for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for CLP_LogEntry_LogEntry()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ExtensionFieldValueSet();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_LogEntry.TimeStamp?, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_PrivateDataCapture?, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata completion function for CLP_LogEntry_LogEntry.TimeStamp()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for Int64?);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Double?(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t ALResultOptions.toPb()@<X0>(void *a1@<X8>)
{
  CLP_LogEntry_AONLoc_Request.ResultOptions.init()(a1);
  v1 = ALResultOptions._maxBatchSize.getter();
  if ((v1 & 0x100000000) == 0)
  {
    CLP_LogEntry_AONLoc_Request.ResultOptions.batchSize.setter(v1);
  }

  v2 = ALResultOptions._intervalSec.getter();
  if ((v2 & 0x100000000) == 0)
  {
    CLP_LogEntry_AONLoc_Request.ResultOptions.repeatIntervalSec.setter(*&v2);
  }

  v3 = ALResultOptions._maxAgeSec.getter();
  if ((v3 & 0x100000000) == 0)
  {
    CLP_LogEntry_AONLoc_Request.ResultOptions.maxAgeSec.setter(*&v3);
  }

  started = ALResultOptions._startCfaTimeSec.getter();
  if ((v5 & 1) == 0)
  {
    CLP_LogEntry_AONLoc_Request.ResultOptions.startCfaTimeSec.setter(*&started);
  }

  result = ALResultOptions._endCfaTimeSec.getter();
  if ((v7 & 1) == 0)
  {
    return CLP_LogEntry_AONLoc_Request.ResultOptions.endCfaTimeSec.setter(*&result);
  }

  return result;
}

uint64_t ALResultOptions.serializedData()()
{
  v0 = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = (v14 - v5);
  v7 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  CLP_LogEntry_AONLoc_Request.init()(v10);
  CLP_LogEntry_AONLoc_Request.type.setter(3);
  CLP_LogEntry_AONLoc_Request.ResultOptions.init()(v6);
  ALResultOptions.intervalSec.getter();
  CLP_LogEntry_AONLoc_Request.ResultOptions.repeatIntervalSec.setter(v11);
  _s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVWOcTm_0(v6, v4, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
  CLP_LogEntry_AONLoc_Request.resultOptions.setter(v4);
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request, type metadata accessor for CLP_LogEntry_AONLoc_Request);
  v12 = Message.serializedData(partial:)();
  _s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVWOhTm_0(v6, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
  _s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVWOhTm_0(v10, type metadata accessor for CLP_LogEntry_AONLoc_Request);
  return v12;
}

uint64_t ALResultOptions.init(pb:)(uint64_t a1)
{
  ALResultOptions.init()();
  if (CLP_LogEntry_AONLoc_Request.ResultOptions.hasRepeatIntervalSec.getter())
  {
    CLP_LogEntry_AONLoc_Request.ResultOptions.repeatIntervalSec.getter();
    ALResultOptions._intervalSec.setter();
  }

  return _s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVWOhTm_0(a1, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
}

uint64_t ALResultOptions.init(data:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for BinaryDecodingOptions();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
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
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Request.ResultOptions and conformance CLP_LogEntry_AONLoc_Request.ResultOptions, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v2)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  _s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVWOcTm_0(v13, v11, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
  ALResultOptions.init()();
  if (CLP_LogEntry_AONLoc_Request.ResultOptions.hasRepeatIntervalSec.getter())
  {
    CLP_LogEntry_AONLoc_Request.ResultOptions.repeatIntervalSec.getter();
    LOBYTE(v15[0]) = 0;
    ALResultOptions._intervalSec.setter();
  }

  outlined consume of Data._Representation(a1, a2);
  _s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVWOhTm_0(v11, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
  return _s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVWOhTm_0(v13, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
}

uint64_t ALWiFiScanSingleAccessPoint.Band.init(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ALWiFiScanSingleAccessPoint.Band();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_278BC4C48 + a1);

  return v5(a2, v6, v4);
}

uint64_t CLP_LogEntry_PrivateData_WifiRfBand.init(_:)(uint64_t a1)
{
  v2 = type metadata accessor for ALWiFiScanSingleAccessPoint.Band();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 88))(a1, v2);
  if (v4 == *MEMORY[0x277CE4988])
  {
    return 0;
  }

  if (v4 == *MEMORY[0x277CE4970])
  {
    return 1;
  }

  if (v4 == *MEMORY[0x277CE4978])
  {
    return 2;
  }

  if (v4 != *MEMORY[0x277CE4980])
  {
    (*(v3 + 8))(a1, v2);
    return 0;
  }

  return 3;
}

uint64_t ALWiFiScanSingleAccessPoint.Mode.init(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ALWiFiScanSingleAccessPoint.Mode();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_278BC4C68 + a1);

  return v5(a2, v6, v4);
}

uint64_t CLP_LogEntry_PrivateData_WifiAccessPointMode.init(_:)(uint64_t a1)
{
  v2 = type metadata accessor for ALWiFiScanSingleAccessPoint.Mode();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 88))(a1, v2);
  if (v4 == *MEMORY[0x277CE49A8])
  {
    return 0;
  }

  if (v4 == *MEMORY[0x277CE4990])
  {
    return 1;
  }

  if (v4 == *MEMORY[0x277CE4998])
  {
    return 2;
  }

  if (v4 != *MEMORY[0x277CE49A0])
  {
    (*(v3 + 8))(a1, v2);
    return 0;
  }

  return 3;
}

uint64_t ALWiFiScanSingleAccessPoint.toPb(pb:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ALDataTypes27ALWiFiScanSingleAccessPointV4ModeOSgMd, &_s11ALDataTypes27ALWiFiScanSingleAccessPointV4ModeOSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v41 - v2;
  v44 = type metadata accessor for ALWiFiScanSingleAccessPoint.Mode();
  v4 = *(v44 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v44);
  v42 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v43 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ALDataTypes27ALWiFiScanSingleAccessPointV4BandOSgMd, &_s11ALDataTypes27ALWiFiScanSingleAccessPointV4BandOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for ALWiFiScanSingleAccessPoint.Band();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v41 - v20;
  v22 = MEMORY[0x23EEDA1F0](v19);
  if ((v23 & 1) == 0)
  {
    v22 = CLP_LogEntry_PrivateData_WifiAccessPoint.mac.setter(v22);
  }

  v24 = MEMORY[0x23EEDA250](v22);
  if (v25)
  {
    v24 = CLP_LogEntry_PrivateData_WifiAccessPoint.ssid.setter(v24, v25);
  }

  v26 = MEMORY[0x23EEDA2B0](v24);
  if ((v26 & 0x100000000) == 0)
  {
    v26 = CLP_LogEntry_PrivateData_WifiAccessPoint.rssiDb.setter(v26);
  }

  v27 = MEMORY[0x23EEDA2D0](v26);
  if ((v27 & 0x100000000) == 0)
  {
    v27 = CLP_LogEntry_PrivateData_WifiAccessPoint.channel.setter(v27);
  }

  v28 = MEMORY[0x23EEDA290](v27);
  if ((v28 & 0x100000000) == 0)
  {
    v28 = CLP_LogEntry_PrivateData_WifiAccessPoint.ageS.setter(*&v28);
  }

  v29 = MEMORY[0x23EEDA2F0](v28);
  if (v29 != 2)
  {
    v29 = CLP_LogEntry_PrivateData_WifiAccessPoint.isMoving.setter(v29 & 1);
  }

  v30 = MEMORY[0x23EEDA1B0](v29);
  if ((v30 & 0x100000000) == 0)
  {
    v30 = CLP_LogEntry_PrivateData_WifiAccessPoint.frequencyKhz.setter(v30);
  }

  v31 = MEMORY[0x23EEDA270](v30);
  if (v31 != 2)
  {
    v31 = CLP_LogEntry_PrivateData_WifiAccessPoint.isApplePersonalHotspot.setter(v31 & 1);
  }

  MEMORY[0x23EEDA210](v31);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v32 = outlined destroy of Any?(v12, &_s11ALDataTypes27ALWiFiScanSingleAccessPointV4BandOSgMd, &_s11ALDataTypes27ALWiFiScanSingleAccessPointV4BandOSgMR);
    goto LABEL_28;
  }

  (*(v14 + 32))(v21, v12, v13);
  (*(v14 + 16))(v18, v21, v13);
  v33 = (*(v14 + 88))(v18, v13);
  if (v33 != *MEMORY[0x277CE4988])
  {
    if (v33 == *MEMORY[0x277CE4970])
    {
      v34 = 1;
      goto LABEL_27;
    }

    if (v33 == *MEMORY[0x277CE4978])
    {
      v34 = 2;
      goto LABEL_27;
    }

    if (v33 == *MEMORY[0x277CE4980])
    {
      v34 = 3;
      goto LABEL_27;
    }

    (*(v14 + 8))(v18, v13);
  }

  v34 = 0;
LABEL_27:
  CLP_LogEntry_PrivateData_WifiAccessPoint.band.setter(v34);
  v32 = (*(v14 + 8))(v21, v13);
LABEL_28:
  MEMORY[0x23EEDA230](v32);
  v35 = v44;
  if ((*(v4 + 48))(v3, 1, v44) == 1)
  {
    return outlined destroy of Any?(v3, &_s11ALDataTypes27ALWiFiScanSingleAccessPointV4ModeOSgMd, &_s11ALDataTypes27ALWiFiScanSingleAccessPointV4ModeOSgMR);
  }

  v37 = v43;
  (*(v4 + 32))(v43, v3, v35);
  v38 = v42;
  (*(v4 + 16))(v42, v37, v35);
  v39 = (*(v4 + 88))(v38, v35);
  if (v39 != *MEMORY[0x277CE49A8])
  {
    if (v39 == *MEMORY[0x277CE4990])
    {
      v40 = 1;
      goto LABEL_38;
    }

    if (v39 == *MEMORY[0x277CE4998])
    {
      v40 = 2;
      goto LABEL_38;
    }

    if (v39 == *MEMORY[0x277CE49A0])
    {
      v40 = 3;
      goto LABEL_38;
    }

    (*(v4 + 8))(v38, v35);
  }

  v40 = 0;
LABEL_38:
  CLP_LogEntry_PrivateData_WifiAccessPoint.mode.setter(v40);
  return (*(v4 + 8))(v37, v35);
}

uint64_t ALWiFiScanSingleAccessPoint.toPb()@<X0>(uint64_t a1@<X8>)
{
  CLP_LogEntry_PrivateData_WifiAccessPoint.init()(a1);

  return ALWiFiScanSingleAccessPoint.toPb(pb:)();
}

uint64_t ALWiFiScanSingleAccessPoint.serializedData()()
{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  CLP_LogEntry_PrivateData_WifiAccessPoint.init()(v3);
  ALWiFiScanSingleAccessPoint.toPb(pb:)();
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAccessPoint and conformance CLP_LogEntry_PrivateData_WifiAccessPoint, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  v4 = Message.serializedData(partial:)();
  _s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVWOhTm_0(v3, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  return v4;
}

uint64_t ALWiFiScanResult.init(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for BinaryDecodingOptions();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
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
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiScanResult and conformance CLP_LogEntry_PrivateData_WifiScanResult, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v3)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  _s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVWOcTm_0(v15, v13, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
  ALWiFiScanResult.init(pb:)(v13, a3);
  outlined consume of Data._Representation(a1, a2);
  return _s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVWOhTm_0(v15, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
}

uint64_t ALWiFiScanResult.toPb()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v42 = *(v2 - 8);
  v3 = *(v42 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for ALWiFiScanSingleAccessPoint();
  v43 = *(v39 - 8);
  v6 = *(v43 + 64);
  MEMORY[0x28223BE20](v39);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ALDataTypes11ALTimeStampVSgMd, &_s11ALDataTypes11ALTimeStampVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v36 - v15;
  v17 = type metadata accessor for ALTimeStamp();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = CLP_LogEntry_PrivateData_WifiScanResult.init()(a1);
  MEMORY[0x23EED9D90](v22);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    v23 = outlined destroy of Any?(v16, &_s11ALDataTypes11ALTimeStampVSgMd, &_s11ALDataTypes11ALTimeStampVSgMR);
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    ALTimeStamp.toPb()(v12);
    CLP_LogEntry_PrivateData_WifiScanResult.scanTimestamp.setter(v12);
    v23 = (*(v18 + 8))(v21, v17);
  }

  v24 = MEMORY[0x23EED9D70](v23);
  v25 = *(v24 + 16);
  if (v25)
  {
    v37 = a1;
    v38 = v24;
    v26 = *a1;
    v27 = v39;
    v28 = *(v43 + 16);
    v29 = v24 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
    v40 = *(v43 + 72);
    v41 = v28;
    v43 += 16;
    v30 = (v43 - 8);
    do
    {
      v41(v8, v29, v27);
      CLP_LogEntry_PrivateData_WifiAccessPoint.init()(v5);
      ALWiFiScanSingleAccessPoint.toPb(pb:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26[2] + 1, 1, v26, &_ss23_ContiguousArrayStorageCy10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVGMd, &_ss23_ContiguousArrayStorageCy10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVGMR, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
      }

      v32 = v26[2];
      v31 = v26[3];
      if (v32 >= v31 >> 1)
      {
        v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v31 > 1, v32 + 1, 1, v26, &_ss23_ContiguousArrayStorageCy10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVGMd, &_ss23_ContiguousArrayStorageCy10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVGMR, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
      }

      (*v30)(v8, v27);
      v26[2] = v32 + 1;
      outlined init with take of CLP_LogEntry_PrivateData_WifiAccessPoint(v5, v26 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v32, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
      v29 += v40;
      --v25;
    }

    while (v25);

    a1 = v37;
    *v37 = v26;
  }

  else
  {
  }

  type metadata accessor for ALProtobufUtil();
  v33 = type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
  v34 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiScanResult and conformance CLP_LogEntry_PrivateData_WifiScanResult, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
  return ALFWiFiScanResultsRequester.query(options:callback:start:end:)(a1, v33, v34);
}

uint64_t CLP_LogEntry_PrivateData_WifiAssociationState.init(_:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = CLP_LogEntry_PrivateData_WifiAssociationState.init()(a3);
  if ((a2 & 1) == 0)
  {
    CLP_LogEntry_PrivateData_WifiAssociationState.isAssociated.setter(1);
    CLP_LogEntry_PrivateData_WifiAccessPoint.init()(v9);
    CLP_LogEntry_PrivateData_WifiAssociationState.ap.setter(v9);
    CLP_LogEntry_PrivateData_WifiAssociationState.ap.getter(v9);
    CLP_LogEntry_PrivateData_WifiAccessPoint.mac.setter(a1);
    return CLP_LogEntry_PrivateData_WifiAssociationState.ap.setter(v9);
  }

  return result;
}

uint64_t ALWiFiNotification.toPb()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v70 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v69 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v68 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ALDataTypes16ALWiFiScanResultVSgMd, &_s11ALDataTypes16ALWiFiScanResultVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v72 = &v65 - v13;
  v14 = type metadata accessor for ALWiFiScanResult();
  v73 = *(v14 - 8);
  v74 = v14;
  v15 = *(v73 + 64);
  MEMORY[0x28223BE20](v14);
  v67 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v66 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ALDataTypes11ALTimeStampVSgMd, &_s11ALDataTypes11ALTimeStampVSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v65 - v22;
  v71 = type metadata accessor for ALTimeStamp();
  v24 = *(v71 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v71);
  v65 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ALDataTypes18ALWiFiNotificationV8NotiTypeOSgMd, &_s11ALDataTypes18ALWiFiNotificationV8NotiTypeOSgMR);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v65 - v29;
  v31 = type metadata accessor for ALWiFiNotification.NotiType();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v65 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v38 = &v65 - v37;
  v39 = a1;
  v40 = CLP_LogEntry_PrivateData_WifiNotification.init()(a1);
  MEMORY[0x23EEDA0E0](v40);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    v41 = outlined destroy of Any?(v30, &_s11ALDataTypes18ALWiFiNotificationV8NotiTypeOSgMd, &_s11ALDataTypes18ALWiFiNotificationV8NotiTypeOSgMR);
  }

  else
  {
    (*(v32 + 32))(v38, v30, v31);
    (*(v32 + 16))(v36, v38, v31);
    v42 = specialized CLP_LogEntry_PrivateData_WifiNotificationType.init(_:)(v36);
    CLP_LogEntry_PrivateData_WifiNotification.type.setter(v42);
    v41 = (*(v32 + 8))(v38, v31);
  }

  MEMORY[0x23EEDA080](v41);
  v43 = v71;
  v44 = (*(v24 + 48))(v23, 1, v71);
  v45 = v72;
  if (v44 == 1)
  {
    v46 = outlined destroy of Any?(v23, &_s11ALDataTypes11ALTimeStampVSgMd, &_s11ALDataTypes11ALTimeStampVSgMR);
  }

  else
  {
    v47 = v65;
    (*(v24 + 32))(v65, v23, v43);
    v48 = v66;
    ALTimeStamp.toPb()(v66);
    CLP_LogEntry_PrivateData_WifiNotification.eventReceiptTime.setter(v48);
    v46 = (*(v24 + 8))(v47, v43);
  }

  MEMORY[0x23EEDA0A0](v46);
  v50 = v73;
  v49 = v74;
  if ((*(v73 + 48))(v45, 1, v74) == 1)
  {
    v51 = outlined destroy of Any?(v45, &_s11ALDataTypes16ALWiFiScanResultVSgMd, &_s11ALDataTypes16ALWiFiScanResultVSgMR);
  }

  else
  {
    v52 = v67;
    (*(v50 + 32))(v67, v45, v49);
    v53 = v68;
    ALWiFiScanResult.toPb()(v68);
    CLP_LogEntry_PrivateData_WifiNotification.scan.setter(v53);
    v51 = (*(v50 + 8))(v52, v49);
  }

  v54 = MEMORY[0x23EEDA0C0](v51);
  if ((v55 & 1) == 0)
  {
    v56 = v69;
    v57 = v54;
    CLP_LogEntry_PrivateData_WifiAssociationState.init()(v69);
    CLP_LogEntry_PrivateData_WifiAssociationState.isAssociated.setter(1);
    v58 = v70;
    CLP_LogEntry_PrivateData_WifiAccessPoint.init()(v70);
    CLP_LogEntry_PrivateData_WifiAssociationState.ap.setter(v58);
    CLP_LogEntry_PrivateData_WifiAssociationState.ap.getter(v58);
    CLP_LogEntry_PrivateData_WifiAccessPoint.mac.setter(v57);
    CLP_LogEntry_PrivateData_WifiAssociationState.ap.setter(v58);
    CLP_LogEntry_PrivateData_WifiNotification.associatedState.setter(v56);
  }

  v59 = ALWiFiNotification._simulated.getter();
  if (v59 != 2)
  {
    CLP_LogEntry_PrivateData_WifiNotification.simulated.setter(v59 & 1);
  }

  v60 = ALWiFiNotification._available.getter();
  if (v60 != 2)
  {
    CLP_LogEntry_PrivateData_WifiNotification.available.setter(v60 & 1);
  }

  isAp = ALWiFiNotification._isApAwake.getter();
  if (isAp != 2)
  {
    CLP_LogEntry_PrivateData_WifiNotification.isApAwake.setter(isAp & 1);
  }

  type metadata accessor for ALProtobufUtil();
  v62 = type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0);
  v63 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiNotification and conformance CLP_LogEntry_PrivateData_WifiNotification, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification);
  return ALFWiFiScanResultsRequester.query(options:callback:start:end:)(v39, v62, v63);
}

uint64_t ALWiFiNotifications.toPb()@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0);
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v44 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ALWiFiNotification();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v40 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = (v35 - v16);
  CLP_LogEntry_AONLoc_Indication.init()(a1);
  CLP_LogEntry_AONLoc_Indication.type.setter(4);
  CLP_LogEntry_AONLoc_WiFiIndication.init()(v17);
  v18 = ALWiFiNotifications.results.getter();
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
      ALWiFiNotification.toPb()(v26);
      (*v24)(v11, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20, &_ss23_ContiguousArrayStorageCy10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationVGMd, &_ss23_ContiguousArrayStorageCy10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationVGMR, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification);
      }

      v29 = v20[2];
      v28 = v20[3];
      if (v29 >= v28 >> 1)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v28 > 1, v29 + 1, 1, v20, &_ss23_ContiguousArrayStorageCy10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationVGMd, &_ss23_ContiguousArrayStorageCy10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationVGMR, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification);
      }

      v20[2] = v29 + 1;
      v26 = v44;
      outlined init with take of CLP_LogEntry_PrivateData_WifiAccessPoint(v44, v20 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v29, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification);
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

  v30 = ALWiFiNotifications.isLastBatch.getter();
  CLP_LogEntry_AONLoc_WiFiIndication.isLastBatch.setter(v30 & 1);
  v31 = v40;
  _s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVWOcTm_0(v17, v40, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication);
  CLP_LogEntry_AONLoc_Indication.wifiIndication.setter(v31);
  type metadata accessor for ALProtobufUtil();
  v32 = type metadata accessor for CLP_LogEntry_AONLoc_Indication(0);
  v33 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Indication and conformance CLP_LogEntry_AONLoc_Indication, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
  ALFWiFiScanResultsRequester.query(options:callback:start:end:)(a1, v32, v33);
  return _s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVWOhTm_0(v17, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication);
}

uint64_t ALWiFiNotifications.serializedData()()
{
  v2 = v1;
  v3 = type metadata accessor for ALWiFiNotifications();
  v46 = *(v3 - 8);
  v4 = *(v46 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v38[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v38[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for CLP_LogEntry_AONLoc_Indication(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v38[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  ALWiFiNotifications.toPb()(v15);
  if (!v1)
  {
    v41 = v0;
    v42 = v6;
    v16 = v46;
    v43 = v11;
    v44 = v7;
    v45 = v8;
    lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Indication and conformance CLP_LogEntry_AONLoc_Indication, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
    v2 = Message.serializedData(partial:)();
    v18 = v17;
    _s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVWOhTm_0(v15, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
    v40 = 0;
    v20 = v43;
    corelog.getter(v43);
    v21 = v16;
    v22 = v20;
    v23 = v42;
    v24 = v3;
    (*(v21 + 16))(v42, v41, v3);
    outlined copy of Data._Representation(v2, v18);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    outlined consume of Data._Representation(v2, v18);
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v47 = v41;
      *v27 = 136446466;
      v39 = v26;
      v28 = ALWiFiNotifications.description.getter();
      v29 = v23;
      v31 = v30;
      (*(v21 + 8))(v29, v24);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v31, &v47);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2082;
      outlined copy of Data._Representation(v2, v18);
      v33 = Data.description.getter();
      v35 = v34;
      outlined consume of Data._Representation(v2, v18);
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v47);

      *(v27 + 14) = v36;
      _os_log_impl(&dword_23CEAD000, v25, v39, "#WiFi,serializedData,notif,%{public}s,data,%{public}s", v27, 0x16u);
      v37 = v41;
      swift_arrayDestroy();
      MEMORY[0x23EEDAF70](v37, -1, -1);
      MEMORY[0x23EEDAF70](v27, -1, -1);
    }

    else
    {

      (*(v21 + 8))(v23, v24);
    }

    (*(v45 + 8))(v22, v44);
  }

  return v2;
}

uint64_t static ALWiFiNotifications.serializedIndications(results:isLastBatch:)()
{
  v0 = type metadata accessor for ALWiFiNotifications();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  ALWiFiNotifications.init(_results:_isLastBatch:)();
  v5 = ALWiFiNotifications.serializedData()();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t specialized CLP_LogEntry_PrivateData_WifiNotificationType.init(_:)(uint64_t a1)
{
  v2 = type metadata accessor for ALWiFiNotification.NotiType();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 88))(a1, v2);
  if (v4 == *MEMORY[0x277CE4940])
  {
    return 0;
  }

  if (v4 == *MEMORY[0x277CE4948])
  {
    return 1;
  }

  if (v4 == *MEMORY[0x277CE4938])
  {
    return 2;
  }

  if (v4 == *MEMORY[0x277CE4960])
  {
    return 3;
  }

  if (v4 == *MEMORY[0x277CE4930])
  {
    return 4;
  }

  if (v4 == *MEMORY[0x277CE4958])
  {
    return 5;
  }

  if (v4 == *MEMORY[0x277CE4900])
  {
    return 6;
  }

  if (v4 == *MEMORY[0x277CE48F0])
  {
    return 7;
  }

  if (v4 == *MEMORY[0x277CE4928])
  {
    return 8;
  }

  if (v4 == *MEMORY[0x277CE4910])
  {
    return 9;
  }

  if (v4 == *MEMORY[0x277CE4908])
  {
    return 10;
  }

  if (v4 == *MEMORY[0x277CE4918])
  {
    return 11;
  }

  if (v4 == *MEMORY[0x277CE4920])
  {
    return 12;
  }

  if (v4 == *MEMORY[0x277CE4950])
  {
    return 13;
  }

  if (v4 != *MEMORY[0x277CE48F8])
  {
    (*(v3 + 8))(a1, v2);
    return 0;
  }

  return 14;
}

uint64_t outlined init with take of CLP_LogEntry_PrivateData_WifiAccessPoint(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ALTimeStamp.toPb()@<X0>(uint64_t a1@<X8>)
{
  CLP_LogEntry_PrivateData_TimeStamp.init()(a1);
  v1 = ALTimeStamp.cfAbsoluteTimeSec.getter();
  if ((v2 & 1) == 0)
  {
    CLP_LogEntry_PrivateData_TimeStamp.cfAbsoluteTimeS.setter(*&v1);
  }

  v3 = ALTimeStamp.machAbsoluteTimeSec.getter();
  if ((v4 & 1) == 0)
  {
    CLP_LogEntry_PrivateData_TimeStamp.machAbsoluteTimeS.setter(*&v3);
  }

  result = ALTimeStamp.machContinuousTimeSec.getter();
  if ((v6 & 1) == 0)
  {
    return CLP_LogEntry_PrivateData_TimeStamp.machContinuousTimeS.setter(*&result);
  }

  return result;
}

uint64_t ALTimeStamp.serializedData()()
{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  CLP_LogEntry_PrivateData_TimeStamp.init()(v4);
  v7 = ALTimeStamp.cfAbsoluteTimeSec.getter();
  if ((v8 & 1) == 0)
  {
    CLP_LogEntry_PrivateData_TimeStamp.cfAbsoluteTimeS.setter(*&v7);
  }

  v9 = ALTimeStamp.machAbsoluteTimeSec.getter();
  if ((v10 & 1) == 0)
  {
    CLP_LogEntry_PrivateData_TimeStamp.machAbsoluteTimeS.setter(*&v9);
  }

  v11 = ALTimeStamp.machContinuousTimeSec.getter();
  if ((v12 & 1) == 0)
  {
    CLP_LogEntry_PrivateData_TimeStamp.machContinuousTimeS.setter(*&v11);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v4, v6);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp();
  v13 = Message.serializedData(partial:)();
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v6);
  return v13;
}

uint64_t outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp);
  }

  return result;
}

uint64_t static ALProtobufUtil.stringfyJson<A>(_:)()
{
  v0 = type metadata accessor for Logger();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = type metadata accessor for String.Encoding();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = type metadata accessor for JSONEncodingOptions();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  JSONEncodingOptions.init()();
  v9 = Message.jsonUTF8Data(options:)();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  static String.Encoding.utf8.getter();
  v12 = String.init(data:encoding:)();
  v14 = v13;
  outlined consume of Data._Representation(v9, v11);
  if (v14)
  {
    return v12;
  }

  else
  {
    return 0x3E6C696E3CLL;
  }
}

uint64_t static ALProtobufUtil.stringfyLogEntryJson(_:)(uint64_t a1)
{
  v3 = type metadata accessor for String.Encoding();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = type metadata accessor for JSONEncodingOptions();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = type metadata accessor for CLP_LogEntry_LogEntry(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v25[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  outlined init with copy of ALXPCDataService(a1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf7Message_pMd, &_s21InternalSwiftProtobuf7Message_pMR);
  swift_dynamicCast();
  JSONEncodingOptions.init()();
  lazy protocol witness table accessor for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry(&lazy protocol witness table cache variable for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry, type metadata accessor for CLP_LogEntry_LogEntry);
  v16 = Message.jsonUTF8Data(options:)();
  if (v1)
  {
    (*(v8 + 8))(v11, v7);
    outlined destroy of CLP_LogEntry_LogEntry(v15, type metadata accessor for CLP_LogEntry_LogEntry);
  }

  else
  {
    v18 = v16;
    v19 = v11;
    v20 = v17;
    (*(v8 + 8))(v19, v7);
    static String.Encoding.utf8.getter();
    v6 = String.init(data:encoding:)();
    v22 = v21;
    outlined consume of Data._Representation(v18, v20);
    if (!v22)
    {
      v6 = 0x3E6C696E3CLL;
    }

    outlined destroy of CLP_LogEntry_LogEntry(v15, type metadata accessor for CLP_LogEntry_LogEntry);
  }

  return v6;
}

uint64_t static ALProtobufUtil.stringfyLogEntryJson(serializedData:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for String.Encoding();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for JSONEncodingOptions();
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BinaryDecodingOptions();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CLP_LogEntry_LogEntry(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1;
  v45 = a2;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry(&lazy protocol witness table cache variable for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry, type metadata accessor for CLP_LogEntry_LogEntry);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (!v2)
  {
    v37 = 0;
    v38 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_23D1B0500;
    CLP_LogEntry_LogEntry.eventRecordTime.getter(v13);
    v23 = CLP_LogEntry_LogEntry.TimeStamp.machContinuousTimeS.getter();
    outlined destroy of CLP_LogEntry_LogEntry(v13, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
    v24 = MEMORY[0x277D83A80];
    *(v22 + 56) = MEMORY[0x277D839F8];
    *(v22 + 64) = v24;
    *(v22 + 32) = v23;
    v25 = CLP_LogEntry_LogEntry.hasPrivateDataCapture.getter();
    v26 = MEMORY[0x277D839F0];
    *(v22 + 96) = MEMORY[0x277D839B0];
    *(v22 + 104) = v26;
    *(v22 + 72) = v25;
    type metadata accessor for OS_os_log();
    v17 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v27 = v39;
    JSONEncodingOptions.init()();
    v28 = v37;
    v29 = Message.jsonUTF8Data(options:)();
    if (v28)
    {
      (*(v40 + 8))(v27, v38);
      outlined destroy of CLP_LogEntry_LogEntry(v21, type metadata accessor for CLP_LogEntry_LogEntry);
    }

    else
    {
      v32 = v29;
      v33 = v30;
      (*(v40 + 8))(v27, v38);
      static String.Encoding.utf8.getter();
      v34 = String.init(data:encoding:)();
      v36 = v35;
      outlined consume of Data._Representation(v32, v33);
      if (v36)
      {
        v17 = v34;
      }

      else
      {
        v17 = 0x3E6C696E3CLL;
      }

      outlined destroy of CLP_LogEntry_LogEntry(v21, type metadata accessor for CLP_LogEntry_LogEntry);
    }
  }

  return v17;
}

uint64_t static ALProtobufUtil.serialized(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Google_Protobuf_UInt32Value();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x23EEDA370](v5);
  MEMORY[0x23EEDA360](a1);
  lazy protocol witness table accessor for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry(&lazy protocol witness table cache variable for type Google_Protobuf_UInt32Value and conformance Google_Protobuf_UInt32Value, MEMORY[0x277D215B8]);
  v8 = Message.serializedData(partial:)();
  (*(v3 + 8))(v7, v2);
  return v8;
}

uint64_t static ALProtobufUtil.serialized(_:)()
{
  v0 = type metadata accessor for Google_Protobuf_DoubleValue();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x23EEDA340](v3);
  Google_Protobuf_DoubleValue.value.setter();
  lazy protocol witness table accessor for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry(&lazy protocol witness table cache variable for type Google_Protobuf_DoubleValue and conformance Google_Protobuf_DoubleValue, MEMORY[0x277D21598]);
  v6 = Message.serializedData(partial:)();
  (*(v1 + 8))(v5, v0);
  return v6;
}

uint64_t outlined destroy of CLP_LogEntry_LogEntry(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t CLP_LogEntry_PrivateData_PrivateDataCapture.gpsdLogEntry.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMd, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__gpsdLogEntry;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMd, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMR);
  v9 = type metadata accessor for Proto_Gpsd_LogEntry(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_LogEntry(v6, a1, type metadata accessor for Proto_Gpsd_LogEntry);
  }

  Proto_Gpsd_LogEntry.init()(a1);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMd, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_PrivateDataCapture.gpsdLogEntry.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMd, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    CLP_LogEntry_PrivateData_PrivateDataCapture._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gpsd_LogEntry(a1, v7, type metadata accessor for Proto_Gpsd_LogEntry);
  v17 = type metadata accessor for Proto_Gpsd_LogEntry(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__gpsdLogEntry;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMd, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMR);
  return swift_endAccess();
}