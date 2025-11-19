uint64_t Proto_Gnss_Emergency_GanssAidRequestPerGanss.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 16) == 7)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v13 = *(v9 + 16);
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_LcsGanssId and conformance Proto_Gnss_Emergency_LcsGanssId();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if ((*(v9 + 24) & 1) == 0)
  {
    v11 = *(v9 + 20);
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v9 + 32) & 1) == 0)
  {
    v12 = *(v9 + 28);
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  swift_beginAccess();
  if (*(*(v9 + 40) + 16))
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem(0);
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssTimeModelElem and conformance Proto_Gnss_Emergency_GanssTimeModelElem, type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  closure #4 in closure #1 in Proto_Gnss_Emergency_GanssAidRequestPerGanss.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #5 in closure #1 in Proto_Gnss_Emergency_GanssAidRequestPerGanss.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #6 in closure #1 in Proto_Gnss_Emergency_GanssAidRequestPerGanss.traverse<A>(visitor:)(v9, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #4 in closure #1 in Proto_Gnss_Emergency_GanssAidRequestPerGanss.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssDataBitAssist and conformance Proto_Gnss_Emergency_GanssDataBitAssist, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
}

uint64_t closure #5 in closure #1 in Proto_Gnss_Emergency_GanssAidRequestPerGanss.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssNavModelAddData and conformance Proto_Gnss_Emergency_GanssNavModelAddData, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
}

uint64_t closure #6 in closure #1 in Proto_Gnss_Emergency_GanssAidRequestPerGanss.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssAddAssistDataChoices and conformance Proto_Gnss_Emergency_GanssAddAssistDataChoices, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
}

BOOL closure #1 in static Proto_Gnss_Emergency_GanssAidRequestPerGanss.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  v95 = *(v4 - 8);
  v96 = v4;
  v5 = *(v95 + 64);
  MEMORY[0x28223BE20](v4);
  v92 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSg_ADtMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSg_ADtMR);
  v7 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94);
  v9 = &v88 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v104 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v103 = &v88 - v14;
  v15 = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  v100 = *(v15 - 8);
  v101 = v15;
  v16 = *(v100 + 64);
  MEMORY[0x28223BE20](v15);
  v93 = (&v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSg_ADtMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSg_ADtMR);
  v18 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v102 = &v88 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v97 = (&v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v105 = &v88 - v24;
  v25 = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  v106 = *(v25 - 8);
  v26 = *(v106 + 64);
  MEMORY[0x28223BE20](v25);
  v98 = (&v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSg_ADtMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSg_ADtMR);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v88 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v36 = (&v88 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v34);
  v38 = &v88 - v37;
  swift_beginAccess();
  v39 = *(a1 + 16);
  swift_beginAccess();
  v40 = *(a2 + 16);
  if (v39 == 7)
  {
    if (v40 != 7)
    {
      return 0;
    }

LABEL_6:
    v91 = v9;
    swift_beginAccess();
    v42 = *(a1 + 20);
    v43 = *(a1 + 24);
    swift_beginAccess();
    v44 = *(a2 + 24);
    if (v43)
    {
      if (!*(a2 + 24))
      {
        return 0;
      }
    }

    else
    {
      if (v42 != *(a2 + 20))
      {
        v44 = 1;
      }

      if (v44)
      {
        return 0;
      }
    }

    swift_beginAccess();
    v45 = *(a1 + 28);
    v46 = *(a1 + 32);
    swift_beginAccess();
    v47 = *(a2 + 32);
    if (v46)
    {
      if (!*(a2 + 32))
      {
        return 0;
      }
    }

    else
    {
      if (v45 != *(a2 + 28))
      {
        v47 = 1;
      }

      if (v47)
      {
        return 0;
      }
    }

    swift_beginAccess();
    v48 = a2;
    v49 = *(a1 + 40);
    swift_beginAccess();
    v50 = *(v48 + 40);

    v90 = v48;

    LOBYTE(v48) = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf43Proto_Gnss_Emergency_GanssStoredSatDataElemV_Tt1g5Tm(v49, v50, type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem, type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem);

    if ((v48 & 1) == 0)
    {
      goto LABEL_34;
    }

    v51 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
    swift_beginAccess();
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v51, v38, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
    v52 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
    v53 = v90;
    swift_beginAccess();
    v54 = *(v28 + 48);
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v38, v31, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
    v89 = v54;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v53 + v52, &v31[v54], &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
    v55 = *(v106 + 48);
    if (v55(v31, 1, v25) == 1)
    {
      outlined destroy of Any?(v38, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
      v56 = v55(&v31[v89], 1, v25);
      v57 = v53;
      if (v56 == 1)
      {
        outlined destroy of Any?(v31, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
LABEL_27:
        v64 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
        swift_beginAccess();
        v65 = v105;
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v64, v105, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
        v66 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
        swift_beginAccess();
        v67 = *(v99 + 48);
        v68 = v102;
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v65, v102, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v57 + v66, v68 + v67, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
        v69 = v101;
        v70 = *(v100 + 48);
        if (v70(v68, 1, v101) == 1)
        {
          outlined destroy of Any?(v65, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
          v71 = v70(v68 + v67, 1, v69);
          v73 = v103;
          v72 = v104;
          if (v71 == 1)
          {
            outlined destroy of Any?(v68, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
LABEL_38:
            v80 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
            swift_beginAccess();
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v80, v73, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
            v81 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
            swift_beginAccess();
            v82 = *(v94 + 48);
            v83 = v91;
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v73, v91, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v57 + v81, v83 + v82, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
            v84 = v96;
            v85 = *(v95 + 48);
            if (v85(v83, 1, v96) == 1)
            {

              outlined destroy of Any?(v73, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
              if (v85(v83 + v82, 1, v84) == 1)
              {
                outlined destroy of Any?(v83, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
                return 1;
              }

              goto LABEL_43;
            }

            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v83, v72, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
            if (v85(v83 + v82, 1, v84) == 1)
            {

              outlined destroy of Any?(v73, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
              outlined destroy of Proto_Gnss_Emergency_SLPAddress(v72, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
LABEL_43:
              outlined destroy of Any?(v83, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSg_ADtMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSg_ADtMR);
              return 0;
            }

            v86 = v92;
            outlined init with take of Proto_Gnss_Emergency_SLPAddress(v83 + v82, v92, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
            v87 = specialized static Proto_Gnss_Emergency_GanssAddAssistDataChoices.== infix(_:_:)(v72, v86, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);

            outlined destroy of Proto_Gnss_Emergency_SLPAddress(v86, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
            outlined destroy of Any?(v73, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
            outlined destroy of Proto_Gnss_Emergency_SLPAddress(v72, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
            outlined destroy of Any?(v83, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
            return (v87 & 1) != 0;
          }

          goto LABEL_32;
        }

        v74 = v97;
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v68, v97, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
        v75 = v70(v68 + v67, 1, v69);
        v76 = v103;
        v77 = v104;
        if (v75 == 1)
        {
          outlined destroy of Any?(v105, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
          outlined destroy of Proto_Gnss_Emergency_SLPAddress(v74, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
LABEL_32:
          v59 = &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSg_ADtMd;
          v60 = &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSg_ADtMR;
          v61 = v68;
          goto LABEL_33;
        }

        v78 = v68 + v67;
        v79 = v93;
        outlined init with take of Proto_Gnss_Emergency_SLPAddress(v78, v93, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
        LODWORD(v106) = specialized static Proto_Gnss_Emergency_GanssNavModelAddData.== infix(_:_:)(v74, v79);
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v79, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
        outlined destroy of Any?(v105, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v74, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
        outlined destroy of Any?(v68, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
        v72 = v77;
        v73 = v76;
        if (v106)
        {
          goto LABEL_38;
        }

LABEL_34:

        return 0;
      }
    }

    else
    {
      outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v31, v36, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
      v58 = v89;
      if (v55(&v31[v89], 1, v25) != 1)
      {
        v62 = &v31[v58];
        v63 = v98;
        outlined init with take of Proto_Gnss_Emergency_SLPAddress(v62, v98, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
        LODWORD(v106) = specialized static Proto_Gnss_Emergency_GanssDataBitAssist.== infix(_:_:)(v36, v63);
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v63, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
        outlined destroy of Any?(v38, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v36, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
        v57 = v53;
        outlined destroy of Any?(v31, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
        if ((v106 & 1) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_27;
      }

      outlined destroy of Any?(v38, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v36, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
    }

    v59 = &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSg_ADtMd;
    v60 = &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSg_ADtMR;
    v61 = v31;
LABEL_33:
    outlined destroy of Any?(v61, v59, v60);
    goto LABEL_34;
  }

  result = 0;
  if (v40 != 7 && v39 == v40)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GanssAidRequestPerGanss(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssAidRequestPerGanss and conformance Proto_Gnss_Emergency_GanssAidRequestPerGanss, type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GanssAidRequestPerGanss(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssAidRequestPerGanss and conformance Proto_Gnss_Emergency_GanssAidRequestPerGanss, type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GanssAidRequestPerGanss(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssAidRequestPerGanss and conformance Proto_Gnss_Emergency_GanssAidRequestPerGanss, type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GanssAssistanceRequest.decodeMessage<A>(decoder:)()
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
        switch(result)
        {
          case 1:
            v3 = v0;
            v4 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0) + 28);
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            break;
          case 2:
            v3 = v0;
            v8 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0) + 32);
            goto LABEL_5;
          case 3:
            lazy protocol witness table accessor for type Proto_Gnss_Emergency_LcsGanssId and conformance Proto_Gnss_Emergency_LcsGanssId();
            dispatch thunk of Decoder.decodeRepeatedEnumField<A>(value:)();
            break;
        }
      }

      else
      {
        if (result <= 5)
        {
          v3 = v0;
          if (result == 4)
          {
            v6 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0) + 36);
          }

          else
          {
            v5 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0) + 40);
          }

          goto LABEL_5;
        }

        if (result == 6)
        {
          v3 = v0;
          v7 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0) + 44);
          goto LABEL_5;
        }

        if (result == 7)
        {
          type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssAidRequestPerGanss and conformance Proto_Gnss_Emergency_GanssAidRequestPerGanss, type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GanssAssistanceRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  v9 = result;
  v10 = (v3 + *(result + 28));
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

  v12 = (v3 + v9[8]);
  if ((v12[1] & 1) == 0)
  {
    v13 = *v12;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if (*(*v3 + 16))
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_LcsGanssId and conformance Proto_Gnss_Emergency_LcsGanssId();
    dispatch thunk of Visitor.visitRepeatedEnumField<A>(value:fieldNumber:)();
  }

  v14 = (v3 + v9[9]);
  if ((v14[1] & 1) == 0)
  {
    v15 = *v14;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v16 = (v3 + v9[10]);
  if ((v16[1] & 1) == 0)
  {
    v17 = *v16;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #7 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
  if (*(v3[1] + 16))
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0);
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssAidRequestPerGanss and conformance Proto_Gnss_Emergency_GanssAidRequestPerGanss, type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  v18 = v3 + v9[6];
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_GpsAssistanceRequest@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v4;
  v5 = a2 + a1[6];
  result = UnknownStorage.init()();
  v7 = a1[8];
  v8 = a2 + a1[7];
  *v8 = 0;
  v8[4] = 1;
  v9 = a2 + v7;
  *v9 = 0;
  v9[4] = 1;
  v10 = a1[10];
  v11 = a2 + a1[9];
  *v11 = 0;
  v11[4] = 1;
  v12 = a2 + v10;
  *v12 = 0;
  v12[4] = 1;
  v13 = a2 + a1[11];
  *v13 = 0;
  v13[4] = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GanssAssistanceRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssAssistanceRequest and conformance Proto_Gnss_Emergency_GanssAssistanceRequest, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GanssAssistanceRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssAssistanceRequest and conformance Proto_Gnss_Emergency_GanssAssistanceRequest, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GanssAssistanceRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssAssistanceRequest and conformance Proto_Gnss_Emergency_GanssAssistanceRequest, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v28 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v28 - v12;
  *(v1 + 16) = 9;
  *(v1 + 20) = 0;
  *(v1 + 24) = 1;
  v14 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  v15 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
  v17 = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
  v19 = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  swift_beginAccess();
  v20 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v20;
  swift_beginAccess();
  v21 = *(a1 + 20);
  v22 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 20) = v21;
  *(v1 + 24) = v22;
  v23 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v23, v13, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v13, v1 + v14, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  swift_endAccess();
  v24 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v24, v9, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v9, v1 + v16, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
  swift_endAccess();
  v25 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
  swift_beginAccess();
  v26 = v28;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v25, v28, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);

  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v26, v1 + v18, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
  swift_endAccess();
  return v1;
}

uint64_t Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t Proto_Gnss_Emergency_AssistanceNeededReport.decodeMessage<A>(decoder:)()
{
  v2 = v0;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass.init(copying:)(v6);
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
          swift_beginAccess();
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_ErrorCodes and conformance Proto_Gnss_Emergency_ErrorCodes();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_8;
        }

        if (result == 2)
        {
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_8;
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v13 = v1;
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
            v14 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo;
            v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionInfo and conformance Proto_Gnss_Emergency_SessionInfo;
LABEL_7:
            lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(v15, v14);
            v1 = v13;
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_8:
            swift_endAccess();
            break;
          case 4:
            v13 = v1;
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
            v14 = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest;
            v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsAssistanceRequest and conformance Proto_Gnss_Emergency_GpsAssistanceRequest;
            goto LABEL_7;
          case 5:
            v13 = v1;
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
            v14 = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest;
            v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssAssistanceRequest and conformance Proto_Gnss_Emergency_GanssAssistanceRequest;
            goto LABEL_7;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_AssistanceNeededReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 16) == 9)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v12 = *(v9 + 16);
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_ErrorCodes and conformance Proto_Gnss_Emergency_ErrorCodes();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if ((*(v9 + 24) & 1) == 0)
  {
    v11 = *(v9 + 20);
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #3 in closure #1 in Proto_Gnss_Emergency_AssistanceNeededReport.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #4 in closure #1 in Proto_Gnss_Emergency_AssistanceNeededReport.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #5 in closure #1 in Proto_Gnss_Emergency_AssistanceNeededReport.traverse<A>(visitor:)(v9, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #3 in closure #1 in Proto_Gnss_Emergency_AssistanceNeededReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionInfo and conformance Proto_Gnss_Emergency_SessionInfo, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
}

uint64_t closure #4 in closure #1 in Proto_Gnss_Emergency_AssistanceNeededReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsAssistanceRequest and conformance Proto_Gnss_Emergency_GpsAssistanceRequest, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
}

uint64_t closure #5 in closure #1 in Proto_Gnss_Emergency_AssistanceNeededReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssAssistanceRequest and conformance Proto_Gnss_Emergency_GanssAssistanceRequest, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
}

BOOL closure #1 in static Proto_Gnss_Emergency_AssistanceNeededReport.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v85 = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  v93 = *(v85 - 8);
  v4 = *(v93 + 64);
  MEMORY[0x28223BE20](v85);
  v82 = (&v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSg_ADtMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSg_ADtMR);
  v6 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v8 = &v77 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v92 = (&v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v91 = &v77 - v13;
  v89 = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  v88 = *(v89 - 8);
  v14 = *(v88 + 64);
  MEMORY[0x28223BE20](v89);
  v83 = (&v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSg_ADtMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSg_ADtMR);
  v16 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v90 = &v77 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v86 = (&v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v94 = &v77 - v22;
  v23 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v95 = *(v23 - 8);
  v24 = *(v95 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSg_ADtMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSg_ADtMR);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v77 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v35 = &v77 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v37 = &v77 - v36;
  swift_beginAccess();
  v38 = *(a1 + 16);
  swift_beginAccess();
  v39 = *(a2 + 16);
  if (v38 == 9)
  {
    if (v39 != 9)
    {
      return 0;
    }

LABEL_6:
    v79 = v8;
    swift_beginAccess();
    v41 = *(a1 + 20);
    v81 = a1;
    v42 = *(a1 + 24);
    swift_beginAccess();
    v43 = *(a2 + 24);
    if (v42)
    {
      if (!*(a2 + 24))
      {
        return 0;
      }
    }

    else
    {
      if (v41 != *(a2 + 20))
      {
        v43 = 1;
      }

      if (v43)
      {
        return 0;
      }
    }

    v78 = v26;
    v80 = a2;
    v44 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    v45 = v81;
    swift_beginAccess();
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v45 + v44, v37, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    v46 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    v47 = v80;
    swift_beginAccess();
    v48 = *(v27 + 48);
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v37, v30, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v47 + v46, &v30[v48], &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    v49 = *(v95 + 48);
    if (v49(v30, 1, v23) == 1)
    {

      outlined destroy of Any?(v37, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
      if (v49(&v30[v48], 1, v23) == 1)
      {
        outlined destroy of Any?(v30, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
LABEL_19:
        v53 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
        swift_beginAccess();
        v54 = v94;
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v45 + v53, v94, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
        v55 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
        swift_beginAccess();
        v56 = *(v87 + 48);
        v57 = v90;
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v54, v90, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v80 + v55, v57 + v56, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
        v58 = *(v88 + 48);
        v59 = v89;
        if (v58(v57, 1, v89) == 1)
        {
          outlined destroy of Any?(v54, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
          v60 = v58(v57 + v56, 1, v59);
          v61 = v93;
          v62 = v92;
          v63 = v91;
          if (v60 == 1)
          {
            outlined destroy of Any?(v57, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
LABEL_30:
            v69 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
            swift_beginAccess();
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v45 + v69, v63, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
            v70 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
            swift_beginAccess();
            v71 = *(v84 + 48);
            v72 = v79;
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v63, v79, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v80 + v70, v72 + v71, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
            v73 = *(v61 + 48);
            v74 = v85;
            if (v73(v72, 1, v85) == 1)
            {

              outlined destroy of Any?(v63, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
              if (v73(v72 + v71, 1, v74) == 1)
              {
                outlined destroy of Any?(v72, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
                return 1;
              }

              goto LABEL_35;
            }

            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v72, v62, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
            if (v73(v72 + v71, 1, v74) == 1)
            {

              outlined destroy of Any?(v63, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
              outlined destroy of Proto_Gnss_Emergency_SLPAddress(v62, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
LABEL_35:
              outlined destroy of Any?(v72, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSg_ADtMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSg_ADtMR);
              return 0;
            }

            v75 = v82;
            outlined init with take of Proto_Gnss_Emergency_SLPAddress(v72 + v71, v82, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
            v76 = specialized static Proto_Gnss_Emergency_GanssAssistanceRequest.== infix(_:_:)(v62, v75);

            outlined destroy of Proto_Gnss_Emergency_SLPAddress(v75, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
            outlined destroy of Any?(v63, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
            outlined destroy of Proto_Gnss_Emergency_SLPAddress(v62, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
            outlined destroy of Any?(v72, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
            return (v76 & 1) != 0;
          }
        }

        else
        {
          v64 = v86;
          outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v57, v86, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
          v65 = v58(v57 + v56, 1, v59);
          v61 = v93;
          v66 = v92;
          v63 = v91;
          if (v65 != 1)
          {
            v67 = v57 + v56;
            v68 = v83;
            outlined init with take of Proto_Gnss_Emergency_SLPAddress(v67, v83, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
            LODWORD(v95) = specialized static Proto_Gnss_Emergency_GpsAssistanceRequest.== infix(_:_:)(v64, v68);
            outlined destroy of Proto_Gnss_Emergency_SLPAddress(v68, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
            outlined destroy of Any?(v94, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
            outlined destroy of Proto_Gnss_Emergency_SLPAddress(v64, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
            v45 = v81;
            outlined destroy of Any?(v57, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
            v62 = v66;
            if (v95)
            {
              goto LABEL_30;
            }

            goto LABEL_25;
          }

          outlined destroy of Any?(v94, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
          outlined destroy of Proto_Gnss_Emergency_SLPAddress(v64, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
        }

        outlined destroy of Any?(v57, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSg_ADtMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSg_ADtMR);
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {
      outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v30, v35, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
      if (v49(&v30[v48], 1, v23) != 1)
      {
        v50 = v78;
        outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v30[v48], v78, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        v51 = v81;

        v52 = specialized static Proto_Gnss_Emergency_SessionInfo.== infix(_:_:)(v35, v50);
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v50, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        outlined destroy of Any?(v37, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
        v45 = v51;
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v35, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        outlined destroy of Any?(v30, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
        if ((v52 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_19;
      }

      outlined destroy of Any?(v37, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v35, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    }

    outlined destroy of Any?(v30, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSg_ADtMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSg_ADtMR);

LABEL_26:

    return 0;
  }

  result = 0;
  if (v39 != 9 && v38 == v39)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_AssistanceNeededReport(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AssistanceNeededReport and conformance Proto_Gnss_Emergency_AssistanceNeededReport, type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_AssistanceNeededReport(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AssistanceNeededReport and conformance Proto_Gnss_Emergency_AssistanceNeededReport, type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_AssistanceNeededReport(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AssistanceNeededReport and conformance Proto_Gnss_Emergency_AssistanceNeededReport, type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_EutranCellTime.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for Proto_Gnss_Emergency_EutranCellTime(0) + 24);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsEutranCell and conformance Proto_Gnss_Emergency_ClsEutranCell, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_EutranCellTime.traverse<A>(visitor:)()
{
  result = type metadata accessor for Proto_Gnss_Emergency_EutranCellTime(0);
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
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  if (*(*v0 + 16))
  {
    type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsEutranCell and conformance Proto_Gnss_Emergency_ClsEutranCell, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  v6 = v0 + *(v3 + 20);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_Polygon@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = a2 + *(a1 + 20);
  result = UnknownStorage.init()();
  v6 = a2 + *(a1 + 24);
  *v6 = 0;
  v6[4] = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_EutranCellTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EutranCellTime and conformance Proto_Gnss_Emergency_EutranCellTime, type metadata accessor for Proto_Gnss_Emergency_EutranCellTime);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_EutranCellTime(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EutranCellTime and conformance Proto_Gnss_Emergency_EutranCellTime, type metadata accessor for Proto_Gnss_Emergency_EutranCellTime);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_EutranCellTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EutranCellTime and conformance Proto_Gnss_Emergency_EutranCellTime, type metadata accessor for Proto_Gnss_Emergency_EutranCellTime);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_ClsGeranCellTime.decodeMessage<A>(decoder:)()
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
        switch(result)
        {
          case 1:
            v3 = v0;
            v7 = *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 20);
            break;
          case 2:
            v3 = v0;
            v10 = *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 24);
            break;
          case 3:
            v3 = v0;
            v5 = *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 28);
            break;
          default:
            goto LABEL_19;
        }
      }

      else if (result > 5)
      {
        if (result == 6)
        {
          v3 = v0;
          v9 = *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 40);
        }

        else
        {
          if (result != 7)
          {
            goto LABEL_19;
          }

          v3 = v0;
          v6 = *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 44);
        }
      }

      else
      {
        v3 = v0;
        if (result == 4)
        {
          v8 = *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 32);
        }

        else
        {
          v4 = *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 36);
        }
      }

      v0 = v3;
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
LABEL_19:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_ClsGeranCellTime.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0);
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

  v17 = (v5 + v10[8]);
  if ((v17[1] & 1) == 0)
  {
    v18 = *v17;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #5 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime, MEMORY[0x277D21860]);
  closure #6 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime);
  closure #7 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_ClsGeranCellTime@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  v11 = a1[10];
  v12 = a2 + a1[9];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a2 + v11;
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a2 + a1[11];
  *v14 = 0;
  *(v14 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_ClsGeranCellTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsGeranCellTime and conformance Proto_Gnss_Emergency_ClsGeranCellTime, type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_ClsGeranCellTime(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsGeranCellTime and conformance Proto_Gnss_Emergency_ClsGeranCellTime, type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_ClsGeranCellTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsGeranCellTime and conformance Proto_Gnss_Emergency_ClsGeranCellTime, type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GpsTowCdmaCellTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTowCdmaCellTime and conformance Proto_Gnss_Emergency_GpsTowCdmaCellTime, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GpsTowCdmaCellTime(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTowCdmaCellTime and conformance Proto_Gnss_Emergency_GpsTowCdmaCellTime, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GpsTowCdmaCellTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTowCdmaCellTime and conformance Proto_Gnss_Emergency_GpsTowCdmaCellTime, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_CtsEutranCellTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CtsEutranCellTime and conformance Proto_Gnss_Emergency_CtsEutranCellTime, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_CtsEutranCellTime(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CtsEutranCellTime and conformance Proto_Gnss_Emergency_CtsEutranCellTime, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_CtsEutranCellTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CtsEutranCellTime and conformance Proto_Gnss_Emergency_CtsEutranCellTime, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_CtsCdmaCellTime.decodeMessage<A>(decoder:)()
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
        v4 = *(type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0) + 24);
LABEL_5:
        v0 = v3;
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        goto LABEL_6;
      }

      if (result == 1)
      {
        v5 = *(type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0) + 20);
        type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTowCdmaCellTime and conformance Proto_Gnss_Emergency_GpsTowCdmaCellTime, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v3 = v0;
    v6 = *(type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0) + 28);
    goto LABEL_5;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_CtsCdmaCellTime.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in Proto_Gnss_Emergency_CtsCdmaCellTime.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    v6 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
    v7 = (v3 + *(v6 + 24));
    if ((v7[1] & 1) == 0)
    {
      v8 = v6;
      v9 = *v7;
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
      v6 = v8;
    }

    v10 = (v3 + *(v6 + 28));
    if ((v10[1] & 1) == 0)
    {
      v11 = *v10;
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Proto_Gnss_Emergency_CtsCdmaCellTime.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 20), v8, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTowCdmaCellTime and conformance Proto_Gnss_Emergency_GpsTowCdmaCellTime, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_CtsCdmaCellTime@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0);
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

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_CtsCdmaCellTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CtsCdmaCellTime and conformance Proto_Gnss_Emergency_CtsCdmaCellTime, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_CtsCdmaCellTime(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CtsCdmaCellTime and conformance Proto_Gnss_Emergency_CtsCdmaCellTime, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_CtsCdmaCellTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CtsCdmaCellTime and conformance Proto_Gnss_Emergency_CtsCdmaCellTime, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_CellTimeData.decodeMessage<A>(decoder:)()
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
        v7 = *(type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0) + 24);
        type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
        v5 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime;
        v6 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CtsCdmaCellTime and conformance Proto_Gnss_Emergency_CtsCdmaCellTime;
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v3 = v0;
    v4 = *(type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0) + 20);
    type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
    v5 = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime;
    v6 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CtsEutranCellTime and conformance Proto_Gnss_Emergency_CtsEutranCellTime;
LABEL_5:
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(v6, v5);
    v0 = v3;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    goto LABEL_6;
  }

  return result;
}

uint64_t closure #1 in Proto_Gnss_Emergency_CellTimeData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 20), v8, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CtsEutranCellTime and conformance Proto_Gnss_Emergency_CtsEutranCellTime, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime);
}

uint64_t closure #2 in Proto_Gnss_Emergency_CellTimeData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 24), v8, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CtsCdmaCellTime and conformance Proto_Gnss_Emergency_CtsCdmaCellTime, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime);
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_UtranGpsTimeMeasured@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  UnknownStorage.init()();
  v8 = *(a1 + 20);
  v9 = a2(0);
  (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
  v10 = *(a1 + 24);
  v11 = a3(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a4 + v10, 1, 1, v11);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_CellTimeData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellTimeData and conformance Proto_Gnss_Emergency_CellTimeData, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_CellTimeData(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellTimeData and conformance Proto_Gnss_Emergency_CellTimeData, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_CellTimeData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellTimeData and conformance Proto_Gnss_Emergency_CellTimeData, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_CellTimeAssistance.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0) + 20);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_ClsNetworkType and conformance Proto_Gnss_Emergency_ClsNetworkType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        v4 = *(type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0) + 24);
        type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellTimeData and conformance Proto_Gnss_Emergency_CellTimeData, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GpsTimeMeasuredParams.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void), uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  result = a4(0);
  if (*(v11 + *(result + 20)) == 6)
  {
    if (v8)
    {
      return result;
    }
  }

  else
  {
    v16 = *(v11 + *(result + 20));
    a5();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v8)
    {
      return result;
    }
  }

  a7(v11, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #2 in Proto_Gnss_Emergency_CellTimeAssistance.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 24), v8, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellTimeData and conformance Proto_Gnss_Emergency_CellTimeData, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_CellTimeAssistance(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellTimeAssistance and conformance Proto_Gnss_Emergency_CellTimeAssistance, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_CellTimeAssistance(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellTimeAssistance and conformance Proto_Gnss_Emergency_CellTimeAssistance, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_CellTimeAssistance(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellTimeAssistance and conformance Proto_Gnss_Emergency_CellTimeAssistance, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_TowAssist.decodeMessage<A>(decoder:)()
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
          v8 = *(type metadata accessor for Proto_Gnss_Emergency_TowAssist(0) + 20);
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_15;
          }

          v3 = v0;
          v5 = *(type metadata accessor for Proto_Gnss_Emergency_TowAssist(0) + 24);
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v3 = v0;
            v6 = *(type metadata accessor for Proto_Gnss_Emergency_TowAssist(0) + 28);
            break;
          case 4:
            v3 = v0;
            v7 = *(type metadata accessor for Proto_Gnss_Emergency_TowAssist(0) + 32);
            break;
          case 5:
            v3 = v0;
            v4 = *(type metadata accessor for Proto_Gnss_Emergency_TowAssist(0) + 36);
            break;
          default:
            goto LABEL_15;
        }
      }

      v0 = v3;
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
LABEL_15:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_TowAssist.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
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

  v17 = (v5 + v10[8]);
  if ((v17[1] & 1) == 0)
  {
    v18 = *v17;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #5 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_TowAssist, MEMORY[0x277D21860]);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_TowAssist@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  v11 = a2 + a1[9];
  *v11 = 0;
  *(v11 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_TowAssist(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_TowAssist and conformance Proto_Gnss_Emergency_TowAssist, type metadata accessor for Proto_Gnss_Emergency_TowAssist);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_TowAssist(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_TowAssist and conformance Proto_Gnss_Emergency_TowAssist, type metadata accessor for Proto_Gnss_Emergency_TowAssist);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_TowAssist(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_TowAssist and conformance Proto_Gnss_Emergency_TowAssist, type metadata accessor for Proto_Gnss_Emergency_TowAssist);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GpsReferenceTime.decodeMessage<A>(decoder:)()
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
            v9 = *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 32);
          }

          else
          {
            v7 = *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 36);
          }

          goto LABEL_5;
        }

        if (result == 1)
        {
          v3 = v0;
          v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 24);
LABEL_5:
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_6;
        }

        if (result == 2)
        {
          v3 = v0;
          v6 = *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 28);
          goto LABEL_5;
        }
      }

      else if (result <= 6)
      {
        if (result != 5)
        {
          v3 = v0;
          v8 = *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 40);
          goto LABEL_5;
        }

        type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_TowAssist and conformance Proto_Gnss_Emergency_TowAssist, type metadata accessor for Proto_Gnss_Emergency_TowAssist);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else
      {
        switch(result)
        {
          case 7:
            v10 = v0;
            v11 = *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 44);
            lazy protocol witness table accessor for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol();
LABEL_26:
            v0 = v10;
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 8:
            v10 = v0;
            v12 = *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 48);
            lazy protocol witness table accessor for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol();
            goto LABEL_26;
          case 9:
            v3 = v0;
            v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 52);
            goto LABEL_5;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GpsReferenceTime.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v9 = result;
  v10 = (v3 + *(result + 24));
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

  v12 = (v3 + v9[7]);
  if ((v12[1] & 1) == 0)
  {
    v13 = *v12;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v14 = (v3 + v9[8]);
  if ((v14[1] & 1) == 0)
  {
    v15 = *v14;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v16 = (v3 + v9[9]);
  if ((v16[1] & 1) == 0)
  {
    v17 = *v16;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if (*(*v3 + 16))
  {
    type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_TowAssist and conformance Proto_Gnss_Emergency_TowAssist, type metadata accessor for Proto_Gnss_Emergency_TowAssist);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  closure #6 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);
  closure #7 in Proto_Gnss_Emergency_GpsMeasurementElement.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime, lazy protocol witness table accessor for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol);
  closure #7 in Proto_Gnss_Emergency_GpsReferenceTime.traverse<A>(visitor:)(v3);
  closure #9 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime, MEMORY[0x277D21860]);
  v18 = v3 + v9[5];
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #7 in Proto_Gnss_Emergency_GpsMeasurementElement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 44)) != 6)
  {
    v9 = *(a1 + *(result + 44));
    a6();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #7 in Proto_Gnss_Emergency_GpsReferenceTime.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  if (*(a1 + *(result + 48)) != 7)
  {
    v3 = *(a1 + *(result + 48));
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_GpsReferenceTime@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = a2 + a1[5];
  result = UnknownStorage.init()();
  v6 = a1[7];
  v7 = a2 + a1[6];
  *v7 = 0;
  v7[4] = 1;
  v8 = a2 + v6;
  *v8 = 0;
  v8[4] = 1;
  v9 = a1[9];
  v10 = a2 + a1[8];
  *v10 = 0;
  v10[4] = 1;
  v11 = a2 + v9;
  *v11 = 0;
  v11[4] = 1;
  v12 = a1[11];
  v13 = a2 + a1[10];
  *v13 = 0;
  v13[4] = 1;
  *(a2 + v12) = 6;
  v14 = a1[13];
  *(a2 + a1[12]) = 7;
  v15 = a2 + v14;
  *v15 = 0;
  v15[4] = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GpsReferenceTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsReferenceTime and conformance Proto_Gnss_Emergency_GpsReferenceTime, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GpsReferenceTime(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsReferenceTime and conformance Proto_Gnss_Emergency_GpsReferenceTime, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GpsReferenceTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsReferenceTime and conformance Proto_Gnss_Emergency_GpsReferenceTime, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_ReferenceLocation.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          v4 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 20);
          goto LABEL_5;
        case 2:
          v11 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 24);
          goto LABEL_5;
        case 3:
          v8 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 28);
          goto LABEL_5;
        case 4:
          v9 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 32);
          goto LABEL_5;
        case 5:
          v6 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 36);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          break;
        case 6:
          v12 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 40);
          goto LABEL_5;
        case 7:
          v14 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 44);
          goto LABEL_5;
        case 8:
          v10 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 48);
          goto LABEL_5;
        case 9:
          v16 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 52);
          goto LABEL_5;
        case 10:
          v3 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 56);
          goto LABEL_5;
        case 11:
          v15 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 60);
          goto LABEL_5;
        case 12:
          v5 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 64);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol();
          goto LABEL_13;
        case 13:
          v7 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 68);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol();
LABEL_13:
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        case 14:
          v13 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 72);
LABEL_5:
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        default:
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_ReferenceLocation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
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

  v17 = (v5 + v10[8]);
  if ((v17[1] & 1) == 0)
  {
    v18 = *v17;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #5 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation, MEMORY[0x277D21848]);
  closure #6 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
  closure #7 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
  closure #8 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
  closure #9 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation, MEMORY[0x277D21860]);
  closure #10 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
  closure #11 in Proto_Gnss_Emergency_ClsEutranCell.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
  closure #12 in Proto_Gnss_Emergency_ReferenceLocation.traverse<A>(visitor:)(v5);
  closure #13 in Proto_Gnss_Emergency_ReferenceLocation.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation, lazy protocol witness table accessor for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol);
  closure #14 in Proto_Gnss_Emergency_ReferenceLocation.traverse<A>(visitor:)(v5);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #11 in Proto_Gnss_Emergency_ClsEutranCell.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 60));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #12 in Proto_Gnss_Emergency_ReferenceLocation.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  if (*(a1 + *(result + 64)) != 6)
  {
    v3 = *(a1 + *(result + 64));
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #14 in Proto_Gnss_Emergency_ReferenceLocation.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v3 = (a1 + *(result + 72));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_ReferenceLocation(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ReferenceLocation and conformance Proto_Gnss_Emergency_ReferenceLocation, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_ReferenceLocation(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ReferenceLocation and conformance Proto_Gnss_Emergency_ReferenceLocation, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_ReferenceLocation(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ReferenceLocation and conformance Proto_Gnss_Emergency_ReferenceLocation, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.decodeMessage<A>(decoder:)()
{
  v2 = v0;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v7 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v6);

    *(v2 + v3) = v7;
  }

  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v1 || (v9 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 5:
      case 6:
      case 7:
      case 8:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 17:
      case 18:
      case 19:
      case 20:
      case 24:
      case 28:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        goto LABEL_8;
      case 3:
      case 4:
      case 9:
      case 10:
      case 16:
      case 21:
      case 22:
      case 23:
      case 25:
      case 26:
      case 27:
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
LABEL_8:
        swift_endAccess();
        break;
      default:
        continue;
    }
  }
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
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
    result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if ((*(v9 + 28) & 1) == 0)
  {
    v12 = *(v9 + 24);
    dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v9 + 36) & 1) == 0)
  {
    v13 = *(v9 + 32);
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v9 + 44) & 1) == 0)
  {
    v14 = *(v9 + 40);
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #5 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(v9);
  closure #7 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9, a1, a2, a3, 6, MEMORY[0x277D21848]);
  closure #8 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9, a1, a2, a3, 7, MEMORY[0x277D21848]);
  closure #9 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9, a1, a2, a3, 8, MEMORY[0x277D21848]);
  closure #10 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9);
  closure #11 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9);
  closure #12 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9, a1, a2, a3, 11, MEMORY[0x277D21848]);
  closure #13 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9, a1, a2, a3, 12, MEMORY[0x277D21848]);
  closure #14 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9, a1, a2, a3, 13, MEMORY[0x277D21848]);
  closure #16 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9, a1, a2, a3, 14, MEMORY[0x277D21848]);
  closure #17 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9, a1, a2, a3, 15, MEMORY[0x277D21848]);
  closure #16 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(v9);
  closure #17 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(v9);
  closure #18 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(v9);
  closure #19 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(v9);
  closure #20 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(v9);
  closure #21 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(v9);
  closure #22 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(v9);
  closure #23 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(v9);
  closure #24 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(v9);
  closure #25 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(v9);
  closure #26 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(v9);
  closure #27 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(v9);
  closure #28 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(v9);
  closure #29 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(v9);
  closure #30 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(v9);
  closure #31 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(v9);
  closure #32 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(v9);
  closure #33 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(v9);
  closure #34 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(v9);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #5 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 52) & 1) == 0)
  {
    v3 = *(a1 + 48);
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #7 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = swift_beginAccess();
  if ((*(a1 + 60) & 1) == 0)
  {
    return a6(*(a1 + 56), a5, a3, a4);
  }

  return result;
}

uint64_t closure #8 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = swift_beginAccess();
  if ((*(a1 + 68) & 1) == 0)
  {
    return a6(*(a1 + 64), a5, a3, a4);
  }

  return result;
}

uint64_t closure #9 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = swift_beginAccess();
  if ((*(a1 + 76) & 1) == 0)
  {
    return a6(*(a1 + 72), a5, a3, a4);
  }

  return result;
}

uint64_t closure #10 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 84) & 1) == 0)
  {
    v3 = *(a1 + 80);
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #11 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 92) & 1) == 0)
  {
    v3 = *(a1 + 88);
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #12 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = swift_beginAccess();
  if ((*(a1 + 100) & 1) == 0)
  {
    return a6(*(a1 + 96), a5, a3, a4);
  }

  return result;
}

uint64_t closure #13 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = swift_beginAccess();
  if ((*(a1 + 108) & 1) == 0)
  {
    return a6(*(a1 + 104), a5, a3, a4);
  }

  return result;
}

uint64_t closure #14 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = swift_beginAccess();
  if ((*(a1 + 116) & 1) == 0)
  {
    return a6(*(a1 + 112), a5, a3, a4);
  }

  return result;
}

uint64_t closure #16 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = swift_beginAccess();
  if ((*(a1 + 124) & 1) == 0)
  {
    return a6(*(a1 + 120), a5, a3, a4);
  }

  return result;
}

uint64_t closure #17 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = swift_beginAccess();
  if ((*(a1 + 132) & 1) == 0)
  {
    return a6(*(a1 + 128), a5, a3, a4);
  }

  return result;
}

uint64_t closure #16 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 140) & 1) == 0)
  {
    v3 = *(a1 + 136);
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #17 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 148) & 1) == 0)
  {
    v3 = *(a1 + 144);
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #18 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 156) & 1) == 0)
  {
    v3 = *(a1 + 152);
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #19 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 164) & 1) == 0)
  {
    v3 = *(a1 + 160);
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #20 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 172) & 1) == 0)
  {
    v3 = *(a1 + 168);
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #21 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 180) & 1) == 0)
  {
    v3 = *(a1 + 176);
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #22 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 188) & 1) == 0)
  {
    v3 = *(a1 + 184);
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #23 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 196) & 1) == 0)
  {
    v3 = *(a1 + 192);
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #24 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 204) & 1) == 0)
  {
    v3 = *(a1 + 200);
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #25 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 212) & 1) == 0)
  {
    v3 = *(a1 + 208);
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #26 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 220) & 1) == 0)
  {
    v3 = *(a1 + 216);
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #27 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 228) & 1) == 0)
  {
    v3 = *(a1 + 224);
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #28 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 236) & 1) == 0)
  {
    v3 = *(a1 + 232);
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #29 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 244) & 1) == 0)
  {
    v3 = *(a1 + 240);
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #30 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 252) & 1) == 0)
  {
    v3 = *(a1 + 248);
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #31 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = (a1 + 256);
  result = swift_beginAccess();
  if ((*(a1 + 260) & 1) == 0)
  {
    v4 = *v2;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #32 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = (a1 + 264);
  result = swift_beginAccess();
  if ((*(a1 + 268) & 1) == 0)
  {
    v4 = *v2;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #33 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = (a1 + 272);
  result = swift_beginAccess();
  if ((*(a1 + 276) & 1) == 0)
  {
    v4 = *v2;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #34 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = (a1 + 280);
  result = swift_beginAccess();
  if ((*(a1 + 284) & 1) == 0)
  {
    v4 = *v2;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t static Proto_Gnss_Emergency_SummaryReport.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = a3(0);
  if (*(a1 + *(v7 + 20)) != *(a2 + *(v7 + 20)) && (a4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t closure #1 in static Proto_Gnss_Emergency_GpsEphemeris.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  swift_beginAccess();
  v6 = *(a2 + 20);
  if (v5)
  {
    if (!*(a2 + 20))
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
  v7 = *(a1 + 24);
  v8 = *(a1 + 28);
  swift_beginAccess();
  v9 = *(a2 + 28);
  if (v8)
  {
    if (!*(a2 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (v7 != *(a2 + 24))
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v10 = *(a1 + 32);
  v11 = *(a1 + 36);
  swift_beginAccess();
  v12 = *(a2 + 36);
  if (v11)
  {
    if (!*(a2 + 36))
    {
      return 0;
    }
  }

  else
  {
    if (v10 != *(a2 + 32))
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v13 = *(a1 + 40);
  v14 = *(a1 + 44);
  swift_beginAccess();
  v15 = *(a2 + 44);
  if (v14)
  {
    if (!*(a2 + 44))
    {
      return 0;
    }
  }

  else
  {
    if (v13 != *(a2 + 40))
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v16 = *(a1 + 48);
  v17 = *(a1 + 52);
  swift_beginAccess();
  v18 = *(a2 + 52);
  if (v17)
  {
    if (!*(a2 + 52))
    {
      return 0;
    }
  }

  else
  {
    if (v16 != *(a2 + 48))
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v19 = *(a1 + 56);
  v20 = *(a1 + 60);
  swift_beginAccess();
  v21 = *(a2 + 60);
  if (v20)
  {
    if (!*(a2 + 60))
    {
      return 0;
    }
  }

  else
  {
    if (v19 != *(a2 + 56))
    {
      v21 = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v22 = *(a1 + 64);
  v23 = *(a1 + 68);
  swift_beginAccess();
  v24 = *(a2 + 68);
  if (v23)
  {
    if (!*(a2 + 68))
    {
      return 0;
    }
  }

  else
  {
    if (v22 != *(a2 + 64))
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v25 = *(a1 + 72);
  v26 = *(a1 + 76);
  swift_beginAccess();
  v27 = *(a2 + 76);
  if (v26)
  {
    if (!*(a2 + 76))
    {
      return 0;
    }
  }

  else
  {
    if (v25 != *(a2 + 72))
    {
      v27 = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v28 = *(a1 + 80);
  v29 = *(a1 + 84);
  swift_beginAccess();
  v30 = *(a2 + 84);
  if (v29)
  {
    if (!*(a2 + 84))
    {
      return 0;
    }
  }

  else
  {
    if (v28 != *(a2 + 80))
    {
      v30 = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v31 = *(a1 + 88);
  v32 = *(a1 + 92);
  swift_beginAccess();
  v33 = *(a2 + 92);
  if (v32)
  {
    if (!*(a2 + 92))
    {
      return 0;
    }
  }

  else
  {
    if (v31 != *(a2 + 88))
    {
      v33 = 1;
    }

    if (v33)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v34 = *(a1 + 96);
  v35 = *(a1 + 100);
  swift_beginAccess();
  v36 = *(a2 + 100);
  if (v35)
  {
    if (!*(a2 + 100))
    {
      return 0;
    }
  }

  else
  {
    if (v34 != *(a2 + 96))
    {
      v36 = 1;
    }

    if (v36)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v37 = *(a1 + 104);
  v38 = *(a1 + 108);
  swift_beginAccess();
  v39 = *(a2 + 108);
  if (v38)
  {
    if (!*(a2 + 108))
    {
      return 0;
    }
  }

  else
  {
    if (v37 != *(a2 + 104))
    {
      v39 = 1;
    }

    if (v39)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v40 = *(a1 + 112);
  v41 = *(a1 + 116);
  swift_beginAccess();
  v42 = *(a2 + 116);
  if (v41)
  {
    if (!*(a2 + 116))
    {
      return 0;
    }
  }

  else
  {
    if (v40 != *(a2 + 112))
    {
      v42 = 1;
    }

    if (v42)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v43 = *(a1 + 120);
  v44 = *(a1 + 124);
  swift_beginAccess();
  v45 = *(a2 + 124);
  if (v44)
  {
    if (!*(a2 + 124))
    {
      return 0;
    }
  }

  else
  {
    if (v43 != *(a2 + 120))
    {
      v45 = 1;
    }

    if (v45)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v46 = *(a1 + 128);
  v47 = *(a1 + 132);
  swift_beginAccess();
  v48 = *(a2 + 132);
  if (v47)
  {
    if (!*(a2 + 132))
    {
      return 0;
    }
  }

  else
  {
    if (v46 != *(a2 + 128))
    {
      v48 = 1;
    }

    if (v48)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v49 = *(a1 + 136);
  v50 = *(a1 + 140);
  swift_beginAccess();
  v51 = *(a2 + 140);
  if (v50)
  {
    if (!*(a2 + 140))
    {
      return 0;
    }
  }

  else
  {
    if (v49 != *(a2 + 136))
    {
      v51 = 1;
    }

    if (v51)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v52 = *(a1 + 144);
  v53 = *(a1 + 148);
  swift_beginAccess();
  v54 = *(a2 + 148);
  if (v53)
  {
    if (!*(a2 + 148))
    {
      return 0;
    }
  }

  else
  {
    if (v52 != *(a2 + 144))
    {
      v54 = 1;
    }

    if (v54)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v55 = *(a1 + 152);
  v56 = *(a1 + 156);
  swift_beginAccess();
  v57 = *(a2 + 156);
  if (v56)
  {
    if (!*(a2 + 156))
    {
      return 0;
    }
  }

  else
  {
    if (v55 != *(a2 + 152))
    {
      v57 = 1;
    }

    if (v57)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v58 = *(a1 + 160);
  v59 = *(a1 + 164);
  swift_beginAccess();
  v60 = *(a2 + 164);
  if (v59)
  {
    if (!*(a2 + 164))
    {
      return 0;
    }
  }

  else
  {
    if (v58 != *(a2 + 160))
    {
      v60 = 1;
    }

    if (v60)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v61 = *(a1 + 168);
  v62 = *(a1 + 172);
  swift_beginAccess();
  v63 = *(a2 + 172);
  if (v62)
  {
    if (!*(a2 + 172))
    {
      return 0;
    }
  }

  else
  {
    if (v61 != *(a2 + 168))
    {
      v63 = 1;
    }

    if (v63)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v64 = *(a1 + 176);
  v65 = *(a1 + 180);
  swift_beginAccess();
  v66 = *(a2 + 180);
  if (v65)
  {
    if (!*(a2 + 180))
    {
      return 0;
    }
  }

  else
  {
    if (v64 != *(a2 + 176))
    {
      v66 = 1;
    }

    if (v66)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v67 = *(a1 + 184);
  v68 = *(a1 + 188);
  swift_beginAccess();
  v69 = *(a2 + 188);
  if (v68)
  {
    if (!*(a2 + 188))
    {
      return 0;
    }
  }

  else
  {
    if (v67 != *(a2 + 184))
    {
      v69 = 1;
    }

    if (v69)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v70 = *(a1 + 192);
  v71 = *(a1 + 196);
  swift_beginAccess();
  v72 = *(a2 + 196);
  if (v71)
  {
    if (!*(a2 + 196))
    {
      return 0;
    }
  }

  else
  {
    if (v70 != *(a2 + 192))
    {
      v72 = 1;
    }

    if (v72)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v73 = *(a1 + 200);
  v74 = *(a1 + 204);
  swift_beginAccess();
  v75 = *(a2 + 204);
  if (v74)
  {
    if (!*(a2 + 204))
    {
      return 0;
    }
  }

  else
  {
    if (v73 != *(a2 + 200))
    {
      v75 = 1;
    }

    if (v75)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v76 = *(a1 + 208);
  v77 = *(a1 + 212);
  swift_beginAccess();
  v78 = *(a2 + 212);
  if (v77)
  {
    if (!*(a2 + 212))
    {
      return 0;
    }
  }

  else
  {
    if (v76 != *(a2 + 208))
    {
      v78 = 1;
    }

    if (v78)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v79 = *(a1 + 216);
  v80 = *(a1 + 220);
  swift_beginAccess();
  v81 = *(a2 + 220);
  if (v80)
  {
    if (!*(a2 + 220))
    {
      return 0;
    }
  }

  else
  {
    if (v79 != *(a2 + 216))
    {
      v81 = 1;
    }

    if (v81)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v82 = *(a1 + 224);
  v83 = *(a1 + 228);
  swift_beginAccess();
  v84 = *(a2 + 228);
  if (v83)
  {
    if (!*(a2 + 228))
    {
      return 0;
    }
  }

  else
  {
    if (v82 != *(a2 + 224))
    {
      v84 = 1;
    }

    if (v84)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v85 = *(a1 + 232);
  v86 = *(a1 + 236);
  swift_beginAccess();
  v87 = *(a2 + 236);
  if (v86)
  {
    if (!*(a2 + 236))
    {
      return 0;
    }
  }

  else
  {
    if (v85 != *(a2 + 232))
    {
      v87 = 1;
    }

    if (v87)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v88 = *(a1 + 240);
  v89 = *(a1 + 244);
  swift_beginAccess();
  v90 = *(a2 + 244);
  if (v89)
  {
    if (!*(a2 + 244))
    {
      return 0;
    }
  }

  else
  {
    if (v88 != *(a2 + 240))
    {
      v90 = 1;
    }

    if (v90)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v91 = *(a1 + 248);
  v92 = *(a1 + 252);
  swift_beginAccess();
  v93 = *(a2 + 252);
  if (v92)
  {
    if (!*(a2 + 252))
    {
      return 0;
    }
  }

  else
  {
    if (v91 != *(a2 + 248))
    {
      v93 = 1;
    }

    if (v93)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v94 = *(a1 + 256);
  v95 = *(a1 + 260);
  swift_beginAccess();
  v96 = *(a2 + 260);
  if (v95)
  {
    if (!*(a2 + 260))
    {
      return 0;
    }
  }

  else
  {
    if (v94 != *(a2 + 256))
    {
      v96 = 1;
    }

    if (v96)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v97 = *(a1 + 264);
  v98 = *(a1 + 268);
  swift_beginAccess();
  v99 = *(a2 + 268);
  if (v98)
  {
    if (!*(a2 + 268))
    {
      return 0;
    }
  }

  else
  {
    if (v97 != *(a2 + 264))
    {
      v99 = 1;
    }

    if (v99)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v100 = *(a1 + 272);
  v101 = *(a1 + 276);
  swift_beginAccess();
  v102 = *(a2 + 276);
  if (v101)
  {
    if (*(a2 + 276))
    {
      goto LABEL_199;
    }

    return 0;
  }

  if (v100 != *(a2 + 272))
  {
    v102 = 1;
  }

  if (v102)
  {
    return 0;
  }

LABEL_199:
  swift_beginAccess();
  v103 = *(a1 + 280);
  v104 = *(a1 + 284);
  swift_beginAccess();
  v105 = *(a2 + 284);
  if (v104)
  {
    if (!*(a2 + 284))
    {
      return 0;
    }
  }

  else
  {
    if (v103 != *(a2 + 280))
    {
      v105 = 1;
    }

    if (v105)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GpsEphemeris(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsEphemeris and conformance Proto_Gnss_Emergency_GpsEphemeris, type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GpsEphemeris(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsEphemeris and conformance Proto_Gnss_Emergency_GpsEphemeris, type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GpsEphemeris(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsEphemeris and conformance Proto_Gnss_Emergency_GpsEphemeris, type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Proto_Gnss_Emergency_SummaryReport(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (*(a1 + *(a3 + 20)) != *(a2 + *(a3 + 20)) && (a5() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t Proto_Gnss_Emergency_GpsNavigationModel.decodeMessage<A>(decoder:)()
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
          v8 = *(type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0) + 24);
          goto LABEL_18;
        }

        if (result == 2)
        {
          type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsEphemeris and conformance Proto_Gnss_Emergency_GpsEphemeris, type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v3 = v0;
            v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0) + 28);
            lazy protocol witness table accessor for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol();
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 4:
            v3 = v0;
            v7 = *(type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0) + 32);
            lazy protocol witness table accessor for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol();
            goto LABEL_5;
          case 5:
            v5 = v0;
            v6 = *(type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0) + 36);
LABEL_18:
            v0 = v5;
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GpsNavigationModel.traverse<A>(visitor:)()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
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
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  if (*(*v0 + 16))
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0);
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsEphemeris and conformance Proto_Gnss_Emergency_GpsEphemeris, type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  if (*(v0 + v3[7]) != 6)
  {
    v9 = *(v0 + v3[7]);
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  if (*(v0 + v3[8]) != 7)
  {
    v10 = *(v0 + v3[8]);
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  v6 = (v0 + v3[9]);
  if ((v6[1] & 1) == 0)
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v8 = v0 + v3[5];
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_GpsNavigationModel@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = a2 + a1[5];
  result = UnknownStorage.init()();
  v6 = a1[7];
  v7 = a2 + a1[6];
  *v7 = 0;
  v7[4] = 1;
  *(a2 + v6) = 6;
  v8 = a1[9];
  *(a2 + a1[8]) = 7;
  v9 = a2 + v8;
  *v9 = 0;
  v9[4] = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GpsNavigationModel(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsNavigationModel and conformance Proto_Gnss_Emergency_GpsNavigationModel, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GpsNavigationModel(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsNavigationModel and conformance Proto_Gnss_Emergency_GpsNavigationModel, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GpsNavigationModel(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsNavigationModel and conformance Proto_Gnss_Emergency_GpsNavigationModel, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_CplaneConfig.decodeMessage<A>(decoder:)()
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
      v3 = *(type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0) + 20);
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_CplaneConfig.traverse<A>(visitor:)()
{
  result = type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0);
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

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_CplaneConfig(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CplaneConfig and conformance Proto_Gnss_Emergency_CplaneConfig, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_CplaneConfig(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CplaneConfig and conformance Proto_Gnss_Emergency_CplaneConfig, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_CplaneConfig(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CplaneConfig and conformance Proto_Gnss_Emergency_CplaneConfig, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_CplaneContext.decodeMessage<A>(decoder:)()
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
        v7 = *(type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0) + 24);
        type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0);
        v5 = type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext;
        v6 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Cdma1xContext and conformance Proto_Gnss_Emergency_Cdma1xContext;
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v3 = v0;
    v4 = *(type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0) + 20);
    type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
    v5 = type metadata accessor for Proto_Gnss_Emergency_Configuration;
    v6 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration;
LABEL_5:
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(v6, v5);
    v0 = v3;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    goto LABEL_6;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_UtranGpsTimeMeasured.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a4(v5, a1, a2, a3);
  if (!v6)
  {
    a5(v5, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Proto_Gnss_Emergency_CplaneContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 20), v8, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_Configuration);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration, type metadata accessor for Proto_Gnss_Emergency_Configuration);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_Configuration);
}

uint64_t closure #2 in Proto_Gnss_Emergency_CplaneContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 24), v8, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Cdma1xContext and conformance Proto_Gnss_Emergency_Cdma1xContext, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_CplaneContext(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CplaneContext and conformance Proto_Gnss_Emergency_CplaneContext, type metadata accessor for Proto_Gnss_Emergency_CplaneContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_CplaneContext(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CplaneContext and conformance Proto_Gnss_Emergency_CplaneContext, type metadata accessor for Proto_Gnss_Emergency_CplaneContext);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_CplaneContext(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CplaneContext and conformance Proto_Gnss_Emergency_CplaneContext, type metadata accessor for Proto_Gnss_Emergency_CplaneContext);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_EmergConfig.decodeMessage<A>(decoder:)()
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
          v9 = *(type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0) + 28);
          type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0);
          v7 = type metadata accessor for Proto_Gnss_Emergency_CplaneConfig;
          v8 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CplaneConfig and conformance Proto_Gnss_Emergency_CplaneConfig;
        }

        else
        {
          if (result != 4)
          {
            goto LABEL_5;
          }

          v5 = v0;
          v6 = *(type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0) + 32);
          type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
          v7 = type metadata accessor for Proto_Gnss_Emergency_SuplConfig;
          v8 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SuplConfig and conformance Proto_Gnss_Emergency_SuplConfig;
        }

        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(v8, v7);
        v0 = v5;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 1)
      {
        v3 = *(type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0) + 20);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else if (result == 2)
      {
        v4 = *(type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0) + 24);
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_EmergConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
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

  v11 = (v5 + *(v10 + 24));
  if (v11[1])
  {
    v12 = *v11;
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  closure #3 in Proto_Gnss_Emergency_EmergConfig.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #4 in Proto_Gnss_Emergency_EmergConfig.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #3 in Proto_Gnss_Emergency_EmergConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 28), v8, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CplaneConfig and conformance Proto_Gnss_Emergency_CplaneConfig, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);
}

uint64_t closure #4 in Proto_Gnss_Emergency_EmergConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 32), v8, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_SuplConfig);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SuplConfig and conformance Proto_Gnss_Emergency_SuplConfig, type metadata accessor for Proto_Gnss_Emergency_SuplConfig);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_SuplConfig);
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_EmergConfig@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  *(a2 + a1[5]) = 2;
  v5 = (a2 + v4);
  *v5 = 0;
  v5[1] = 0;
  v6 = a1[7];
  v7 = type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[8];
  v9 = type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a2 + v8, 1, 1, v9);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_EmergConfig(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EmergConfig and conformance Proto_Gnss_Emergency_EmergConfig, type metadata accessor for Proto_Gnss_Emergency_EmergConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_EmergConfig(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EmergConfig and conformance Proto_Gnss_Emergency_EmergConfig, type metadata accessor for Proto_Gnss_Emergency_EmergConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_EmergConfig(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EmergConfig and conformance Proto_Gnss_Emergency_EmergConfig, type metadata accessor for Proto_Gnss_Emergency_EmergConfig);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GpsAcqElement.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 20);
          goto LABEL_18;
        case 2:
          v11 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 24);
          goto LABEL_18;
        case 3:
          v8 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 28);
          goto LABEL_18;
        case 4:
          v9 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 32);
          goto LABEL_18;
        case 5:
          v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 36);
          goto LABEL_18;
        case 6:
          v12 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 40);
          goto LABEL_18;
        case 7:
          v13 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 44);
          goto LABEL_18;
        case 8:
          v10 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 48);
          goto LABEL_18;
        case 9:
          v15 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 52);
          goto LABEL_18;
        case 10:
          v7 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 56);
          goto LABEL_18;
        case 11:
          v14 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 60);
          goto LABEL_18;
        case 12:
          v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 64);
LABEL_18:
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 13:
          v6 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 68);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_GpsDopplerUncMpsExt and conformance Proto_Gnss_Emergency_GpsDopplerUncMpsExt();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        default:
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GpsAcqElement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
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

  v17 = (v5 + v10[8]);
  if ((v17[1] & 1) == 0)
  {
    v18 = *v17;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #5 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement, MEMORY[0x277D21860]);
  closure #6 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement);
  closure #7 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement);
  closure #8 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement);
  closure #9 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement, MEMORY[0x277D21860]);
  closure #10 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement);
  closure #11 in Proto_Gnss_Emergency_ClsEutranCell.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement);
  closure #12 in Proto_Gnss_Emergency_GpsAcqElement.traverse<A>(visitor:)(v5);
  closure #13 in Proto_Gnss_Emergency_ReferenceLocation.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement, lazy protocol witness table accessor for type Proto_Gnss_Emergency_GpsDopplerUncMpsExt and conformance Proto_Gnss_Emergency_GpsDopplerUncMpsExt);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #12 in Proto_Gnss_Emergency_GpsAcqElement.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v3 = (a1 + *(result + 64));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #13 in Proto_Gnss_Emergency_ReferenceLocation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 68)) != 7)
  {
    v9 = *(a1 + *(result + 68));
    a6();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_GpsAcqElement@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  v17 = a1[14];
  v18 = a2 + a1[13];
  *v18 = 0;
  *(v18 + 4) = 1;
  v19 = a2 + v17;
  *v19 = 0;
  *(v19 + 4) = 1;
  v20 = a1[16];
  v21 = a2 + a1[15];
  *v21 = 0;
  *(v21 + 4) = 1;
  v22 = a2 + v20;
  *v22 = 0;
  *(v22 + 4) = 1;
  *(a2 + a1[17]) = 7;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GpsAcqElement(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsAcqElement and conformance Proto_Gnss_Emergency_GpsAcqElement, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GpsAcqElement(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsAcqElement and conformance Proto_Gnss_Emergency_GpsAcqElement, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GpsAcqElement(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsAcqElement and conformance Proto_Gnss_Emergency_GpsAcqElement, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GpsAcqAssistance.decodeMessage<A>(decoder:)()
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
            v8 = v0;
            v10 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 36);
LABEL_23:
            v0 = v8;
LABEL_6:
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            goto LABEL_7;
          }

          v6 = v0;
          v7 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 40);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol();
          goto LABEL_26;
        }

        if (result == 7)
        {
          v6 = v0;
          v12 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 44);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol();
LABEL_26:
          v0 = v6;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_7;
        }

        if (result == 8)
        {
          v8 = v0;
          v9 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 48);
          goto LABEL_23;
        }
      }

      else if (result > 2)
      {
        if (result == 3)
        {
          v11 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 32);
          type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellTimeAssistance and conformance Proto_Gnss_Emergency_CellTimeAssistance, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else
        {
          type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsAcqElement and conformance Proto_Gnss_Emergency_GpsAcqElement, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          v3 = v0;
          v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 24);
LABEL_5:
          v0 = v3;
          goto LABEL_6;
        }

        if (result == 2)
        {
          v3 = v0;
          v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 28);
          goto LABEL_5;
        }
      }

LABEL_7:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GpsAcqAssistance.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  v9 = result;
  v10 = (v3 + *(result + 24));
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

  v12 = (v3 + v9[7]);
  if ((v12[1] & 1) == 0)
  {
    v13 = *v12;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #3 in Proto_Gnss_Emergency_GpsAcqAssistance.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (*(*v3 + 16))
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsAcqElement and conformance Proto_Gnss_Emergency_GpsAcqElement, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  v14 = (v3 + v9[9]);
  if ((v14[1] & 1) == 0)
  {
    v15 = *v14;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #5 in Proto_Gnss_Emergency_GpsAcqAssistance.traverse<A>(visitor:)(v3);
  closure #6 in Proto_Gnss_Emergency_GpsAcqAssistance.traverse<A>(visitor:)(v3);
  closure #8 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);
  v16 = v3 + v9[5];
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #3 in Proto_Gnss_Emergency_GpsAcqAssistance.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 32), v8, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellTimeAssistance and conformance Proto_Gnss_Emergency_CellTimeAssistance, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance);
}

uint64_t closure #5 in Proto_Gnss_Emergency_GpsAcqAssistance.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  if (*(a1 + *(result + 40)) != 6)
  {
    v3 = *(a1 + *(result + 40));
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #6 in Proto_Gnss_Emergency_GpsAcqAssistance.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  if (*(a1 + *(result + 44)) != 7)
  {
    v3 = *(a1 + *(result + 44));
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_GpsAcqAssistance@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = &a2[a1[5]];
  UnknownStorage.init()();
  v5 = a1[7];
  v6 = &a2[a1[6]];
  *v6 = 0;
  v6[4] = 1;
  v7 = &a2[v5];
  *v7 = 0;
  v7[4] = 1;
  v8 = a1[8];
  v9 = type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
  result = (*(*(v9 - 8) + 56))(&a2[v8], 1, 1, v9);
  v11 = a1[10];
  v12 = &a2[a1[9]];
  *v12 = 0;
  v12[4] = 1;
  a2[v11] = 6;
  v13 = a1[12];
  a2[a1[11]] = 7;
  v14 = &a2[v13];
  *v14 = 0;
  v14[4] = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GpsAcqAssistance(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsAcqAssistance and conformance Proto_Gnss_Emergency_GpsAcqAssistance, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GpsAcqAssistance(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsAcqAssistance and conformance Proto_Gnss_Emergency_GpsAcqAssistance, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GpsAcqAssistance(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsAcqAssistance and conformance Proto_Gnss_Emergency_GpsAcqAssistance, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_CellFTAssistanceRequest.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest(0) + 20);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_ClsNetworkType and conformance Proto_Gnss_Emergency_ClsNetworkType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_CellFTAssistanceRequest.traverse<A>(visitor:)()
{
  result = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest(0);
  if (*(v0 + *(result + 20)) == 6)
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v3 = *(v0 + *(result + 20));
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_ClsNetworkType and conformance Proto_Gnss_Emergency_ClsNetworkType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t static Proto_Gnss_Emergency_CellFTAssistanceRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 == 6)
  {
    if (v6 != 6)
    {
      return 0;
    }
  }

  else if (v5 != v6)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_CellFTAssistanceRequest@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  *(a2 + *(a1 + 20)) = 6;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_CellFTAssistanceRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellFTAssistanceRequest and conformance Proto_Gnss_Emergency_CellFTAssistanceRequest, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_CellFTAssistanceRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellFTAssistanceRequest and conformance Proto_Gnss_Emergency_CellFTAssistanceRequest, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_CellFTAssistanceRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellFTAssistanceRequest and conformance Proto_Gnss_Emergency_CellFTAssistanceRequest, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Proto_Gnss_Emergency_CellFTAssistanceRequest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a1 + v3);
  v5 = *(a2 + v3);
  if (v4 == 6)
  {
    if (v5 != 6)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t Proto_Gnss_Emergency_CellFTAssistance.decodeMessage<A>(decoder:)()
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
          v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0) + 28);
          type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellTimeData and conformance Proto_Gnss_Emergency_CellTimeData, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_5;
        case 2:
          v4 = v0;
          v6 = *(type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0) + 24);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_ClsNetworkType and conformance Proto_Gnss_Emergency_ClsNetworkType();
          break;
        case 1:
          v4 = v0;
          v5 = *(type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0) + 20);
          lazy protocol witness table accessor for type Proto_Gnss_Result and conformance Proto_Gnss_Result();
          break;
        default:
          goto LABEL_5;
      }

      v0 = v4;
      dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_CellFTAssistance.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  v10 = result;
  if (*(v5 + *(result + 20)) == 10)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v11 = *(v5 + *(result + 20));
    lazy protocol witness table accessor for type Proto_Gnss_Result and conformance Proto_Gnss_Result();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(v5 + *(v10 + 24)) != 6)
  {
    v12 = *(v5 + *(v10 + 24));
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_ClsNetworkType and conformance Proto_Gnss_Emergency_ClsNetworkType();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  closure #3 in Proto_Gnss_Emergency_CellFTAssistance.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #3 in Proto_Gnss_Emergency_CellFTAssistance.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 28), v8, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellTimeData and conformance Proto_Gnss_Emergency_CellTimeData, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_CellFTAssistance@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  *(a2 + a1[5]) = 10;
  *(a2 + v4) = 6;
  v5 = a1[7];
  v6 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_CellFTAssistance(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellFTAssistance and conformance Proto_Gnss_Emergency_CellFTAssistance, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_CellFTAssistance(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellFTAssistance and conformance Proto_Gnss_Emergency_CellFTAssistance, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_CellFTAssistance(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellFTAssistance and conformance Proto_Gnss_Emergency_CellFTAssistance, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_NetworkReferenceLocation.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          v1 = *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 20);
          goto LABEL_3;
        case 2:
          v9 = *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 24);
          goto LABEL_3;
        case 3:
          v5 = *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 28);
          goto LABEL_3;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        v8 = *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 40);
LABEL_19:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else if (result == 7)
      {
        v6 = *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 44);
        goto LABEL_19;
      }
    }

    else
    {
      if (result == 4)
      {
        v7 = *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 32);
      }

      else
      {
        v4 = *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 36);
      }

LABEL_3:
      v0 = 0;
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }
}

uint64_t Proto_Gnss_Emergency_NetworkReferenceLocation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
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

  closure #5 in Proto_Gnss_Emergency_NetworkReferenceLocation.traverse<A>(visitor:)(v5);
  closure #6 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
  closure #7 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #5 in Proto_Gnss_Emergency_NetworkReferenceLocation.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  v3 = (a1 + *(result + 36));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_NetworkReferenceLocation@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  v11 = a1[10];
  v12 = a2 + a1[9];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a2 + v11;
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a2 + a1[11];
  *v14 = 0;
  *(v14 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_NetworkReferenceLocation(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_NetworkReferenceLocation and conformance Proto_Gnss_Emergency_NetworkReferenceLocation, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_NetworkReferenceLocation(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_NetworkReferenceLocation and conformance Proto_Gnss_Emergency_NetworkReferenceLocation, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_NetworkReferenceLocation(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_NetworkReferenceLocation and conformance Proto_Gnss_Emergency_NetworkReferenceLocation, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_NetworkReferenceTime.decodeMessage<A>(decoder:)()
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
        v1 = *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0) + 28);
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        break;
      case 2:
        v5 = *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0) + 24);
LABEL_10:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        break;
      case 1:
        v4 = *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0) + 20);
        goto LABEL_10;
    }
  }
}

uint64_t Proto_Gnss_Emergency_NetworkReferenceTime.traverse<A>(visitor:)()
{
  result = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
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
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  v6 = (v0 + *(v3 + 24));
  if ((v6[1] & 1) == 0)
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v8 = (v0 + *(v3 + 28));
  if ((v8[1] & 1) == 0)
  {
    v9 = *v8;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_NetworkReferenceTime@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  *(v8 + 8) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_NetworkReferenceTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_NetworkReferenceTime and conformance Proto_Gnss_Emergency_NetworkReferenceTime, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_NetworkReferenceTime(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_NetworkReferenceTime and conformance Proto_Gnss_Emergency_NetworkReferenceTime, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_NetworkReferenceTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_NetworkReferenceTime and conformance Proto_Gnss_Emergency_NetworkReferenceTime, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_Is801VelocityInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Is801VelocityInfo and conformance Proto_Gnss_Emergency_Is801VelocityInfo, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_Is801VelocityInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Is801VelocityInfo and conformance Proto_Gnss_Emergency_Is801VelocityInfo, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_Is801VelocityInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Is801VelocityInfo and conformance Proto_Gnss_Emergency_Is801VelocityInfo, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_Is801ClockInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Is801ClockInfo and conformance Proto_Gnss_Emergency_Is801ClockInfo, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_Is801ClockInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Is801ClockInfo and conformance Proto_Gnss_Emergency_Is801ClockInfo, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_Is801ClockInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Is801ClockInfo and conformance Proto_Gnss_Emergency_Is801ClockInfo, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_ClsGpsCellTime@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = *(a1 + 24);
  v6 = a2 + *(a1 + 20);
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_Is801HeightInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Is801HeightInfo and conformance Proto_Gnss_Emergency_Is801HeightInfo, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_Is801HeightInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Is801HeightInfo and conformance Proto_Gnss_Emergency_Is801HeightInfo, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_Is801HeightInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Is801HeightInfo and conformance Proto_Gnss_Emergency_Is801HeightInfo, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_Is801LocationInd.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v1)
  {
    while (1)
    {
      if (v3)
      {
        return result;
      }

      if (result > 6)
      {
        break;
      }

      if (result > 3)
      {
        if (result == 4)
        {
          v4 = v1;
          v15 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 32);
          goto LABEL_5;
        }

        if (result == 5)
        {
          v4 = v1;
          v19 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 36);
          goto LABEL_5;
        }

        v9 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 40);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_FixType and conformance Proto_Gnss_Emergency_FixType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else
      {
        switch(result)
        {
          case 1:
            v4 = v1;
            v5 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 20);
LABEL_5:
            v1 = v4;
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            break;
          case 2:
            v4 = v1;
            v17 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 24);
            goto LABEL_5;
          case 3:
            v4 = v1;
            v6 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 28);
            goto LABEL_5;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result > 9)
    {
      if (result == 10)
      {
        v10 = v1;
        v16 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 56);
        type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0);
        v12 = type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo;
        v13 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Is801ClockInfo and conformance Proto_Gnss_Emergency_Is801ClockInfo;
        goto LABEL_28;
      }

      if (result != 11)
      {
        if (result != 12)
        {
          goto LABEL_6;
        }

        v10 = v1;
        v11 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 64);
        type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0);
        v12 = type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo;
        v13 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Is801HeightInfo and conformance Proto_Gnss_Emergency_Is801HeightInfo;
LABEL_28:
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(v13, v12);
        v1 = v10;
LABEL_31:
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        goto LABEL_6;
      }

      v7 = v1;
      v20 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 60);
    }

    else
    {
      if (result == 7)
      {
        v14 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 44);
LABEL_35:
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        goto LABEL_6;
      }

      if (result == 8)
      {
        v18 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 48);
        type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Is801VelocityInfo and conformance Proto_Gnss_Emergency_Is801VelocityInfo, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo);
        goto LABEL_31;
      }

      v7 = v1;
      v8 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 52);
    }

    v1 = v7;
    goto LABEL_35;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_Is801LocationInd.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
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

  v17 = (v5 + v10[8]);
  if ((v17[1] & 1) == 0)
  {
    v18 = *v17;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #5 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd, MEMORY[0x277D21860]);
  closure #6 in Proto_Gnss_Emergency_Is801LocationInd.traverse<A>(visitor:)(v5);
  closure #7 in Proto_Gnss_Emergency_SuplContext.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
  closure #8 in Proto_Gnss_Emergency_Is801LocationInd.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #9 in Proto_Gnss_Emergency_SuplContext.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
  closure #10 in Proto_Gnss_Emergency_Is801LocationInd.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #11 in Proto_Gnss_Emergency_Is801LocationInd.traverse<A>(visitor:)(v5);
  closure #12 in Proto_Gnss_Emergency_Is801LocationInd.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #6 in Proto_Gnss_Emergency_Is801LocationInd.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  if (*(a1 + *(result + 40)) != 4)
  {
    v3 = *(a1 + *(result + 40));
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_FixType and conformance Proto_Gnss_Emergency_FixType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #7 in Proto_Gnss_Emergency_SuplContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 44)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #8 in Proto_Gnss_Emergency_Is801LocationInd.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 48), v8, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Is801VelocityInfo and conformance Proto_Gnss_Emergency_Is801VelocityInfo, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo);
}

uint64_t closure #9 in Proto_Gnss_Emergency_SuplContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 52)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #10 in Proto_Gnss_Emergency_Is801LocationInd.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 56), v8, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Is801ClockInfo and conformance Proto_Gnss_Emergency_Is801ClockInfo, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo);
}

uint64_t closure #11 in Proto_Gnss_Emergency_Is801LocationInd.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  if (*(a1 + *(result + 60)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #12 in Proto_Gnss_Emergency_Is801LocationInd.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 64), v8, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Is801HeightInfo and conformance Proto_Gnss_Emergency_Is801HeightInfo, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo);
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_Is801LocationInd@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  *(a2 + v10) = 4;
  v12 = a1[12];
  *(a2 + a1[11]) = 2;
  v13 = type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0);
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  v14 = a1[14];
  *(a2 + a1[13]) = 2;
  v15 = type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0);
  (*(*(v15 - 8) + 56))(a2 + v14, 1, 1, v15);
  v16 = a1[15];
  v17 = a1[16];
  *(a2 + v16) = 2;
  v18 = type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0);
  v19 = *(*(v18 - 8) + 56);

  return v19(a2 + v17, 1, 1, v18);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_Is801LocationInd(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Is801LocationInd and conformance Proto_Gnss_Emergency_Is801LocationInd, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_Is801LocationInd(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Is801LocationInd and conformance Proto_Gnss_Emergency_Is801LocationInd, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_Is801LocationInd(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Is801LocationInd and conformance Proto_Gnss_Emergency_Is801LocationInd, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationIndication, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t Proto_Gnss_Emergency_MeasurementReportWithEstimate.decodeMessage<A>(decoder:)()
{
  v2 = v0;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass.init(copying:)(v6);

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

      if (result <= 5)
      {
        v13 = v1;
        if (result == 4)
        {
          swift_beginAccess();
          type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
          v14 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements;
          v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsMeasurements and conformance Proto_Gnss_Emergency_GpsMeasurements;
        }

        else
        {
          swift_beginAccess();
          type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
          v14 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd;
          v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Is801LocationInd and conformance Proto_Gnss_Emergency_Is801LocationInd;
        }

LABEL_19:
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(v15, v14);
        v1 = v13;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        goto LABEL_23;
      }

      if (result == 6)
      {
        v16 = v1;
        swift_beginAccess();
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_AfltAction and conformance Proto_Gnss_Emergency_AfltAction();
        goto LABEL_21;
      }

      if (result != 7)
      {
        goto LABEL_24;
      }

      swift_beginAccess();
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
LABEL_23:
      swift_endAccess();
LABEL_24:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result == 1)
    {
      v16 = v1;
      swift_beginAccess();
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_ErrorCodes and conformance Proto_Gnss_Emergency_ErrorCodes();
LABEL_21:
      v1 = v16;
      dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      goto LABEL_23;
    }

    if (result == 2)
    {
      swift_beginAccess();
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      goto LABEL_23;
    }

    if (result != 3)
    {
      goto LABEL_24;
    }

    v13 = v1;
    swift_beginAccess();
    type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
    v14 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo;
    v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionInfo and conformance Proto_Gnss_Emergency_SessionInfo;
    goto LABEL_19;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_MeasurementReportWithEstimate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 16) == 9)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v12 = *(v9 + 16);
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_ErrorCodes and conformance Proto_Gnss_Emergency_ErrorCodes();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if ((*(v9 + 24) & 1) == 0)
  {
    v11 = *(v9 + 20);
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #3 in closure #1 in Proto_Gnss_Emergency_MeasurementReportWithEstimate.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #4 in closure #1 in Proto_Gnss_Emergency_MeasurementReportWithEstimate.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #5 in closure #1 in Proto_Gnss_Emergency_MeasurementReportWithEstimate.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #6 in closure #1 in Proto_Gnss_Emergency_MeasurementReportWithEstimate.traverse<A>(visitor:)(v9);
  closure #7 in closure #1 in Proto_Gnss_Emergency_MeasurementReport.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #3 in closure #1 in Proto_Gnss_Emergency_MeasurementReportWithEstimate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionInfo and conformance Proto_Gnss_Emergency_SessionInfo, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
}

uint64_t closure #4 in closure #1 in Proto_Gnss_Emergency_MeasurementReportWithEstimate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsMeasurements and conformance Proto_Gnss_Emergency_GpsMeasurements, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
}

uint64_t closure #5 in closure #1 in Proto_Gnss_Emergency_MeasurementReportWithEstimate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationIndication;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Is801LocationInd and conformance Proto_Gnss_Emergency_Is801LocationInd, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
}

uint64_t closure #6 in closure #1 in Proto_Gnss_Emergency_MeasurementReportWithEstimate.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__afltAction;
  result = swift_beginAccess();
  if (*(a1 + v2) != 4)
  {
    v4 = *(a1 + v2);
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_AfltAction and conformance Proto_Gnss_Emergency_AfltAction();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #7 in closure #1 in Proto_Gnss_Emergency_MeasurementReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v6) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

BOOL closure #1 in static Proto_Gnss_Emergency_MeasurementReportWithEstimate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  v107 = *(v4 - 8);
  v108 = v4;
  v5 = *(v107 + 64);
  MEMORY[0x28223BE20](v4);
  v103 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSg_ADtMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSg_ADtMR);
  v7 = *(*(v106 - 8) + 64);
  MEMORY[0x28223BE20](v106);
  v9 = &v100 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v104 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v115 = &v100 - v14;
  v15 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  v112 = *(v15 - 8);
  v113 = v15;
  v16 = *(v112 + 64);
  MEMORY[0x28223BE20](v15);
  v105 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSg_ADtMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSg_ADtMR);
  v18 = *(*(v111 - 8) + 64);
  MEMORY[0x28223BE20](v111);
  v114 = &v100 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v109 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v117 = &v100 - v24;
  v25 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v118 = *(v25 - 8);
  v26 = *(v118 + 64);
  MEMORY[0x28223BE20](v25);
  v110 = &v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSg_ADtMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSg_ADtMR);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v100 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v36 = &v100 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v38 = &v100 - v37;
  swift_beginAccess();
  v39 = *(a1 + 16);
  swift_beginAccess();
  v40 = *(a2 + 16);
  if (v39 == 9)
  {
    if (v40 != 9)
    {
      return 0;
    }

LABEL_6:
    swift_beginAccess();
    v42 = *(a1 + 20);
    v102 = a1;
    v43 = *(a1 + 24);
    swift_beginAccess();
    v44 = *(a2 + 24);
    if (v43)
    {
      if (!*(a2 + 24))
      {
        return 0;
      }
    }

    else
    {
      if (v42 != *(a2 + 20))
      {
        v44 = 1;
      }

      if (v44)
      {
        return 0;
      }
    }

    v101 = v9;
    v116 = a2;
    v45 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    v46 = v102;
    swift_beginAccess();
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v46 + v45, v38, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    v47 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    swift_beginAccess();
    v48 = *(v28 + 48);
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v38, v31, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    v49 = v116 + v47;
    v50 = v116;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v49, &v31[v48], &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    v51 = *(v118 + 48);
    if (v51(v31, 1, v25) == 1)
    {

      outlined destroy of Any?(v38, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
      if (v51(&v31[v48], 1, v25) == 1)
      {
        outlined destroy of Any?(v31, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
        goto LABEL_20;
      }
    }

    else
    {
      outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v31, v36, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
      if (v51(&v31[v48], 1, v25) != 1)
      {
        v52 = v110;
        outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v31[v48], v110, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        v46 = v102;

        v53 = specialized static Proto_Gnss_Emergency_SessionInfo.== infix(_:_:)(v36, v52);
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v52, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        outlined destroy of Any?(v38, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v36, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        outlined destroy of Any?(v31, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
        if ((v53 & 1) == 0)
        {
          goto LABEL_41;
        }

LABEL_20:
        v54 = v50;
        v55 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
        swift_beginAccess();
        v56 = v117;
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v46 + v55, v117, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
        v57 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
        swift_beginAccess();
        v58 = *(v111 + 48);
        v59 = v114;
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v56, v114, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v54 + v57, v59 + v58, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
        v60 = v113;
        v61 = *(v112 + 48);
        if (v61(v59, 1, v113) == 1)
        {
          outlined destroy of Any?(v56, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
          v62 = v61(v59 + v58, 1, v60);
          v63 = v115;
          if (v62 == 1)
          {
            outlined destroy of Any?(v59, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
LABEL_29:
            v77 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationIndication;
            swift_beginAccess();
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v46 + v77, v63, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
            v78 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationIndication;
            v79 = v116;
            swift_beginAccess();
            v80 = *(v106 + 48);
            v81 = v101;
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v63, v101, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
            v82 = v79 + v78;
            v83 = v81;
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v82, v81 + v80, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
            v84 = v108;
            v85 = *(v107 + 48);
            if (v85(v81, 1, v108) == 1)
            {
              outlined destroy of Any?(v63, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
              if (v85(v81 + v80, 1, v84) == 1)
              {
                outlined destroy of Any?(v81, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
                v86 = v116;
LABEL_36:
                v92 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__afltAction;
                swift_beginAccess();
                v93 = *(v46 + v92);
                v94 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__afltAction;
                swift_beginAccess();
                v95 = *(v86 + v94);
                if (v93 == 4)
                {
                  if (v95 == 4)
                  {
LABEL_46:
                    v96 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime;
                    swift_beginAccess();
                    v97 = *(v46 + v96);

                    v98 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime;
                    swift_beginAccess();
                    v99 = *(v86 + v98);

                    if (v97 != 2)
                    {
                      return v99 != 2 && ((v97 ^ v99) & 1) == 0;
                    }

                    return v99 == 2;
                  }
                }

                else if (v95 != 4 && v93 == v95)
                {
                  goto LABEL_46;
                }

LABEL_41:

                return 0;
              }
            }

            else
            {
              v87 = v81;
              v88 = v104;
              outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v87, v104, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
              if (v85(v83 + v80, 1, v84) != 1)
              {
                v89 = v83 + v80;
                v90 = v103;
                outlined init with take of Proto_Gnss_Emergency_SLPAddress(v89, v103, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
                v91 = specialized static Proto_Gnss_Emergency_Is801LocationInd.== infix(_:_:)(v88, v90);
                outlined destroy of Proto_Gnss_Emergency_SLPAddress(v90, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
                outlined destroy of Any?(v63, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
                outlined destroy of Proto_Gnss_Emergency_SLPAddress(v88, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
                outlined destroy of Any?(v83, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
                v86 = v116;
                if ((v91 & 1) == 0)
                {
                  goto LABEL_41;
                }

                goto LABEL_36;
              }

              outlined destroy of Any?(v63, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
              outlined destroy of Proto_Gnss_Emergency_SLPAddress(v88, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
            }

            v66 = &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSg_ADtMd;
            v67 = &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSg_ADtMR;
            v68 = v83;
LABEL_40:
            outlined destroy of Any?(v68, v66, v67);
            goto LABEL_41;
          }
        }

        else
        {
          v64 = v109;
          outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v59, v109, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
          v65 = v61(v59 + v58, 1, v60);
          v63 = v115;
          if (v65 != 1)
          {
            v69 = v59 + v58;
            v70 = v105;
            outlined init with take of Proto_Gnss_Emergency_SLPAddress(v69, v105, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
            v71 = *(v60 + 20);
            v72 = *(v64 + v71);
            v73 = *(v70 + v71);
            if (v72 != v73)
            {
              v74 = *(v64 + v71);

              v75 = closure #1 in static Proto_Gnss_Emergency_GpsMeasurements.== infix(_:_:)(v72, v73);

              if (!v75)
              {
                outlined destroy of Proto_Gnss_Emergency_SLPAddress(v70, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
                outlined destroy of Any?(v117, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
                outlined destroy of Proto_Gnss_Emergency_SLPAddress(v64, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
                v68 = v59;
                v66 = &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd;
                v67 = &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR;
                goto LABEL_40;
              }
            }

            type metadata accessor for UnknownStorage();
            lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
            v76 = dispatch thunk of static Equatable.== infix(_:_:)();
            outlined destroy of Proto_Gnss_Emergency_SLPAddress(v70, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
            outlined destroy of Any?(v117, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
            outlined destroy of Proto_Gnss_Emergency_SLPAddress(v64, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
            outlined destroy of Any?(v59, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
            if ((v76 & 1) == 0)
            {
              goto LABEL_41;
            }

            goto LABEL_29;
          }

          outlined destroy of Any?(v117, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
          outlined destroy of Proto_Gnss_Emergency_SLPAddress(v64, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
        }

        v66 = &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSg_ADtMd;
        v67 = &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSg_ADtMR;
        v68 = v59;
        goto LABEL_40;
      }

      outlined destroy of Any?(v38, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v36, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    }

    outlined destroy of Any?(v31, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSg_ADtMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSg_ADtMR);
    goto LABEL_41;
  }

  result = 0;
  if (v40 != 9 && v39 == v40)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_MeasurementReportWithEstimate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementReportWithEstimate and conformance Proto_Gnss_Emergency_MeasurementReportWithEstimate, type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_MeasurementReportWithEstimate(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementReportWithEstimate and conformance Proto_Gnss_Emergency_MeasurementReportWithEstimate, type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_MeasurementReportWithEstimate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementReportWithEstimate and conformance Proto_Gnss_Emergency_MeasurementReportWithEstimate, type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_Cdma1xContext.decodeMessage<A>(decoder:)()
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
          v7 = *(type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0) + 28);
        }

        else
        {
          if (result != 4)
          {
            goto LABEL_13;
          }

          v3 = v0;
          v5 = *(type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0) + 32);
        }
      }

      else if (result == 1)
      {
        v3 = v0;
        v6 = *(type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0) + 20);
      }

      else
      {
        if (result != 2)
        {
          goto LABEL_13;
        }

        v3 = v0;
        v4 = *(type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0) + 24);
      }

      v0 = v3;
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
LABEL_13:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_Cdma1xContext.traverse<A>(visitor:)()
{
  result = type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0);
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

  if (*(v0 + v3[6]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
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

Swift::Int Proto_Gnss_Emergency_Configuration.hashValue.getter(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_Cdma1xContext(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Cdma1xContext and conformance Proto_Gnss_Emergency_Cdma1xContext, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_Cdma1xContext(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Cdma1xContext and conformance Proto_Gnss_Emergency_Cdma1xContext, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_Cdma1xContext(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Cdma1xContext and conformance Proto_Gnss_Emergency_Cdma1xContext, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf31Proto_Gnss_Emergency_LcsGanssIdO_Tt1g5(uint64_t result, uint64_t a2)
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

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf039Proto_Gnss_Emergency_GanssAidRequestPerF0V_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      return 1;
    }

    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      outlined init with copy of Proto_Gnss_Emergency_SLPAddress(v14, v11, type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss);
      outlined init with copy of Proto_Gnss_Emergency_SLPAddress(v15, v8, type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss);
      v17 = *(v4 + 20);
      v18 = *&v11[v17];
      v19 = *&v8[v17];
      if (v18 != v19)
      {
        v20 = *&v11[v17];

        v21 = closure #1 in static Proto_Gnss_Emergency_GanssAidRequestPerGanss.== infix(_:_:)(v18, v19);

        if (!v21)
        {
          break;
        }
      }

      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        break;
      }

      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v8, type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss);
      v15 += v16;
      v14 += v16;
      if (!--v12)
      {
        return 1;
      }
    }

    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v8, type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss);
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss);
  }

  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf33Proto_Gnss_Emergency_GpsEphemerisV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v21 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      return 1;
    }

    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      outlined init with copy of Proto_Gnss_Emergency_SLPAddress(v14, v11, type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris);
      outlined init with copy of Proto_Gnss_Emergency_SLPAddress(v15, v8, type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris);
      v17 = *(v4 + 20);
      v18 = *&v11[v17];
      v19 = *&v8[v17];
      if (v18 != v19 && (closure #1 in static Proto_Gnss_Emergency_GpsEphemeris.== infix(_:_:)(v18, v19) & 1) == 0)
      {
        break;
      }

      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        break;
      }

      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v8, type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris);
      v15 += v16;
      v14 += v16;
      if (!--v12)
      {
        return 1;
      }
    }

    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v8, type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris);
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris);
  }

  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf30Proto_Gnss_Emergency_TowAssistV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v44 - v10;
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
        outlined init with copy of Proto_Gnss_Emergency_SLPAddress(v14, v11, type metadata accessor for Proto_Gnss_Emergency_TowAssist);
        outlined init with copy of Proto_Gnss_Emergency_SLPAddress(v15, v8, type metadata accessor for Proto_Gnss_Emergency_TowAssist);
        v17 = v4[5];
        v18 = &v11[v17];
        v19 = v11[v17 + 4];
        v20 = &v8[v17];
        v21 = v8[v17 + 4];
        if (v19)
        {
          if (!v21)
          {
            goto LABEL_39;
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
LABEL_39:
            outlined destroy of Proto_Gnss_Emergency_SLPAddress(v8, type metadata accessor for Proto_Gnss_Emergency_TowAssist);
            outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_TowAssist);
            goto LABEL_40;
          }
        }

        v22 = v4[6];
        v23 = &v11[v22];
        v24 = v11[v22 + 4];
        v25 = &v8[v22];
        v26 = v8[v22 + 4];
        if (v24)
        {
          if (!v26)
          {
            goto LABEL_39;
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
            goto LABEL_39;
          }
        }

        v27 = v4[7];
        v28 = &v11[v27];
        v29 = v11[v27 + 4];
        v30 = &v8[v27];
        v31 = v8[v27 + 4];
        if (v29)
        {
          if (!v31)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (*v28 != *v30)
          {
            LOBYTE(v31) = 1;
          }

          if (v31)
          {
            goto LABEL_39;
          }
        }

        v32 = v4[8];
        v33 = &v11[v32];
        v34 = v11[v32 + 4];
        v35 = &v8[v32];
        v36 = v8[v32 + 4];
        if (v34)
        {
          if (!v36)
          {
            goto LABEL_39;
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
            goto LABEL_39;
          }
        }

        v37 = v4[9];
        v38 = &v11[v37];
        v39 = v11[v37 + 4];
        v40 = &v8[v37];
        v41 = v8[v37 + 4];
        if (v39)
        {
          if (!v41)
          {
            goto LABEL_39;
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
            goto LABEL_39;
          }
        }

        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v42 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v8, type metadata accessor for Proto_Gnss_Emergency_TowAssist);
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_TowAssist);
        if (v42)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v42 & 1;
      }
    }

    v42 = 1;
  }

  else
  {
LABEL_40:
    v42 = 0;
  }

  return v42 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf32Proto_Gnss_Emergency_GsmCellInfoV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo(0);
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v42 - v10;
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
        outlined init with copy of Proto_Gnss_Emergency_SLPAddress(v14, v11, type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo);
        outlined init with copy of Proto_Gnss_Emergency_SLPAddress(v15, v8, type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo);
        v17 = v4[5];
        v18 = v11[v17];
        v19 = v8[v17];
        if (v18 == 2)
        {
          if (v19 != 2)
          {
            goto LABEL_38;
          }
        }

        else if (v19 == 2 || ((v18 ^ v19) & 1) != 0)
        {
          goto LABEL_38;
        }

        v20 = v4[6];
        v21 = &v11[v20];
        v22 = v11[v20 + 4];
        v23 = &v8[v20];
        v24 = v8[v20 + 4];
        if (v22)
        {
          if (!v24)
          {
            goto LABEL_38;
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
LABEL_38:
            outlined destroy of Proto_Gnss_Emergency_SLPAddress(v8, type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo);
            outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo);
            goto LABEL_39;
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
            goto LABEL_38;
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
            goto LABEL_38;
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
            goto LABEL_38;
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
            goto LABEL_38;
          }
        }

        v35 = v4[9];
        v36 = &v11[v35];
        v37 = v11[v35 + 4];
        v38 = &v8[v35];
        v39 = v8[v35 + 4];
        if (v37)
        {
          if (!v39)
          {
            goto LABEL_38;
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
            goto LABEL_38;
          }
        }

        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v40 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v8, type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo);
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo);
        if (v40)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v40 & 1;
      }
    }

    v40 = 1;
  }

  else
  {
LABEL_39:
    v40 = 0;
  }

  return v40 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf34Proto_Gnss_Emergency_GpsAcqElementV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *))
{
  v9 = a3(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v16 = &v24 - v15;
  v17 = *(a1 + 16);
  if (v17 == *(a2 + 16))
  {
    if (!v17 || a1 == a2)
    {
      v22 = 1;
    }

    else
    {
      v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v19 = a1 + v18;
      v20 = a2 + v18;
      v21 = *(v14 + 72);
      do
      {
        outlined init with copy of Proto_Gnss_Emergency_SLPAddress(v19, v16, a4);
        outlined init with copy of Proto_Gnss_Emergency_SLPAddress(v20, v13, a4);
        v22 = a5(v16, v13);
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, a4);
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v16, a4);
        if ((v22 & 1) == 0)
        {
          break;
        }

        v20 += v21;
        v19 += v21;
        --v17;
      }

      while (v17);
    }
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf43Proto_Gnss_Emergency_WlanMeasurementElementV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *))
{
  v9 = a3(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v16 = &v24 - v15;
  v17 = *(a1 + 16);
  if (v17 == *(a2 + 16))
  {
    if (!v17 || a1 == a2)
    {
      v22 = 1;
    }

    else
    {
      v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v19 = a1 + v18;
      v20 = a2 + v18;
      v21 = *(v14 + 72);
      do
      {
        outlined init with copy of Proto_Gnss_Emergency_SLPAddress(v19, v16, a4);
        outlined init with copy of Proto_Gnss_Emergency_SLPAddress(v20, v13, a4);
        v22 = a5(v16, v13);
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, a4);
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v16, a4);
        if ((v22 & 1) == 0)
        {
          break;
        }

        v20 += v21;
        v19 += v21;
        --v17;
      }

      while (v17);
    }
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf43Proto_Gnss_Emergency_GanssStoredSatDataElemV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = a3(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v14 = &v32 - v13;
  v15 = *(a1 + 16);
  if (v15 == *(a2 + 16))
  {
    if (v15 && a1 != a2)
    {
      v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v17 = a1 + v16;
      v18 = a2 + v16;
      v19 = *(v12 + 72);
      while (1)
      {
        outlined init with copy of Proto_Gnss_Emergency_SLPAddress(v17, v14, a4);
        outlined init with copy of Proto_Gnss_Emergency_SLPAddress(v18, v11, a4);
        v20 = *(v7 + 20);
        v21 = &v14[v20];
        v22 = v14[v20 + 4];
        v23 = &v11[v20];
        v24 = v11[v20 + 4];
        if (v22)
        {
          if (!v24)
          {
            goto LABEL_21;
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
LABEL_21:
            outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, a4);
            outlined destroy of Proto_Gnss_Emergency_SLPAddress(v14, a4);
            goto LABEL_22;
          }
        }

        v25 = *(v7 + 24);
        v26 = &v14[v25];
        v27 = v14[v25 + 4];
        v28 = &v11[v25];
        v29 = v11[v25 + 4];
        if (v27)
        {
          if (!v29)
          {
            goto LABEL_21;
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
            goto LABEL_21;
          }
        }

        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v30 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, a4);
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v14, a4);
        if (v30)
        {
          v18 += v19;
          v17 += v19;
          if (--v15)
          {
            continue;
          }
        }

        return v30 & 1;
      }
    }

    v30 = 1;
  }

  else
  {
LABEL_22:
    v30 = 0;
  }

  return v30 & 1;
}

unint64_t specialized Proto_Gnss_Emergency_PositionMethod.init(rawValue:)(unint64_t result)
{
  if (result >= 0x12)
  {
    return 18;
  }

  return result;
}

unint64_t specialized Proto_Gnss_Emergency_SessionErrorCode.init(rawValue:)(unint64_t result)
{
  if (result >= 0x11)
  {
    return 17;
  }

  return result;
}

unint64_t specialized Proto_Gnss_Emergency_Status.init(rawValue:)(unint64_t result)
{
  if (result >= 0x21)
  {
    return 33;
  }

  return result;
}

unint64_t specialized Proto_Gnss_Emergency_EndCause.init(rawValue:)(unint64_t result)
{
  if (result >= 0x18)
  {
    return 24;
  }

  return result;
}

uint64_t specialized Proto_Gnss_Emergency_GnssId.init(rawValue:)(uint64_t a1)
{
  if (a1 <= 3)
  {
    if (!a1)
    {
      return 6;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 1;
      }

      return 7;
    }

    return 0;
  }

  else if (a1 > 15)
  {
    if (a1 != 16)
    {
      if (a1 == 32)
      {
        return 5;
      }

      return 7;
    }

    return 4;
  }

  else
  {
    if (a1 != 4)
    {
      if (a1 == 8)
      {
        return 3;
      }

      return 7;
    }

    return 2;
  }
}

uint64_t specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  *(v1 + 64) = 0;
  *(v1 + 56) = 1;
  *(v1 + 72) = 1;
  *(v1 + 80) = 0;
  *(v1 + 88) = 1;
  *(v1 + 96) = 0;
  *(v1 + 108) = 0;
  *(v1 + 104) = 1;
  *(v1 + 113) = 1042;
  *(v1 + 115) = 7;
  *(v1 + 120) = 0;
  *(v1 + 112) = 1;
  *(v1 + 128) = 1;
  *(v1 + 136) = 0;
  *(v1 + 144) = 1;
  *(v1 + 152) = 0;
  *(v1 + 161) = 33689864;
  *(v1 + 168) = 0;
  *(v1 + 160) = 1;
  *(v1 + 176) = 1;
  *(v1 + 180) = 0;
  *(v1 + 184) = 1;
  swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  swift_beginAccess();
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  swift_beginAccess();
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 48) = v7;
  *(v1 + 56) = v8;
  swift_beginAccess();
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  swift_beginAccess();
  *(v1 + 64) = v9;
  *(v1 + 72) = v10;
  swift_beginAccess();
  v11 = *(a1 + 80);
  v12 = *(a1 + 88);
  swift_beginAccess();
  *(v1 + 80) = v11;
  *(v1 + 88) = v12;
  swift_beginAccess();
  v13 = *(a1 + 96);
  v14 = *(a1 + 104);
  swift_beginAccess();
  *(v1 + 96) = v13;
  *(v1 + 104) = v14;
  swift_beginAccess();
  LODWORD(v13) = *(a1 + 108);
  v15 = *(a1 + 112);
  swift_beginAccess();
  *(v1 + 108) = v13;
  *(v1 + 112) = v15;
  swift_beginAccess();
  LOBYTE(v13) = *(a1 + 113);
  swift_beginAccess();
  *(v1 + 113) = v13;
  swift_beginAccess();
  LOBYTE(v13) = *(a1 + 114);
  swift_beginAccess();
  *(v1 + 114) = v13;
  swift_beginAccess();
  LOBYTE(v13) = *(a1 + 115);
  swift_beginAccess();
  *(v1 + 115) = v13;
  swift_beginAccess();
  v16 = *(a1 + 120);
  v17 = *(a1 + 128);
  swift_beginAccess();
  *(v1 + 120) = v16;
  *(v1 + 128) = v17;
  swift_beginAccess();
  v18 = *(a1 + 136);
  v19 = *(a1 + 144);
  swift_beginAccess();
  *(v1 + 136) = v18;
  *(v1 + 144) = v19;
  swift_beginAccess();
  v20 = *(a1 + 152);
  v21 = *(a1 + 160);
  swift_beginAccess();
  *(v1 + 152) = v20;
  *(v1 + 160) = v21;
  swift_beginAccess();
  LOBYTE(v20) = *(a1 + 161);
  swift_beginAccess();
  *(v1 + 161) = v20;
  swift_beginAccess();
  LOBYTE(v20) = *(a1 + 162);
  swift_beginAccess();
  *(v1 + 162) = v20;
  swift_beginAccess();
  LOBYTE(v20) = *(a1 + 163);
  swift_beginAccess();
  *(v1 + 163) = v20;
  swift_beginAccess();
  LOBYTE(v20) = *(a1 + 164);
  swift_beginAccess();
  *(v1 + 164) = v20;
  swift_beginAccess();
  v22 = *(a1 + 168);
  v23 = *(a1 + 176);
  swift_beginAccess();
  *(v1 + 168) = v22;
  *(v1 + 176) = v23;
  swift_beginAccess();
  LODWORD(v22) = *(a1 + 180);
  LOBYTE(a1) = *(a1 + 184);
  swift_beginAccess();
  *(v1 + 180) = v22;
  *(v1 + 184) = a1;
  return v1;
}

uint64_t outlined init with take of Proto_Gnss_Emergency_SLPAddress(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of Proto_Gnss_Emergency_SLPAddress(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Proto_Gnss_Emergency_SLPAddress(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized Proto_Gnss_Emergency_PositionRequest._StorageClass.init(copying:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 20) = 1281;
  *(v1 + 24) = 0;
  *(v1 + 28) = 1;
  *(v1 + 32) = 0;
  *(v1 + 36) = 1;
  *(v1 + 40) = 0;
  *(v1 + 44) = 1;
  *(v1 + 48) = 0;
  *(v1 + 52) = 1;
  *(v1 + 56) = 0;
  *(v1 + 60) = 1;
  *(v1 + 64) = 0;
  *(v1 + 68) = 1;
  *(v1 + 72) = 0;
  *(v1 + 76) = 1;
  *(v1 + 80) = 0;
  *(v1 + 84) = 1;
  *(v1 + 88) = 0;
  *(v1 + 92) = 1;
  *(v1 + 96) = 0;
  *(v1 + 100) = 1;
  *(v1 + 104) = 0;
  *(v1 + 108) = 1;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 116) = 1793;
  *(v1 + 124) = 1;
  *(v1 + 128) = 0;
  *(v1 + 132) = 1;
  swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  swift_beginAccess();
  *(v1 + 16) = v3;
  *(v1 + 20) = v4;
  swift_beginAccess();
  v5 = *(a1 + 21);
  swift_beginAccess();
  *(v1 + 21) = v5;
  swift_beginAccess();
  v6 = *(a1 + 24);
  v7 = *(a1 + 28);
  swift_beginAccess();
  *(v1 + 24) = v6;
  *(v1 + 28) = v7;
  swift_beginAccess();
  v8 = *(a1 + 32);
  v9 = *(a1 + 36);
  swift_beginAccess();
  *(v1 + 32) = v8;
  *(v1 + 36) = v9;
  swift_beginAccess();
  v10 = *(a1 + 40);
  v11 = *(a1 + 44);
  swift_beginAccess();
  *(v1 + 40) = v10;
  *(v1 + 44) = v11;
  swift_beginAccess();
  v12 = *(a1 + 48);
  v13 = *(a1 + 52);
  swift_beginAccess();
  *(v1 + 48) = v12;
  *(v1 + 52) = v13;
  swift_beginAccess();
  v14 = *(a1 + 56);
  v15 = *(a1 + 60);
  swift_beginAccess();
  *(v1 + 56) = v14;
  *(v1 + 60) = v15;
  swift_beginAccess();
  v16 = *(a1 + 64);
  v17 = *(a1 + 68);
  swift_beginAccess();
  *(v1 + 64) = v16;
  *(v1 + 68) = v17;
  swift_beginAccess();
  v18 = *(a1 + 72);
  v19 = *(a1 + 76);
  swift_beginAccess();
  *(v1 + 72) = v18;
  *(v1 + 76) = v19;
  swift_beginAccess();
  v20 = *(a1 + 80);
  v21 = *(a1 + 84);
  swift_beginAccess();
  *(v1 + 80) = v20;
  *(v1 + 84) = v21;
  swift_beginAccess();
  v22 = *(a1 + 88);
  v23 = *(a1 + 92);
  swift_beginAccess();
  *(v1 + 88) = v22;
  *(v1 + 92) = v23;
  swift_beginAccess();
  v24 = *(a1 + 96);
  v25 = *(a1 + 100);
  swift_beginAccess();
  *(v1 + 96) = v24;
  *(v1 + 100) = v25;
  swift_beginAccess();
  v26 = *(a1 + 104);
  v27 = *(a1 + 108);
  swift_beginAccess();
  *(v1 + 104) = v26;
  *(v1 + 108) = v27;
  swift_beginAccess();
  v28 = *(a1 + 112);
  v29 = *(a1 + 116);
  swift_beginAccess();
  *(v1 + 112) = v28;
  *(v1 + 116) = v29;
  swift_beginAccess();
  LOBYTE(v28) = *(a1 + 117);
  swift_beginAccess();
  *(v1 + 117) = v28;
  swift_beginAccess();
  v30 = *(a1 + 120);
  v31 = *(a1 + 124);
  swift_beginAccess();
  *(v1 + 120) = v30;
  *(v1 + 124) = v31;
  swift_beginAccess();
  v32 = *(a1 + 128);
  LOBYTE(a1) = *(a1 + 132);
  swift_beginAccess();
  *(v1 + 128) = v32;
  *(v1 + 132) = a1;
  return v1;
}

uint64_t specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v67 = &v58 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v66 = &v58 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v65 = &v58 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v64 = &v58 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v63 = &v58 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v59 = &v58 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v58 - v23;
  v25 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
  v26 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  (*(*(v26 - 8) + 56))(v1 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
  v28 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  (*(*(v28 - 8) + 56))(v1 + v27, 1, 1, v28);
  v29 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
  v30 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  (*(*(v30 - 8) + 56))(v1 + v29, 1, 1, v30);
  v31 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
  v32 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  (*(*(v32 - 8) + 56))(v1 + v31, 1, 1, v32);
  v33 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  v60 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  v34 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  (*(*(v34 - 8) + 56))(v1 + v33, 1, 1, v34);
  v35 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  v61 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  v36 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  (*(*(v36 - 8) + 56))(v1 + v35, 1, 1, v36);
  v37 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  v62 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  v38 = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
  (*(*(v38 - 8) + 56))(v1 + v37, 1, 1, v38);
  v39 = v1 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__noLocation;
  *v39 = 0;
  *(v39 + 4) = 1;
  v40 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v40, v24, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v24, v1 + v25, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  swift_endAccess();
  v41 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
  swift_beginAccess();
  v42 = v59;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v41, v59, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v42, v1 + v27, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  swift_endAccess();
  v43 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
  swift_beginAccess();
  v44 = v63;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v43, v63, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v44, v1 + v29, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  swift_endAccess();
  v45 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
  swift_beginAccess();
  v46 = v64;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v45, v64, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v46, v1 + v31, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  swift_endAccess();
  v47 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  swift_beginAccess();
  v48 = v65;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v47, v65, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v49 = v60;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v48, v1 + v49, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  swift_endAccess();
  v50 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  swift_beginAccess();
  v51 = v66;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v50, v66, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  v52 = v61;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v51, v1 + v52, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  swift_endAccess();
  v53 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  swift_beginAccess();
  v54 = v67;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v53, v67, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  v55 = v62;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v54, v1 + v55, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  swift_endAccess();
  v56 = a1 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__noLocation;
  swift_beginAccess();
  LODWORD(v53) = *v56;
  LOBYTE(v56) = *(v56 + 4);
  swift_beginAccess();
  *v39 = v53;
  *(v39 + 4) = v56;
  return v1;
}

uint64_t specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v54 = &v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v53 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v52 = &v47 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v51 = &v47 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v47 - v17;
  *(v1 + 16) = 9;
  *(v1 + 20) = 0;
  *(v1 + 24) = 1;
  v19 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  v20 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
  v22 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  (*(*(v22 - 8) + 56))(v1 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
  v48 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
  v24 = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  (*(*(v24 - 8) + 56))(v1 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
  v49 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
  v26 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  (*(*(v26 - 8) + 56))(v1 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
  v50 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
  v28 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  (*(*(v28 - 8) + 56))(v1 + v27, 1, 1, v28);
  v29 = v1 + OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__technologySource;
  *v29 = 0;
  *(v29 + 4) = 1;
  swift_beginAccess();
  v30 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v30;
  swift_beginAccess();
  v31 = *(a1 + 20);
  v32 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 20) = v31;
  *(v1 + 24) = v32;
  v33 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v33, v18, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v18, v1 + v19, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  swift_endAccess();
  v34 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
  swift_beginAccess();
  v35 = v51;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v34, v51, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v35, v1 + v21, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
  swift_endAccess();
  v36 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
  swift_beginAccess();
  v37 = v52;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v36, v52, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
  v38 = v48;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v37, v1 + v38, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
  swift_endAccess();
  v39 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
  swift_beginAccess();
  v40 = v53;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v39, v53, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
  v41 = v49;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v40, v1 + v41, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
  swift_endAccess();
  v42 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
  swift_beginAccess();
  v43 = v54;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v42, v54, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
  v44 = v50;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v43, v1 + v44, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
  swift_endAccess();
  v45 = a1 + OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__technologySource;
  swift_beginAccess();
  LODWORD(v42) = *v45;
  LOBYTE(v45) = *(v45 + 4);
  swift_beginAccess();
  *v29 = v42;
  *(v29 + 4) = v45;
  return v1;
}

uint64_t specialized Proto_Gnss_Emergency_MeasurementReport._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v34 = &v31 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v33 = &v31 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - v11;
  *(v1 + 16) = 9;
  *(v1 + 20) = 0;
  *(v1 + 24) = 1;
  v13 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  v14 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  v16 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
  v31 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
  v18 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  v19 = v1 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__moreGanssMeasurements;
  *v19 = 0;
  *(v19 + 4) = 1;
  v32 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime) = 2;
  swift_beginAccess();
  LOBYTE(v17) = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v17;
  swift_beginAccess();
  v20 = *(a1 + 20);
  LOBYTE(v17) = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 20) = v20;
  *(v1 + 24) = v17;
  v21 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v21, v12, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v12, v1 + v13, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  swift_endAccess();
  v22 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  swift_beginAccess();
  v23 = v33;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v22, v33, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v23, v1 + v15, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  swift_endAccess();
  v24 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
  swift_beginAccess();
  v25 = v34;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v24, v34, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
  v26 = v31;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v25, v1 + v26, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
  swift_endAccess();
  v27 = a1 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__moreGanssMeasurements;
  swift_beginAccess();
  LODWORD(v13) = *v27;
  LOBYTE(v27) = *(v27 + 4);
  swift_beginAccess();
  *v19 = v13;
  *(v19 + 4) = v27;
  v28 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v28);
  v29 = v32;
  swift_beginAccess();
  *(v1 + v29) = a1;
  return v1;
}

uint64_t specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 20) = 1;
  *(v1 + 24) = 0;
  *(v1 + 28) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 36) = 1;
  *(v1 + 44) = 1;
  *(v1 + 48) = 0;
  *(v1 + 52) = 1;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 60) = 1;
  *(v1 + 68) = 1;
  *(v1 + 72) = 0;
  *(v1 + 76) = 1;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 84) = 1;
  *(v1 + 92) = 1;
  *(v1 + 96) = 0;
  *(v1 + 100) = 1;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  *(v1 + 108) = 1;
  *(v1 + 116) = 1;
  *(v1 + 120) = 0;
  *(v1 + 124) = 1;
  *(v1 + 128) = 0;
  *(v1 + 136) = 0;
  *(v1 + 132) = 1;
  *(v1 + 140) = 1;
  *(v1 + 144) = 0;
  *(v1 + 148) = 1;
  *(v1 + 152) = 0;
  *(v1 + 160) = 0;
  *(v1 + 156) = 1;
  *(v1 + 164) = 1;
  *(v1 + 168) = 0;
  *(v1 + 172) = 1;
  *(v1 + 176) = 0;
  *(v1 + 184) = 0;
  *(v1 + 180) = 1;
  *(v1 + 188) = 1;
  *(v1 + 192) = 0;
  *(v1 + 196) = 1;
  *(v1 + 200) = 0;
  *(v1 + 208) = 0;
  *(v1 + 204) = 1;
  *(v1 + 212) = 1;
  *(v1 + 216) = 0;
  *(v1 + 220) = 1;
  *(v1 + 224) = 0;
  *(v1 + 232) = 0;
  *(v1 + 228) = 1;
  *(v1 + 236) = 1;
  *(v1 + 244) = 1;
  *(v1 + 252) = 1;
  *(v1 + 260) = 1;
  *(v1 + 268) = 1;
  *(v1 + 276) = 1;
  *(v1 + 284) = 1;
  *(v1 + 240) = 0;
  *(v1 + 248) = 0;
  *(v1 + 256) = 0;
  *(v1 + 264) = 0;
  *(v1 + 272) = 0;
  *(v1 + 280) = 0;
  swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  swift_beginAccess();
  *(v1 + 16) = v3;
  *(v1 + 20) = v4;
  swift_beginAccess();
  v5 = *(a1 + 24);
  LOBYTE(v3) = *(a1 + 28);
  swift_beginAccess();
  *(v1 + 24) = v5;
  *(v1 + 28) = v3;
  swift_beginAccess();
  v6 = *(a1 + 32);
  LOBYTE(v5) = *(a1 + 36);
  swift_beginAccess();
  *(v1 + 32) = v6;
  *(v1 + 36) = v5;
  swift_beginAccess();
  v7 = *(a1 + 40);
  LOBYTE(v6) = *(a1 + 44);
  swift_beginAccess();
  *(v1 + 40) = v7;
  *(v1 + 44) = v6;
  swift_beginAccess();
  v8 = *(a1 + 48);
  LOBYTE(v7) = *(a1 + 52);
  swift_beginAccess();
  *(v1 + 48) = v8;
  *(v1 + 52) = v7;
  swift_beginAccess();
  v9 = *(a1 + 56);
  LOBYTE(v8) = *(a1 + 60);
  swift_beginAccess();
  *(v1 + 56) = v9;
  *(v1 + 60) = v8;
  swift_beginAccess();
  v10 = *(a1 + 64);
  LOBYTE(v9) = *(a1 + 68);
  swift_beginAccess();
  *(v1 + 64) = v10;
  *(v1 + 68) = v9;
  swift_beginAccess();
  v11 = *(a1 + 72);
  LOBYTE(v9) = *(a1 + 76);
  swift_beginAccess();
  *(v1 + 72) = v11;
  *(v1 + 76) = v9;
  swift_beginAccess();
  v12 = *(a1 + 80);
  LOBYTE(v9) = *(a1 + 84);
  swift_beginAccess();
  *(v1 + 80) = v12;
  *(v1 + 84) = v9;
  swift_beginAccess();
  v13 = *(a1 + 88);
  LOBYTE(v9) = *(a1 + 92);
  swift_beginAccess();
  *(v1 + 88) = v13;
  *(v1 + 92) = v9;
  swift_beginAccess();
  v14 = *(a1 + 96);
  LOBYTE(v9) = *(a1 + 100);
  swift_beginAccess();
  *(v1 + 96) = v14;
  *(v1 + 100) = v9;
  swift_beginAccess();
  v15 = *(a1 + 104);
  LOBYTE(v9) = *(a1 + 108);
  swift_beginAccess();
  *(v1 + 104) = v15;
  *(v1 + 108) = v9;
  swift_beginAccess();
  v16 = *(a1 + 112);
  LOBYTE(v9) = *(a1 + 116);
  swift_beginAccess();
  *(v1 + 112) = v16;
  *(v1 + 116) = v9;
  swift_beginAccess();
  v17 = *(a1 + 120);
  LOBYTE(v9) = *(a1 + 124);
  swift_beginAccess();
  *(v1 + 120) = v17;
  *(v1 + 124) = v9;
  swift_beginAccess();
  v18 = *(a1 + 128);
  LOBYTE(v9) = *(a1 + 132);
  swift_beginAccess();
  *(v1 + 128) = v18;
  *(v1 + 132) = v9;
  swift_beginAccess();
  v19 = *(a1 + 136);
  LOBYTE(v9) = *(a1 + 140);
  swift_beginAccess();
  *(v1 + 136) = v19;
  *(v1 + 140) = v9;
  swift_beginAccess();
  v20 = *(a1 + 144);
  LOBYTE(v9) = *(a1 + 148);
  swift_beginAccess();
  *(v1 + 144) = v20;
  *(v1 + 148) = v9;
  swift_beginAccess();
  v21 = *(a1 + 152);
  LOBYTE(v9) = *(a1 + 156);
  swift_beginAccess();
  *(v1 + 152) = v21;
  *(v1 + 156) = v9;
  swift_beginAccess();
  v22 = *(a1 + 160);
  LOBYTE(v9) = *(a1 + 164);
  swift_beginAccess();
  *(v1 + 160) = v22;
  *(v1 + 164) = v9;
  swift_beginAccess();
  v23 = *(a1 + 168);
  LOBYTE(v9) = *(a1 + 172);
  swift_beginAccess();
  *(v1 + 168) = v23;
  *(v1 + 172) = v9;
  swift_beginAccess();
  v24 = *(a1 + 176);
  LOBYTE(v9) = *(a1 + 180);
  swift_beginAccess();
  *(v1 + 176) = v24;
  *(v1 + 180) = v9;
  swift_beginAccess();
  v25 = *(a1 + 184);
  LOBYTE(v9) = *(a1 + 188);
  swift_beginAccess();
  *(v1 + 184) = v25;
  *(v1 + 188) = v9;
  swift_beginAccess();
  v26 = *(a1 + 192);
  LOBYTE(v9) = *(a1 + 196);
  swift_beginAccess();
  *(v1 + 192) = v26;
  *(v1 + 196) = v9;
  swift_beginAccess();
  v27 = *(a1 + 200);
  LOBYTE(v9) = *(a1 + 204);
  swift_beginAccess();
  *(v1 + 200) = v27;
  *(v1 + 204) = v9;
  swift_beginAccess();
  v28 = *(a1 + 208);
  LOBYTE(v9) = *(a1 + 212);
  swift_beginAccess();
  *(v1 + 208) = v28;
  *(v1 + 212) = v9;
  swift_beginAccess();
  v29 = *(a1 + 216);
  LOBYTE(v9) = *(a1 + 220);
  swift_beginAccess();
  *(v1 + 216) = v29;
  *(v1 + 220) = v9;
  swift_beginAccess();
  v30 = *(a1 + 224);
  LOBYTE(v9) = *(a1 + 228);
  swift_beginAccess();
  *(v1 + 224) = v30;
  *(v1 + 228) = v9;
  swift_beginAccess();
  v31 = *(a1 + 232);
  LOBYTE(v9) = *(a1 + 236);
  swift_beginAccess();
  *(v1 + 232) = v31;
  *(v1 + 236) = v9;
  swift_beginAccess();
  v32 = *(a1 + 240);
  LOBYTE(v9) = *(a1 + 244);
  swift_beginAccess();
  *(v1 + 240) = v32;
  *(v1 + 244) = v9;
  swift_beginAccess();
  v33 = *(a1 + 248);
  LOBYTE(v9) = *(a1 + 252);
  swift_beginAccess();
  *(v1 + 248) = v33;
  *(v1 + 252) = v9;
  swift_beginAccess();
  v34 = *(a1 + 256);
  LOBYTE(v9) = *(a1 + 260);
  swift_beginAccess();
  *(v1 + 256) = v34;
  *(v1 + 260) = v9;
  swift_beginAccess();
  v35 = *(a1 + 264);
  LOBYTE(v9) = *(a1 + 268);
  swift_beginAccess();
  *(v1 + 264) = v35;
  *(v1 + 268) = v9;
  swift_beginAccess();
  v36 = *(a1 + 272);
  LOBYTE(v9) = *(a1 + 276);
  swift_beginAccess();
  *(v1 + 272) = v36;
  *(v1 + 276) = v9;
  swift_beginAccess();
  v37 = *(a1 + 280);
  LOBYTE(a1) = *(a1 + 284);
  swift_beginAccess();
  *(v1 + 280) = v37;
  *(v1 + 284) = a1;
  return v1;
}

uint64_t specialized Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v35 = &v32 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v34 = &v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32 - v11;
  *(v1 + 16) = 9;
  *(v1 + 20) = 0;
  *(v1 + 24) = 1;
  v13 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  v14 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  v16 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationIndication;
  v18 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  v32 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__afltAction;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__afltAction) = 4;
  v33 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime) = 2;
  swift_beginAccess();
  v19 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v19;
  swift_beginAccess();
  v20 = *(a1 + 20);
  v21 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 20) = v20;
  *(v1 + 24) = v21;
  v22 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v22, v12, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v12, v1 + v13, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  swift_endAccess();
  v23 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  swift_beginAccess();
  v24 = v34;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v23, v34, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v24, v1 + v15, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  swift_endAccess();
  v25 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationIndication;
  swift_beginAccess();
  v26 = v35;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v25, v35, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v26, v1 + v17, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
  swift_endAccess();
  v27 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__afltAction;
  swift_beginAccess();
  LOBYTE(v27) = *(a1 + v27);
  v28 = v32;
  swift_beginAccess();
  *(v1 + v28) = v27;
  v29 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v29);
  v30 = v33;
  swift_beginAccess();
  *(v1 + v30) = a1;
  return v1;
}

uint64_t specialized static Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
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

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v55 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v54 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSg_ADtMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v54 - v15;
  v56 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v57 = a1;
  v17 = v56[5];
  v18 = *(v13 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v17, v16, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v17, &v16[v18], &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16, v11, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v22 = v55;
      outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v16[v18], v55, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
      v23 = specialized static Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted.== infix(_:_:)(v11, v22, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v22, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
      outlined destroy of Any?(v16, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
      if ((v23 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
LABEL_6:
    outlined destroy of Any?(v16, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSg_ADtMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSg_ADtMR);
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of Any?(v16, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
LABEL_10:
  v24 = v56[6];
  v25 = (v57 + v24);
  v26 = *(v57 + v24 + 4);
  v27 = (a2 + v24);
  v28 = *(a2 + v24 + 4);
  if (v26)
  {
    if (!v28)
    {
      goto LABEL_7;
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
      goto LABEL_7;
    }
  }

  v29 = v56[7];
  v30 = (v57 + v29);
  v31 = *(v57 + v29 + 4);
  v32 = (a2 + v29);
  v33 = *(a2 + v29 + 4);
  if (v31)
  {
    if (!v33)
    {
      goto LABEL_7;
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
      goto LABEL_7;
    }
  }

  v34 = v56[8];
  v35 = (v57 + v34);
  v36 = *(v57 + v34 + 4);
  v37 = (a2 + v34);
  v38 = *(a2 + v34 + 4);
  if (v36)
  {
    if (!v38)
    {
      goto LABEL_7;
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
      goto LABEL_7;
    }
  }

  v39 = v56[9];
  v40 = (v57 + v39);
  v41 = *(v57 + v39 + 4);
  v42 = (a2 + v39);
  v43 = *(a2 + v39 + 4);
  if (v41)
  {
    if (!v43)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v40 != *v42)
    {
      LOBYTE(v43) = 1;
    }

    if (v43)
    {
      goto LABEL_7;
    }
  }

  v44 = v56[10];
  v45 = (v57 + v44);
  v46 = *(v57 + v44 + 4);
  v47 = (a2 + v44);
  v48 = *(a2 + v44 + 4);
  if (v46)
  {
    if (!v48)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v45 != *v47)
    {
      LOBYTE(v48) = 1;
    }

    if (v48)
    {
      goto LABEL_7;
    }
  }

  v49 = v56[11];
  v50 = (v57 + v49);
  v51 = *(v57 + v49 + 4);
  v52 = (a2 + v49);
  v53 = *(a2 + v49 + 4);
  if (v51)
  {
    if (v53)
    {
LABEL_46:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }
  }

  else
  {
    if (*v50 != *v52)
    {
      LOBYTE(v53) = 1;
    }

    if ((v53 & 1) == 0)
    {
      goto LABEL_46;
    }
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_WlanMeasurementRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest(0);
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
  if (v11 == 2)
  {
    if (v12 != 2)
    {
      return 0;
    }
  }

  else if (v12 == 2 || ((v11 ^ v12) & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_GeranGanssTimeMeasured.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSg_ADtMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v35 - v15;
  v17 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  v18 = v17[5];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 4);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 4);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_19;
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
      goto LABEL_19;
    }
  }

  v23 = v17[6];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 4);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 4);
  if (v25)
  {
    if (!v27)
    {
      goto LABEL_19;
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
      goto LABEL_19;
    }
  }

  v28 = v17[7];
  v29 = a1;
  v30 = *(v13 + 48);
  v35[0] = v29;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v29 + v28, v16, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
  v35[1] = a2;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v28, &v16[v30], &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
  v31 = *(v5 + 48);
  if (v31(v16, 1, v4) == 1)
  {
    if (v31(&v16[v30], 1, v4) == 1)
    {
      outlined destroy of Any?(v16, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
LABEL_22:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v32 & 1;
    }

    goto LABEL_18;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16, v12, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
  if (v31(&v16[v30], 1, v4) == 1)
  {
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v12, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
LABEL_18:
    outlined destroy of Any?(v16, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSg_ADtMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSg_ADtMR);
    goto LABEL_19;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v16[v30], v8, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  v34 = specialized static Proto_Gnss_Emergency_CellInfo.== infix(_:_:)(v12, v8);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v8, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v12, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  outlined destroy of Any?(v16, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
  if (v34)
  {
    goto LABEL_22;
  }

LABEL_19:
  v32 = 0;
  return v32 & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_GanssAssistanceRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  v5 = *(v4 + 28);
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

  v10 = *(v4 + 32);
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

  v15 = v4;
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf31Proto_Gnss_Emergency_LcsGanssIdO_Tt1g5(*a1, *a2))
  {
    v16 = v15[9];
    v17 = (a1 + v16);
    v18 = *(a1 + v16 + 4);
    v19 = (a2 + v16);
    v20 = *(a2 + v16 + 4);
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

    v21 = v15[10];
    v22 = (a1 + v21);
    v23 = *(a1 + v21 + 4);
    v24 = (a2 + v21);
    v25 = *(a2 + v21 + 4);
    if (v23)
    {
      if (!v25)
      {
        return 0;
      }
    }

    else
    {
      if (*v22 != *v24)
      {
        LOBYTE(v25) = 1;
      }

      if (v25)
      {
        return 0;
      }
    }

    v26 = v15[11];
    v27 = (a1 + v26);
    v28 = *(a1 + v26 + 4);
    v29 = (a2 + v26);
    v30 = *(a2 + v26 + 4);
    if (v28)
    {
      if (!v30)
      {
        return 0;
      }
    }

    else
    {
      if (*v27 != *v29)
      {
        LOBYTE(v30) = 1;
      }

      if (v30)
      {
        return 0;
      }
    }

    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf039Proto_Gnss_Emergency_GanssAidRequestPerF0V_Tt1g5(a1[1], a2[1]))
    {
      v31 = v15[6];
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }
  }

  return 0;
}

uint64_t specialized static Proto_Gnss_Emergency_SuplInitVer2Extension.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v28 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v27 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSg_ADtMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  inited = type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0);
  v30 = a1;
  v17 = *(inited + 20);
  v18 = *(v13 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v17, v16, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v17, &v16[v18], &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16, v11, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v22 = v28;
      outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v16[v18], v28, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
      v23 = specialized static Proto_Gnss_Emergency_SLPAddress.== infix(_:_:)(v11, v22);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v22, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
      outlined destroy of Any?(v16, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
      if ((v23 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
LABEL_6:
    outlined destroy of Any?(v16, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSg_ADtMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSg_ADtMR);
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of Any?(v16, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
LABEL_10:
  v24 = *(inited + 24);
  v25 = *(v30 + v24);
  v26 = *(a2 + v24);
  if (v25 == 4)
  {
    if (v26 == 4)
    {
      goto LABEL_14;
    }
  }

  else if (v25 == v26)
  {
LABEL_14:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v20 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v20 & 1;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_PointUncertainEllipse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v44 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSg_ADtMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v44 - v15;
  v46 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v47 = a1;
  v17 = v46[5];
  v18 = *(v13 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v17, v16, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v17, &v16[v18], &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16, v11, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v22 = v45;
      outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v16[v18], v45, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
      v23 = specialized static Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted.== infix(_:_:)(v11, v22, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v22, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
      outlined destroy of Any?(v16, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
      if ((v23 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
LABEL_6:
    outlined destroy of Any?(v16, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSg_ADtMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSg_ADtMR);
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of Any?(v16, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
LABEL_10:
  v24 = v46[6];
  v25 = (v47 + v24);
  v26 = *(v47 + v24 + 4);
  v27 = (a2 + v24);
  v28 = *(a2 + v24 + 4);
  if (v26)
  {
    if (!v28)
    {
      goto LABEL_7;
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
      goto LABEL_7;
    }
  }

  v29 = v46[7];
  v30 = (v47 + v29);
  v31 = *(v47 + v29 + 4);
  v32 = (a2 + v29);
  v33 = *(a2 + v29 + 4);
  if (v31)
  {
    if (!v33)
    {
      goto LABEL_7;
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
      goto LABEL_7;
    }
  }

  v34 = v46[8];
  v35 = (v47 + v34);
  v36 = *(v47 + v34 + 4);
  v37 = (a2 + v34);
  v38 = *(a2 + v34 + 4);
  if (v36)
  {
    if (!v38)
    {
      goto LABEL_7;
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
      goto LABEL_7;
    }
  }

  v39 = v46[9];
  v40 = (v47 + v39);
  v41 = *(v47 + v39 + 4);
  v42 = (a2 + v39);
  v43 = *(a2 + v39 + 4);
  if (v41)
  {
    if (v43)
    {
LABEL_34:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }
  }

  else
  {
    if (*v40 != *v42)
    {
      LOBYTE(v43) = 1;
    }

    if ((v43 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_GanssAddAssistDataChoices.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = v5[5];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 4);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 4);
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
  v13 = *(a1 + v11 + 4);
  v14 = (a2 + v11);
  v15 = *(a2 + v11 + 4);
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
  v18 = *(a1 + v16 + 4);
  v19 = (a2 + v16);
  v20 = *(a2 + v16 + 4);
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

  v21 = v5[8];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 4);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 4);
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }
  }

  else
  {
    if (*v22 != *v24)
    {
      LOBYTE(v25) = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_GpsTimeMeasuredParams.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSg_ADtMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - v15;
  v17 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  v18 = *(v17 + 20);
  v29 = a1;
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 6)
  {
    if (v20 != 6)
    {
      goto LABEL_11;
    }
  }

  else if (v19 != v20)
  {
    goto LABEL_11;
  }

  v21 = a2;
  v22 = *(v17 + 24);
  v23 = *(v13 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v29 + v22, v16, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v21 + v22, &v16[v23], &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMR);
  v24 = *(v5 + 48);
  if (v24(v16, 1, v4) == 1)
  {
    if (v24(&v16[v23], 1, v4) == 1)
    {
      outlined destroy of Any?(v16, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMR);
LABEL_14:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v25 & 1;
    }

    goto LABEL_10;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16, v12, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMR);
  if (v24(&v16[v23], 1, v4) == 1)
  {
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v12, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);
LABEL_10:
    outlined destroy of Any?(v16, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSg_ADtMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSg_ADtMR);
    goto LABEL_11;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v16[v23], v8, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);
  v27 = specialized static Proto_Gnss_Emergency_GpsTimeMeasured.== infix(_:_:)(v12, v8);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v8, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v12, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);
  outlined destroy of Any?(v16, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMR);
  if (v27)
  {
    goto LABEL_14;
  }

LABEL_11:
  v25 = 0;
  return v25 & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_NetworkReferenceTime.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
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
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_GpsAssistanceRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  v5 = v4[7];
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

  v10 = v4[8];
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

  v15 = v4[9];
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

  v20 = v4[10];
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

  v25 = v4;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZs5Int32V_Tt1g5(*a1, *a2) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZs5Int32V_Tt1g5(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v26 = v25[11];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 4);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 4);
  if (v28)
  {
    if (!v30)
    {
      return 0;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  v32 = v25[6];
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}