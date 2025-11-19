uint64_t closure #7 in closure #1 in Proto_Gnss_Emergency_SessionStatus.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 64) & 1) == 0)
  {
    v3 = *(a1 + 56);
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #8 in closure #1 in Proto_Gnss_Emergency_SessionStatus.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 80) & 1) == 0)
  {
    v3 = *(a1 + 72);
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #9 in closure #1 in Proto_Gnss_Emergency_SessionStatus.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 96) & 1) == 0)
  {
    v3 = *(a1 + 88);
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #10 in closure #1 in Proto_Gnss_Emergency_SessionStatus.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 112) & 1) == 0)
  {
    v3 = *(a1 + 104);
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #11 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 128) & 1) == 0)
  {
    v3 = *(a1 + 120);
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #12 in closure #1 in Proto_Gnss_Emergency_SessionStatus.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 129) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #13 in closure #1 in Proto_Gnss_Emergency_SessionStatus.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 130) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #14 in closure #1 in Proto_Gnss_Emergency_SessionStatus.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 131) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #15 in closure #1 in Proto_Gnss_Emergency_SessionStatus.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_NetworkReferenceLocation and conformance Proto_Gnss_Emergency_NetworkReferenceLocation, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
}

uint64_t closure #16 in closure #1 in Proto_Gnss_Emergency_SessionStatus.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_NetworkReferenceTime and conformance Proto_Gnss_Emergency_NetworkReferenceTime, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
}

BOOL closure #1 in static Proto_Gnss_Emergency_SessionStatus.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v91 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
  v89 = *(v91 - 8);
  v4 = *(v89 + 64);
  MEMORY[0x28223BE20](v91);
  v86 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSg_ADtMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSg_ADtMR);
  v6 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v88);
  v93 = &v84 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v87 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v90 = &v84 - v12;
  v13 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  v92 = *(v13 - 8);
  v14 = *(v92 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSg_ADtMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSg_ADtMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v94 = &v84 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v84 - v25;
  swift_beginAccess();
  v27 = *(a1 + 16);
  v28 = *(a1 + 20);
  swift_beginAccess();
  v29 = *(a2 + 20);
  if (v28)
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (v27 != *(a2 + 16))
    {
      v29 = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v30 = *(a1 + 21);
  swift_beginAccess();
  v31 = *(a2 + 21);
  if (v30 == 18)
  {
    if (v31 != 18)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v31 == 18 || v30 != v31)
    {
      return result;
    }
  }

  swift_beginAccess();
  v33 = *(a1 + 22);
  swift_beginAccess();
  v34 = *(a2 + 22);
  if (v33 == 33)
  {
    if (v34 != 33)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v34 == 33 || v33 != v34)
    {
      return result;
    }
  }

  swift_beginAccess();
  v35 = *(a1 + 23);
  swift_beginAccess();
  v36 = *(a2 + 23);
  if (v35 == 24)
  {
    if (v36 != 24)
    {
      return 0;
    }

LABEL_22:
    swift_beginAccess();
    v37 = *(a1 + 24);
    v38 = *(a1 + 32);
    swift_beginAccess();
    v39 = *(a2 + 32);
    if (v38)
    {
      if (!*(a2 + 32))
      {
        return 0;
      }
    }

    else
    {
      if (v37 != *(a2 + 24))
      {
        v39 = 1;
      }

      if (v39)
      {
        return 0;
      }
    }

    swift_beginAccess();
    v40 = *(a1 + 40);
    v41 = *(a1 + 48);
    swift_beginAccess();
    v42 = *(a2 + 48);
    if (v41)
    {
      if (!*(a2 + 48))
      {
        return 0;
      }
    }

    else
    {
      if (v40 != *(a2 + 40))
      {
        v42 = 1;
      }

      if (v42)
      {
        return 0;
      }
    }

    swift_beginAccess();
    v43 = *(a1 + 56);
    v44 = *(a1 + 64);
    swift_beginAccess();
    v45 = *(a2 + 64);
    if (v44)
    {
      if (!*(a2 + 64))
      {
        return 0;
      }
    }

    else
    {
      if (v43 != *(a2 + 56))
      {
        v45 = 1;
      }

      if (v45)
      {
        return 0;
      }
    }

    swift_beginAccess();
    v46 = *(a1 + 72);
    v47 = *(a1 + 80);
    swift_beginAccess();
    v48 = *(a2 + 80);
    if (v47)
    {
      if (!*(a2 + 80))
      {
        return 0;
      }
    }

    else
    {
      if (v46 != *(a2 + 72))
      {
        v48 = 1;
      }

      if (v48)
      {
        return 0;
      }
    }

    swift_beginAccess();
    v49 = *(a1 + 88);
    v50 = *(a1 + 96);
    swift_beginAccess();
    v51 = *(a2 + 96);
    if (v50)
    {
      if (!*(a2 + 96))
      {
        return 0;
      }
    }

    else
    {
      if (v49 != *(a2 + 88))
      {
        v51 = 1;
      }

      if (v51)
      {
        return 0;
      }
    }

    swift_beginAccess();
    v52 = *(a1 + 104);
    v53 = *(a1 + 112);
    swift_beginAccess();
    v54 = *(a2 + 112);
    if (v53)
    {
      if (!*(a2 + 112))
      {
        return 0;
      }
    }

    else
    {
      if (v52 != *(a2 + 104))
      {
        v54 = 1;
      }

      if (v54)
      {
        return 0;
      }
    }

    swift_beginAccess();
    v55 = *(a1 + 120);
    v56 = *(a1 + 128);
    swift_beginAccess();
    v57 = *(a2 + 128);
    if (v56)
    {
      if (!*(a2 + 128))
      {
        return 0;
      }
    }

    else
    {
      if (v55 != *(a2 + 120))
      {
        v57 = 1;
      }

      if (v57)
      {
        return 0;
      }
    }

    swift_beginAccess();
    v58 = *(a1 + 129);
    swift_beginAccess();
    v59 = *(a2 + 129);
    if (v58 == 2)
    {
      if (v59 != 2)
      {
        return 0;
      }
    }

    else if (v59 == 2 || ((v58 ^ v59) & 1) != 0)
    {
      return 0;
    }

    swift_beginAccess();
    v60 = *(a1 + 130);
    swift_beginAccess();
    v61 = *(a2 + 130);
    if (v60 == 2)
    {
      if (v61 != 2)
      {
        return 0;
      }
    }

    else if (v61 == 2 || ((v60 ^ v61) & 1) != 0)
    {
      return 0;
    }

    swift_beginAccess();
    v62 = *(a1 + 131);
    swift_beginAccess();
    v63 = *(a2 + 131);
    if (v62 == 2)
    {
      if (v63 != 2)
      {
        return 0;
      }
    }

    else if (v63 == 2 || ((v62 ^ v63) & 1) != 0)
    {
      return 0;
    }

    v64 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
    swift_beginAccess();
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v64, v26, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
    v65 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
    swift_beginAccess();
    v66 = *(v17 + 48);
    v67 = v94;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v26, v94, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
    v85 = v66;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v65, v67 + v66, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
    v68 = *(v92 + 48);
    if (v68(v67, 1, v13) == 1)
    {

      outlined destroy of Any?(v26, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
      if (v68(v94 + v85, 1, v13) == 1)
      {
        outlined destroy of Any?(v94, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
LABEL_87:
        v72 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
        swift_beginAccess();
        v73 = v90;
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v72, v90, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
        v74 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
        swift_beginAccess();
        v75 = *(v88 + 48);
        v76 = v73;
        v77 = v93;
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v76, v93, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v74, v77 + v75, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
        v78 = *(v89 + 48);
        if (v78(v77, 1, v91) == 1)
        {

          outlined destroy of Any?(v90, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
          if (v78(v93 + v75, 1, v91) == 1)
          {
            outlined destroy of Any?(v93, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
            return 1;
          }

          goto LABEL_92;
        }

        v79 = v93;
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v93, v87, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
        if (v78(v79 + v75, 1, v91) == 1)
        {

          outlined destroy of Any?(v90, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
          outlined destroy of Proto_Gnss_Emergency_SLPAddress(v87, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
LABEL_92:
          outlined destroy of Any?(v93, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSg_ADtMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSg_ADtMR);
          return 0;
        }

        v80 = v93;
        v81 = v86;
        outlined init with take of Proto_Gnss_Emergency_SLPAddress(v93 + v75, v86, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
        v82 = v87;
        v83 = specialized static Proto_Gnss_Emergency_NetworkReferenceTime.== infix(_:_:)(v87, v81);

        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v81, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
        outlined destroy of Any?(v90, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v82, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
        outlined destroy of Any?(v80, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
        return (v83 & 1) != 0;
      }
    }

    else
    {
      v69 = v94;
      outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v94, v24, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
      if (v68(v69 + v85, 1, v13) != 1)
      {
        v70 = v94;
        outlined init with take of Proto_Gnss_Emergency_SLPAddress(v94 + v85, v16, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);

        v71 = specialized static Proto_Gnss_Emergency_NetworkReferenceLocation.== infix(_:_:)(v24, v16);
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v16, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
        outlined destroy of Any?(v26, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v24, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
        outlined destroy of Any?(v70, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
        if (v71)
        {
          goto LABEL_87;
        }

LABEL_85:

        return 0;
      }

      outlined destroy of Any?(v26, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v24, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
    }

    outlined destroy of Any?(v94, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSg_ADtMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSg_ADtMR);
    goto LABEL_85;
  }

  result = 0;
  if (v36 != 24 && v35 == v36)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_SessionStatus(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionStatus and conformance Proto_Gnss_Emergency_SessionStatus, type metadata accessor for Proto_Gnss_Emergency_SessionStatus);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_SessionStatus(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionStatus and conformance Proto_Gnss_Emergency_SessionStatus, type metadata accessor for Proto_Gnss_Emergency_SessionStatus);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_SessionStatus(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionStatus and conformance Proto_Gnss_Emergency_SessionStatus, type metadata accessor for Proto_Gnss_Emergency_SessionStatus);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_ClsGpsCellTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsGpsCellTime and conformance Proto_Gnss_Emergency_ClsGpsCellTime, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_ClsGpsCellTime(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsGpsCellTime and conformance Proto_Gnss_Emergency_ClsGpsCellTime, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_ClsGpsCellTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsGpsCellTime and conformance Proto_Gnss_Emergency_ClsGpsCellTime, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_ClsUtranCellTime.decodeMessage<A>(decoder:)()
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
          v8 = *(type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0) + 20);
          type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsGpsCellTime and conformance Proto_Gnss_Emergency_ClsGpsCellTime, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else if (result == 2)
        {
          v3 = v0;
          v6 = *(type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0) + 24);
          goto LABEL_5;
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v3 = v0;
            v4 = *(type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0) + 28);
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            break;
          case 4:
            v3 = v0;
            v7 = *(type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0) + 32);
            goto LABEL_5;
          case 5:
            v5 = *(type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0) + 36);
            lazy protocol witness table accessor for type Proto_Gnss_Emergency_ClsModemState and conformance Proto_Gnss_Emergency_ClsModemState();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_ClsUtranCellTime.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in Proto_Gnss_Emergency_ClsUtranCellTime.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    v6 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
    v7 = (v3 + v6[6]);
    if ((v7[1] & 1) == 0)
    {
      v8 = *v7;
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    v9 = (v3 + v6[7]);
    if ((v9[1] & 1) == 0)
    {
      v10 = *v9;
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    v11 = (v3 + v6[8]);
    if ((v11[1] & 1) == 0)
    {
      v12 = *v11;
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    closure #5 in Proto_Gnss_Emergency_ClsUtranCellTime.traverse<A>(visitor:)(v3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Proto_Gnss_Emergency_ClsUtranCellTime.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 20), v8, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsGpsCellTime and conformance Proto_Gnss_Emergency_ClsGpsCellTime, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
}

uint64_t closure #5 in Proto_Gnss_Emergency_ClsUtranCellTime.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  if (*(a1 + *(result + 36)) != 5)
  {
    v3 = *(a1 + *(result + 36));
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_ClsModemState and conformance Proto_Gnss_Emergency_ClsModemState();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_ClsUtranCellTime@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = a2 + a1[6];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1[9];
  v11 = a2 + a1[8];
  *v11 = 0;
  *(v11 + 4) = 1;
  *(a2 + v10) = 5;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_ClsUtranCellTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsUtranCellTime and conformance Proto_Gnss_Emergency_ClsUtranCellTime, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_ClsUtranCellTime(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsUtranCellTime and conformance Proto_Gnss_Emergency_ClsUtranCellTime, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_ClsUtranCellTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsUtranCellTime and conformance Proto_Gnss_Emergency_ClsUtranCellTime, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_Plmn(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Plmn and conformance Proto_Gnss_Emergency_Plmn, type metadata accessor for Proto_Gnss_Emergency_Plmn);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_Plmn(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Plmn and conformance Proto_Gnss_Emergency_Plmn, type metadata accessor for Proto_Gnss_Emergency_Plmn);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_Plmn(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Plmn and conformance Proto_Gnss_Emergency_Plmn, type metadata accessor for Proto_Gnss_Emergency_Plmn);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_SessionInfo.decodeMessage<A>(decoder:)()
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
          v3 = *(type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0) + 28);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_5;
        case 2:
          v4 = v0;
          v6 = *(type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0) + 24);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol();
          break;
        case 1:
          v4 = v0;
          v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0) + 20);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol();
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

uint64_t Proto_Gnss_Emergency_SessionInfo.traverse<A>(visitor:)()
{
  result = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
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
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  if (*(v0 + *(v3 + 24)) != 7)
  {
    v7 = *(v0 + *(v3 + 24));
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  v4 = (v0 + *(v3 + 28));
  if ((v4[1] & 1) == 0)
  {
    v5 = *v4;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_SessionInfo@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 6;
  *(a2 + v5) = 7;
  v6 = a2 + a1[7];
  *v6 = 0;
  *(v6 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_SessionInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionInfo and conformance Proto_Gnss_Emergency_SessionInfo, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_SessionInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionInfo and conformance Proto_Gnss_Emergency_SessionInfo, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_SessionInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionInfo and conformance Proto_Gnss_Emergency_SessionInfo, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_PositionRequest.decodeMessage<A>(decoder:)()
{
  v2 = v0;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_PositionRequest._StorageClass();
    v7 = swift_allocObject();
    specialized Proto_Gnss_Emergency_PositionRequest._StorageClass.init(copying:)(v6);

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
        case 14:
        case 16:
        case 17:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_11;
        case 2:
          swift_beginAccess();
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_MethodType and conformance Proto_Gnss_Emergency_MethodType();
          goto LABEL_9;
        case 15:
          swift_beginAccess();
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol();
LABEL_9:
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
LABEL_11:
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

uint64_t Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20));
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

  swift_beginAccess();
  if (*(v9 + 21) != 5)
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_MethodType and conformance Proto_Gnss_Emergency_MethodType();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v9 + 28) & 1) == 0)
  {
    v12 = *(v9 + 24);
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
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

  swift_beginAccess();
  if ((*(v9 + 52) & 1) == 0)
  {
    v15 = *(v9 + 48);
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #7 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9, a1, a2, a3, 7, MEMORY[0x277D21860]);
  closure #8 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9, a1, a2, a3, 8, MEMORY[0x277D21860]);
  closure #9 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9, a1, a2, a3, 9, MEMORY[0x277D21860]);
  closure #10 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9);
  closure #11 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9);
  closure #12 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9, a1, a2, a3, 12, MEMORY[0x277D21860]);
  closure #13 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9, a1, a2, a3, 13, MEMORY[0x277D21860]);
  closure #14 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9, a1, a2, a3, 14, MEMORY[0x277D21860]);
  closure #15 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9);
  closure #16 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9, a1, a2, a3, 16, MEMORY[0x277D21860]);
  closure #17 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9, a1, a2, a3, 17, MEMORY[0x277D21860]);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #15 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 117) != 7)
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #1 in static Proto_Gnss_Emergency_PositionRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
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
  v7 = *(a1 + 21);
  swift_beginAccess();
  v8 = *(a2 + 21);
  if (v7 == 5)
  {
    if (v8 != 5)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v8 == 5 || v7 != v8)
    {
      return result;
    }
  }

  swift_beginAccess();
  v10 = *(a1 + 24);
  v11 = *(a1 + 28);
  swift_beginAccess();
  v12 = *(a2 + 28);
  if (v11)
  {
    if (!*(a2 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (v10 != *(a2 + 24))
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v13 = *(a1 + 32);
  v14 = *(a1 + 36);
  swift_beginAccess();
  v15 = *(a2 + 36);
  if (v14)
  {
    if (!*(a2 + 36))
    {
      return 0;
    }
  }

  else
  {
    if (v13 != *(a2 + 32))
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v16 = *(a1 + 40);
  v17 = *(a1 + 44);
  swift_beginAccess();
  v18 = *(a2 + 44);
  if (v17)
  {
    if (!*(a2 + 44))
    {
      return 0;
    }
  }

  else
  {
    if (v16 != *(a2 + 40))
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v19 = *(a1 + 48);
  v20 = *(a1 + 52);
  swift_beginAccess();
  v21 = *(a2 + 52);
  if (v20)
  {
    if (!*(a2 + 52))
    {
      return 0;
    }
  }

  else
  {
    if (v19 != *(a2 + 48))
    {
      v21 = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v22 = *(a1 + 56);
  v23 = *(a1 + 60);
  swift_beginAccess();
  v24 = *(a2 + 60);
  if (v23)
  {
    if (!*(a2 + 60))
    {
      return 0;
    }
  }

  else
  {
    if (v22 != *(a2 + 56))
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v25 = *(a1 + 64);
  v26 = *(a1 + 68);
  swift_beginAccess();
  v27 = *(a2 + 68);
  if (v26)
  {
    if (!*(a2 + 68))
    {
      return 0;
    }
  }

  else
  {
    if (v25 != *(a2 + 64))
    {
      v27 = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v28 = *(a1 + 72);
  v29 = *(a1 + 76);
  swift_beginAccess();
  v30 = *(a2 + 76);
  if (v29)
  {
    if (!*(a2 + 76))
    {
      return 0;
    }
  }

  else
  {
    if (v28 != *(a2 + 72))
    {
      v30 = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v31 = *(a1 + 80);
  v32 = *(a1 + 84);
  swift_beginAccess();
  v33 = *(a2 + 84);
  if (v32)
  {
    if (!*(a2 + 84))
    {
      return 0;
    }
  }

  else
  {
    if (v31 != *(a2 + 80))
    {
      v33 = 1;
    }

    if (v33)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v34 = *(a1 + 88);
  v35 = *(a1 + 92);
  swift_beginAccess();
  v36 = *(a2 + 92);
  if (v35)
  {
    if (!*(a2 + 92))
    {
      return 0;
    }
  }

  else
  {
    if (v34 != *(a2 + 88))
    {
      v36 = 1;
    }

    if (v36)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v37 = *(a1 + 96);
  v38 = *(a1 + 100);
  swift_beginAccess();
  v39 = *(a2 + 100);
  if (v38)
  {
    if (!*(a2 + 100))
    {
      return 0;
    }
  }

  else
  {
    if (v37 != *(a2 + 96))
    {
      v39 = 1;
    }

    if (v39)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v40 = *(a1 + 104);
  v41 = *(a1 + 108);
  swift_beginAccess();
  v42 = *(a2 + 108);
  if (v41)
  {
    if (!*(a2 + 108))
    {
      return 0;
    }
  }

  else
  {
    if (v40 != *(a2 + 104))
    {
      v42 = 1;
    }

    if (v42)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v43 = *(a1 + 112);
  v44 = *(a1 + 116);
  swift_beginAccess();
  v45 = *(a2 + 116);
  if (v44)
  {
    if (!*(a2 + 116))
    {
      return 0;
    }
  }

  else
  {
    if (v43 != *(a2 + 112))
    {
      v45 = 1;
    }

    if (v45)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v46 = *(a1 + 117);
  swift_beginAccess();
  v47 = *(a2 + 117);
  if (v46 == 7)
  {
    if (v47 != 7)
    {
      return 0;
    }

    goto LABEL_89;
  }

  result = 0;
  if (v47 != 7 && v46 == v47)
  {
LABEL_89:
    swift_beginAccess();
    v48 = *(a1 + 120);
    v49 = *(a1 + 124);
    swift_beginAccess();
    v50 = *(a2 + 124);
    if ((v49 & 1) == 0)
    {
      if (v48 != *(a2 + 120))
      {
        v50 = 1;
      }

      if (v50)
      {
        return 0;
      }

LABEL_95:
      swift_beginAccess();
      v51 = *(a1 + 128);
      v52 = *(a1 + 132);
      swift_beginAccess();
      v53 = *(a2 + 132);
      if (v52)
      {
        if (!*(a2 + 132))
        {
          return 0;
        }
      }

      else
      {
        if (v51 != *(a2 + 128))
        {
          v53 = 1;
        }

        if (v53)
        {
          return 0;
        }
      }

      return 1;
    }

    if (*(a2 + 124))
    {
      goto LABEL_95;
    }

    return 0;
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_PositionRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionRequest and conformance Proto_Gnss_Emergency_PositionRequest, type metadata accessor for Proto_Gnss_Emergency_PositionRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_PositionRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionRequest and conformance Proto_Gnss_Emergency_PositionRequest, type metadata accessor for Proto_Gnss_Emergency_PositionRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_PositionRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionRequest and conformance Proto_Gnss_Emergency_PositionRequest, type metadata accessor for Proto_Gnss_Emergency_PositionRequest);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_UtranGpsTimeMeasured.decodeMessage<A>(decoder:)()
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
        v7 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0) + 24);
        type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
        v5 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime;
        v6 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsGpsCellTime and conformance Proto_Gnss_Emergency_ClsGpsCellTime;
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v3 = v0;
    v4 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0) + 20);
    type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
    v5 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime;
    v6 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsUtranCellTime and conformance Proto_Gnss_Emergency_ClsUtranCellTime;
LABEL_5:
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(v6, v5);
    v0 = v3;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    goto LABEL_6;
  }

  return result;
}

uint64_t closure #1 in Proto_Gnss_Emergency_UtranGpsTimeMeasured.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 20), v8, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsUtranCellTime and conformance Proto_Gnss_Emergency_ClsUtranCellTime, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime);
}

uint64_t closure #2 in Proto_Gnss_Emergency_UtranGpsTimeMeasured.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 24), v8, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsGpsCellTime and conformance Proto_Gnss_Emergency_ClsGpsCellTime, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_UtranGpsTimeMeasured(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranGpsTimeMeasured and conformance Proto_Gnss_Emergency_UtranGpsTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_UtranGpsTimeMeasured(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranGpsTimeMeasured and conformance Proto_Gnss_Emergency_UtranGpsTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_UtranGpsTimeMeasured(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranGpsTimeMeasured and conformance Proto_Gnss_Emergency_UtranGpsTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_ClsGpsCellTime.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v6 || (v13 & 1) != 0)
    {
      return result;
    }

    if (result == 1)
    {
      v11 = *(a4(0) + 20);
      goto LABEL_3;
    }

    if (result == 2)
    {
      v11 = *(a4(0) + 24);
LABEL_3:
      v6 = 0;
      a5(v5 + v11, a2, a3);
    }
  }
}

uint64_t Proto_Gnss_Emergency_ClsGpsCellTime.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  result = a4(0);
  v11 = result;
  v12 = (v5 + *(result + 20));
  if (v12[1])
  {
    if (v6)
    {
      return result;
    }
  }

  else
  {
    result = a5(*v12, 1, a2, a3);
    if (v6)
    {
      return result;
    }
  }

  v13 = (v5 + *(v11 + 24));
  if ((v13[1] & 1) == 0)
  {
    a5(*v13, 2, a2, a3);
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased and conformance Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased and conformance Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased and conformance Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted and conformance Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted and conformance Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted and conformance Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GpsTimeMeasured.decodeMessage<A>(decoder:)()
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
        v3 = v0;
        v8 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0) + 28);
        type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
        v5 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted;
        v6 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted and conformance Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted;
        goto LABEL_5;
      }

      if (result == 2)
      {
        break;
      }

      if (result == 1)
      {
        v3 = v0;
        v7 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0) + 20);
        type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
        v5 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured;
        v6 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranGpsTimeMeasured and conformance Proto_Gnss_Emergency_UtranGpsTimeMeasured;
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v3 = v0;
    v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0) + 24);
    type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
    v5 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased;
    v6 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased and conformance Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased;
LABEL_5:
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(v6, v5);
    v0 = v3;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    goto LABEL_6;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GpsTimeMeasured.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in Proto_Gnss_Emergency_GpsTimeMeasured.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in Proto_Gnss_Emergency_GpsTimeMeasured.traverse<A>(visitor:)(v3, a1, a2, a3);
    closure #3 in Proto_Gnss_Emergency_GpsTimeMeasured.traverse<A>(visitor:)(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Proto_Gnss_Emergency_GpsTimeMeasured.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 20), v8, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranGpsTimeMeasured and conformance Proto_Gnss_Emergency_UtranGpsTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);
}

uint64_t closure #2 in Proto_Gnss_Emergency_GpsTimeMeasured.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 24), v8, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased and conformance Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);
}

uint64_t closure #3 in Proto_Gnss_Emergency_GpsTimeMeasured.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 28), v8, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted and conformance Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_GpsTimeMeasured@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[7];
  v9 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a2 + v8, 1, 1, v9);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GpsTimeMeasured(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTimeMeasured and conformance Proto_Gnss_Emergency_GpsTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GpsTimeMeasured(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTimeMeasured and conformance Proto_Gnss_Emergency_GpsTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GpsTimeMeasured(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTimeMeasured and conformance Proto_Gnss_Emergency_GpsTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GpsTimeMeasuredParams.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0) + 20);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_ClsNetworkType and conformance Proto_Gnss_Emergency_ClsNetworkType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0) + 24);
        type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTimeMeasured and conformance Proto_Gnss_Emergency_GpsTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #2 in Proto_Gnss_Emergency_GpsTimeMeasuredParams.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 24), v8, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTimeMeasured and conformance Proto_Gnss_Emergency_GpsTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GpsTimeMeasuredParams(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTimeMeasuredParams and conformance Proto_Gnss_Emergency_GpsTimeMeasuredParams, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GpsTimeMeasuredParams(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTimeMeasuredParams and conformance Proto_Gnss_Emergency_GpsTimeMeasuredParams, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GpsTimeMeasuredParams(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTimeMeasuredParams and conformance Proto_Gnss_Emergency_GpsTimeMeasuredParams, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_Plmn.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
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

uint64_t Proto_Gnss_Emergency_Plmn.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }
  }

  v10 = (v4 + *(v7 + 24));
  if ((v10[1] & 1) == 0)
  {
    v11 = *v10;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v12 = (v4 + *(v7 + 28));
  if ((v12[1] & 1) == 0)
  {
    v13 = *v12;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GpsTOD(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTOD and conformance Proto_Gnss_Emergency_GpsTOD, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GpsTOD(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTOD and conformance Proto_Gnss_Emergency_GpsTOD, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GpsTOD(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTOD and conformance Proto_Gnss_Emergency_GpsTOD, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_LocationInfo.decodeMessage<A>(decoder:)()
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
            v7 = *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 32);
            lazy protocol witness table accessor for type Proto_Gnss_Emergency_FixType and conformance Proto_Gnss_Emergency_FixType();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 5:
            v3 = v0;
            v9 = *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 36);
            goto LABEL_5;
          case 6:
            v6 = *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 40);
            type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
            lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTOD and conformance Proto_Gnss_Emergency_GpsTOD, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            v3 = v0;
            v4 = *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 20);
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            break;
          case 2:
            v3 = v0;
            v8 = *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 24);
            goto LABEL_5;
          case 3:
            v3 = v0;
            v5 = *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 28);
            goto LABEL_5;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_LocationInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
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

  if (*(v5 + v10[8]) != 4)
  {
    v17 = *(v5 + v10[8]);
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_FixType and conformance Proto_Gnss_Emergency_FixType();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  closure #5 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_LocationInfo, MEMORY[0x277D21860]);
  closure #6 in Proto_Gnss_Emergency_LocationInfo.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #6 in Proto_Gnss_Emergency_LocationInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 40), v8, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTOD and conformance Proto_Gnss_Emergency_GpsTOD, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_LocationInfo@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  *(a2 + v7) = 4;
  v9 = a1[9];
  v10 = a1[10];
  v11 = a2 + v9;
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v13 = *(*(v12 - 8) + 56);

  return v13(a2 + v10, 1, 1, v12);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_LocationInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LocationInfo and conformance Proto_Gnss_Emergency_LocationInfo, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_LocationInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LocationInfo and conformance Proto_Gnss_Emergency_LocationInfo, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_LocationInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LocationInfo and conformance Proto_Gnss_Emergency_LocationInfo, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_CellInfo.decodeMessage<A>(decoder:)()
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
          v4 = *(type metadata accessor for Proto_Gnss_Emergency_CellInfo(0) + 28);
LABEL_5:
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_6;
        }

        if (result == 4)
        {
          v6 = *(type metadata accessor for Proto_Gnss_Emergency_CellInfo(0) + 32);
          type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Plmn and conformance Proto_Gnss_Emergency_Plmn, type metadata accessor for Proto_Gnss_Emergency_Plmn);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          v3 = v0;
          v7 = *(type metadata accessor for Proto_Gnss_Emergency_CellInfo(0) + 20);
          goto LABEL_5;
        }

        if (result == 2)
        {
          v3 = v0;
          v5 = *(type metadata accessor for Proto_Gnss_Emergency_CellInfo(0) + 24);
          goto LABEL_5;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_CellInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
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

  v15 = (v5 + *(v10 + 28));
  if ((v15[1] & 1) == 0)
  {
    v16 = *v15;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #4 in Proto_Gnss_Emergency_CellInfo.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #4 in Proto_Gnss_Emergency_CellInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 32), v8, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Plmn and conformance Proto_Gnss_Emergency_Plmn, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_Plmn);
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_CellInfo@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[7];
  v8 = a1[8];
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a2 + v8, 1, 1, v10);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_CellInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellInfo and conformance Proto_Gnss_Emergency_CellInfo, type metadata accessor for Proto_Gnss_Emergency_CellInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_CellInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellInfo and conformance Proto_Gnss_Emergency_CellInfo, type metadata accessor for Proto_Gnss_Emergency_CellInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_CellInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellInfo and conformance Proto_Gnss_Emergency_CellInfo, type metadata accessor for Proto_Gnss_Emergency_CellInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_UtranGanssTimeMeasured.decodeMessage<A>(decoder:)()
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
          v7 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0) + 28);
          goto LABEL_15;
        }

        if (result == 4)
        {
          v6 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0) + 32);
          type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellInfo and conformance Proto_Gnss_Emergency_CellInfo, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          v3 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0) + 20);
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
          goto LABEL_5;
        }

        if (result == 2)
        {
          v4 = v0;
          v5 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0) + 24);
LABEL_15:
          v0 = v4;
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_UtranGanssTimeMeasured.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
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

  v13 = (v5 + *(v10 + 24));
  if ((v13[1] & 1) == 0)
  {
    v14 = *v13;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v15 = (v5 + *(v10 + 28));
  if ((v15[1] & 1) == 0)
  {
    v16 = *v15;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #4 in Proto_Gnss_Emergency_UtranGanssTimeMeasured.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #4 in Proto_Gnss_Emergency_UtranGanssTimeMeasured.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 32), v8, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellInfo and conformance Proto_Gnss_Emergency_CellInfo, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_UtranGanssTimeMeasured@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[7];
  v8 = a1[8];
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a2 + v8, 1, 1, v10);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_UtranGanssTimeMeasured(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranGanssTimeMeasured and conformance Proto_Gnss_Emergency_UtranGanssTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_UtranGanssTimeMeasured(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranGanssTimeMeasured and conformance Proto_Gnss_Emergency_UtranGanssTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_UtranGanssTimeMeasured(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranGanssTimeMeasured and conformance Proto_Gnss_Emergency_UtranGanssTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GeranGanssTimeMeasured.decodeMessage<A>(decoder:)()
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
          v3 = *(type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0) + 28);
          type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellInfo and conformance Proto_Gnss_Emergency_CellInfo, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_5;
        case 2:
          v4 = v0;
          v6 = *(type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0) + 24);
          break;
        case 1:
          v4 = v0;
          v5 = *(type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0) + 20);
          break;
        default:
          goto LABEL_5;
      }

      v0 = v4;
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GeranGanssTimeMeasured.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
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

  closure #3 in Proto_Gnss_Emergency_GeranGanssTimeMeasured.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #3 in Proto_Gnss_Emergency_GeranGanssTimeMeasured.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 28), v8, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellInfo and conformance Proto_Gnss_Emergency_CellInfo, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_GeranGanssTimeMeasured@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[7];
  v8 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GeranGanssTimeMeasured(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GeranGanssTimeMeasured and conformance Proto_Gnss_Emergency_GeranGanssTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GeranGanssTimeMeasured(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GeranGanssTimeMeasured and conformance Proto_Gnss_Emergency_GeranGanssTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GeranGanssTimeMeasured(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GeranGanssTimeMeasured and conformance Proto_Gnss_Emergency_GeranGanssTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_ClsEutranCell.decodeMessage<A>(decoder:)()
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
        if (result <= 2)
        {
          if (result == 1)
          {
            v3 = v0;
            v4 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 20);
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            goto LABEL_6;
          }

          if (result == 2)
          {
            v3 = v0;
            v8 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 24);
            goto LABEL_5;
          }
        }

        else
        {
          if (result == 3)
          {
            v3 = v0;
            v12 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 28);
            goto LABEL_5;
          }

          if (result == 4)
          {
            v3 = v0;
            v9 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 32);
            goto LABEL_5;
          }

          v6 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 36);
          type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Plmn and conformance Proto_Gnss_Emergency_Plmn, type metadata accessor for Proto_Gnss_Emergency_Plmn);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        if (result <= 8)
        {
          if (result == 6)
          {
            v3 = v0;
            v13 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 40);
          }

          else
          {
            v3 = v0;
            if (result == 7)
            {
              v10 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 44);
            }

            else
            {
              v5 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 48);
            }
          }

          goto LABEL_5;
        }

        switch(result)
        {
          case 9:
            v14 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 52);
            dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
            break;
          case 10:
            v3 = v0;
            v11 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 56);
            goto LABEL_5;
          case 11:
            v3 = v0;
            v7 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 60);
            goto LABEL_5;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_ClsEutranCell.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
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

  closure #5 in Proto_Gnss_Emergency_ClsEutranCell.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #6 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  closure #7 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  closure #8 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  closure #9 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell, MEMORY[0x277D21848]);
  closure #10 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  closure #11 in Proto_Gnss_Emergency_ClsEutranCell.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #5 in Proto_Gnss_Emergency_ClsEutranCell.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 36), v8, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Plmn and conformance Proto_Gnss_Emergency_Plmn, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_Plmn);
}

uint64_t closure #7 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 44));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #9 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = a5(0);
  v11 = (a1 + *(result + 52));
  if ((v11[1] & 1) == 0)
  {
    return a6(*v11, 9, a3, a4);
  }

  return result;
}

uint64_t closure #10 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 56));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_ClsEutranCell@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  v10 = a1[9];
  v11 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  result = (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  v13 = a1[11];
  v14 = a2 + a1[10];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a2 + v13;
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a1[13];
  v17 = a2 + a1[12];
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = a2 + v16;
  *v18 = 0;
  *(v18 + 4) = 1;
  v19 = a1[15];
  v20 = a2 + a1[14];
  *v20 = 0;
  *(v20 + 4) = 1;
  v21 = a2 + v19;
  *v21 = 0;
  *(v21 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_ClsEutranCell(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsEutranCell and conformance Proto_Gnss_Emergency_ClsEutranCell, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_ClsEutranCell(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsEutranCell and conformance Proto_Gnss_Emergency_ClsEutranCell, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_ClsEutranCell(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsEutranCell and conformance Proto_Gnss_Emergency_ClsEutranCell, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v25[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v25[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v25[-v13];
  v15 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  v16 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  v18 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  v20 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v21, v14, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v14, v1 + v15, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  swift_endAccess();
  v22 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v22, v10, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v10, v1 + v17, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  swift_endAccess();
  v23 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v23, v6, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);

  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v1 + v19, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  swift_endAccess();
  return v1;
}

uint64_t Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t Proto_Gnss_Emergency_GanssTimeMeasured.decodeMessage<A>(decoder:)()
{
  v2 = v0;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass.init(copying:)(v6);
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
        v13 = v1;
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
        v14 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell;
        v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsEutranCell and conformance Proto_Gnss_Emergency_ClsEutranCell;
        goto LABEL_7;
      }

      if (result == 2)
      {
        break;
      }

      if (result == 1)
      {
        v13 = v1;
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
        v14 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured;
        v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranGanssTimeMeasured and conformance Proto_Gnss_Emergency_UtranGanssTimeMeasured;
        goto LABEL_7;
      }

LABEL_8:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v13 = v1;
    swift_beginAccess();
    type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
    v14 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured;
    v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GeranGanssTimeMeasured and conformance Proto_Gnss_Emergency_GeranGanssTimeMeasured;
LABEL_7:
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(v15, v14);
    v1 = v13;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    swift_endAccess();
    goto LABEL_8;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GanssTimeMeasured.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20));
  result = closure #1 in closure #1 in Proto_Gnss_Emergency_GanssTimeMeasured.traverse<A>(visitor:)(v8, a1, a2, a3);
  if (!v4)
  {
    closure #2 in closure #1 in Proto_Gnss_Emergency_GanssTimeMeasured.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #3 in closure #1 in Proto_Gnss_Emergency_GanssTimeMeasured.traverse<A>(visitor:)(v8, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in Proto_Gnss_Emergency_GanssTimeMeasured.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranGanssTimeMeasured and conformance Proto_Gnss_Emergency_UtranGanssTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
}

uint64_t closure #2 in closure #1 in Proto_Gnss_Emergency_GanssTimeMeasured.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GeranGanssTimeMeasured and conformance Proto_Gnss_Emergency_GeranGanssTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
}

uint64_t closure #3 in closure #1 in Proto_Gnss_Emergency_GanssTimeMeasured.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsEutranCell and conformance Proto_Gnss_Emergency_ClsEutranCell, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
}

BOOL closure #1 in static Proto_Gnss_Emergency_GanssTimeMeasured.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v88 = a2;
  v76 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v75 = *(v76 - 8);
  v3 = *(v75 + 64);
  MEMORY[0x28223BE20](v76);
  v72 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSg_ADtMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSg_ADtMR);
  v5 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v77 = &v72 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v85 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v84 = &v72 - v11;
  v82 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  v81 = *(v82 - 8);
  v12 = *(v81 + 64);
  MEMORY[0x28223BE20](v82);
  v73 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSg_ADtMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSg_ADtMR);
  v14 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v83 = &v72 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v78 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v87 = &v72 - v20;
  v21 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v79 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSg_ADtMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSg_ADtMR);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v72 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v86 = &v72 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v72 - v34;
  v36 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v36, v35, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  v37 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  v38 = v88;
  swift_beginAccess();
  v39 = *(v26 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v35, v29, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v38 + v37, &v29[v39], &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  v40 = *(v22 + 48);
  if (v40(v29, 1, v21) == 1)
  {

    outlined destroy of Any?(v35, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
    v41 = a1;
    if (v40(&v29[v39], 1, v21) == 1)
    {
      outlined destroy of Any?(v29, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v43 = &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSg_ADtMd;
    v44 = &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSg_ADtMR;
    v45 = v29;
LABEL_14:
    outlined destroy of Any?(v45, v43, v44);
    goto LABEL_15;
  }

  v41 = a1;
  v42 = v86;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v29, v86, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  if (v40(&v29[v39], 1, v21) == 1)
  {

    outlined destroy of Any?(v35, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v42, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
    goto LABEL_6;
  }

  v46 = v79;
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v29[v39], v79, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);

  v47 = specialized static Proto_Gnss_Emergency_UtranGanssTimeMeasured.== infix(_:_:)(v42, v46);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v46, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
  outlined destroy of Any?(v35, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v42, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
  outlined destroy of Any?(v29, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  if ((v47 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v48 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  swift_beginAccess();
  v49 = v87;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v41 + v48, v87, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  v50 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  swift_beginAccess();
  v51 = *(v80 + 48);
  v52 = v83;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v49, v83, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v38 + v50, v52 + v51, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  v53 = *(v81 + 48);
  v54 = v82;
  if (v53(v52, 1, v82) != 1)
  {
    v58 = v78;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v52, v78, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
    v59 = v53(v52 + v51, 1, v54);
    v56 = v85;
    v57 = v84;
    if (v59 == 1)
    {
      outlined destroy of Any?(v87, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v58, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
      goto LABEL_13;
    }

    v61 = v52 + v51;
    v62 = v73;
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v61, v73, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
    v63 = specialized static Proto_Gnss_Emergency_GeranGanssTimeMeasured.== infix(_:_:)(v58, v62);
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v62, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
    outlined destroy of Any?(v87, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v58, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
    outlined destroy of Any?(v52, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
    if (v63)
    {
      goto LABEL_19;
    }

LABEL_15:

    return 0;
  }

  outlined destroy of Any?(v49, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  v55 = v53(v52 + v51, 1, v54);
  v56 = v85;
  v57 = v84;
  if (v55 != 1)
  {
LABEL_13:
    v43 = &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSg_ADtMd;
    v44 = &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSg_ADtMR;
    v45 = v52;
    goto LABEL_14;
  }

  outlined destroy of Any?(v52, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
LABEL_19:
  v64 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v41 + v64, v57, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  v65 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  swift_beginAccess();
  v66 = *(v74 + 48);
  v67 = v77;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v57, v77, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v38 + v65, v67 + v66, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  v68 = *(v75 + 48);
  v69 = v76;
  if (v68(v67, 1, v76) == 1)
  {

    outlined destroy of Any?(v57, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
    if (v68(v67 + v66, 1, v69) == 1)
    {
      outlined destroy of Any?(v67, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
      return 1;
    }

    goto LABEL_24;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v67, v56, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  if (v68(v67 + v66, 1, v69) == 1)
  {

    outlined destroy of Any?(v57, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v56, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
LABEL_24:
    outlined destroy of Any?(v67, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSg_ADtMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSg_ADtMR);
    return 0;
  }

  v70 = v72;
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v67 + v66, v72, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  v71 = specialized static Proto_Gnss_Emergency_ClsEutranCell.== infix(_:_:)(v56, v70);

  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v70, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  outlined destroy of Any?(v57, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v56, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  outlined destroy of Any?(v67, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  return (v71 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GanssTimeMeasured(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssTimeMeasured and conformance Proto_Gnss_Emergency_GanssTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GanssTimeMeasured(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssTimeMeasured and conformance Proto_Gnss_Emergency_GanssTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GanssTimeMeasured(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssTimeMeasured and conformance Proto_Gnss_Emergency_GanssTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GanssTimeMeasuredParams.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0) + 20);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_ClsNetworkType and conformance Proto_Gnss_Emergency_ClsNetworkType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        v4 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0) + 24);
        type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssTimeMeasured and conformance Proto_Gnss_Emergency_GanssTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #2 in Proto_Gnss_Emergency_GanssTimeMeasuredParams.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 24), v8, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssTimeMeasured and conformance Proto_Gnss_Emergency_GanssTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_GpsTimeMeasuredParams@<X0>(uint64_t a1@<X0>, char a2@<W2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  UnknownStorage.init()();
  v8 = *(a1 + 20);
  v9 = *(a1 + 24);
  *(a4 + v8) = a2;
  v10 = a3(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a4 + v9, 1, 1, v10);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GanssTimeMeasuredParams(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssTimeMeasuredParams and conformance Proto_Gnss_Emergency_GanssTimeMeasuredParams, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GanssTimeMeasuredParams(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssTimeMeasuredParams and conformance Proto_Gnss_Emergency_GanssTimeMeasuredParams, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GanssTimeMeasuredParams(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssTimeMeasuredParams and conformance Proto_Gnss_Emergency_GanssTimeMeasuredParams, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GanssLocationInfo.decodeMessage<A>(decoder:)()
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
            v4 = *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 32);
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            break;
          case 5:
            v7 = v0;
            v10 = *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 36);
            lazy protocol witness table accessor for type Proto_Gnss_Emergency_FixType and conformance Proto_Gnss_Emergency_FixType();
            goto LABEL_20;
          case 6:
            v3 = v0;
            v6 = *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 40);
            goto LABEL_5;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            v7 = v0;
            v8 = *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 20);
            lazy protocol witness table accessor for type Proto_Gnss_Emergency_GnssTimeId and conformance Proto_Gnss_Emergency_GnssTimeId();
LABEL_20:
            v0 = v7;
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 2:
            v3 = v0;
            v9 = *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 24);
            goto LABEL_5;
          case 3:
            v3 = v0;
            v5 = *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 28);
            goto LABEL_5;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GanssLocationInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v10 = result;
  if (*(v5 + *(result + 20)) == 6)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v17 = *(v5 + *(result + 20));
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_GnssTimeId and conformance Proto_Gnss_Emergency_GnssTimeId();
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
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v13 = (v5 + v10[7]);
  if ((v13[1] & 1) == 0)
  {
    v14 = *v13;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v15 = (v5 + v10[8]);
  if ((v15[1] & 1) == 0)
  {
    v16 = *v15;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #5 in Proto_Gnss_Emergency_GanssLocationInfo.traverse<A>(visitor:)(v5);
  closure #6 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #5 in Proto_Gnss_Emergency_GanssLocationInfo.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  if (*(a1 + *(result + 36)) != 4)
  {
    v3 = *(a1 + *(result + 36));
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_FixType and conformance Proto_Gnss_Emergency_FixType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_GanssLocationInfo@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 6;
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
  *(a2 + a1[9]) = 4;
  v11 = a2 + v10;
  *v11 = 0;
  *(v11 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GanssLocationInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssLocationInfo and conformance Proto_Gnss_Emergency_GanssLocationInfo, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GanssLocationInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssLocationInfo and conformance Proto_Gnss_Emergency_GanssLocationInfo, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GanssLocationInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssLocationInfo and conformance Proto_Gnss_Emergency_GanssLocationInfo, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_EllipsoidPoint(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidPoint and conformance Proto_Gnss_Emergency_EllipsoidPoint, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_EllipsoidPoint(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidPoint and conformance Proto_Gnss_Emergency_EllipsoidPoint, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_EllipsoidPoint(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidPoint and conformance Proto_Gnss_Emergency_EllipsoidPoint, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t closure #1 in Proto_Gnss_Emergency_PointUncertainCircle.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 20), v8, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidPoint and conformance Proto_Gnss_Emergency_EllipsoidPoint, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_PointUncertainCircle(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PointUncertainCircle and conformance Proto_Gnss_Emergency_PointUncertainCircle, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_PointUncertainCircle(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PointUncertainCircle and conformance Proto_Gnss_Emergency_PointUncertainCircle, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_PointUncertainCircle(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PointUncertainCircle and conformance Proto_Gnss_Emergency_PointUncertainCircle, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_PointUncertainEllipse.decodeMessage<A>(decoder:)()
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
          v8 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 20);
          type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidPoint and conformance Proto_Gnss_Emergency_EllipsoidPoint, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else if (result == 2)
        {
          v3 = v0;
          v6 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 24);
          goto LABEL_5;
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v3 = v0;
            v4 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 28);
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            break;
          case 4:
            v3 = v0;
            v7 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 32);
            goto LABEL_5;
          case 5:
            v3 = v0;
            v5 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 36);
            goto LABEL_5;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_PointUncertainEllipse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in Proto_Gnss_Emergency_PointUncertainEllipse.traverse<A>(visitor:)(v5, a1, a2, a3);
  if (!v4)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
    v11 = (v5 + v10[6]);
    if ((v11[1] & 1) == 0)
    {
      v12 = *v11;
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    v13 = (v5 + v10[7]);
    if ((v13[1] & 1) == 0)
    {
      v14 = *v13;
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    v15 = (v5 + v10[8]);
    if ((v15[1] & 1) == 0)
    {
      v16 = *v15;
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    closure #5 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse, MEMORY[0x277D21860]);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Proto_Gnss_Emergency_PointUncertainEllipse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 20), v8, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidPoint and conformance Proto_Gnss_Emergency_EllipsoidPoint, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_PointUncertainEllipse@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = a2 + a1[6];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1[9];
  v11 = a2 + a1[8];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_PointUncertainEllipse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PointUncertainEllipse and conformance Proto_Gnss_Emergency_PointUncertainEllipse, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_PointUncertainEllipse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PointUncertainEllipse and conformance Proto_Gnss_Emergency_PointUncertainEllipse, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_PointUncertainEllipse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PointUncertainEllipse and conformance Proto_Gnss_Emergency_PointUncertainEllipse, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.decodeMessage<A>(decoder:)()
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
            v8 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 20);
            type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
            lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidPoint and conformance Proto_Gnss_Emergency_EllipsoidPoint, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
          case 2:
            v3 = v0;
            v10 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 24);
            goto LABEL_5;
          case 3:
            v3 = v0;
            v6 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 28);
            goto LABEL_5;
        }
      }

      else
      {
        if (result <= 5)
        {
          v3 = v0;
          if (result == 4)
          {
            v9 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 32);
          }

          else
          {
            v5 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 36);
          }

          goto LABEL_5;
        }

        if (result == 6)
        {
          v3 = v0;
          v4 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 40);
LABEL_5:
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_6;
        }

        if (result == 7)
        {
          v3 = v0;
          v7 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 44);
          goto LABEL_5;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.traverse<A>(visitor:)(v5, a1, a2, a3);
  if (!v4)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
    v11 = (v5 + v10[6]);
    if ((v11[1] & 1) == 0)
    {
      v12 = *v11;
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    v13 = (v5 + v10[7]);
    if ((v13[1] & 1) == 0)
    {
      v14 = *v13;
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    v15 = (v5 + v10[8]);
    if ((v15[1] & 1) == 0)
    {
      v16 = *v15;
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    closure #5 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid, MEMORY[0x277D21860]);
    closure #6 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
    closure #7 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 20), v8, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidPoint and conformance Proto_Gnss_Emergency_EllipsoidPoint, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = a2 + a1[6];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
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

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid and conformance Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid and conformance Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid and conformance Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_EllipsoidArc.decodeMessage<A>(decoder:)()
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
            v4 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 32);
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            break;
          case 5:
            v3 = v0;
            v9 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 36);
            goto LABEL_5;
          case 6:
            v3 = v0;
            v6 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 40);
            goto LABEL_5;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            v7 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 20);
            type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
            lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidPoint and conformance Proto_Gnss_Emergency_EllipsoidPoint, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
          case 2:
            v3 = v0;
            v8 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 24);
            goto LABEL_5;
          case 3:
            v3 = v0;
            v5 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 28);
            goto LABEL_5;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_EllipsoidArc.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in Proto_Gnss_Emergency_EllipsoidArc.traverse<A>(visitor:)(v5, a1, a2, a3);
  if (!v4)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
    v11 = (v5 + v10[6]);
    if ((v11[1] & 1) == 0)
    {
      v12 = *v11;
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    v13 = (v5 + v10[7]);
    if ((v13[1] & 1) == 0)
    {
      v14 = *v13;
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    v15 = (v5 + v10[8]);
    if ((v15[1] & 1) == 0)
    {
      v16 = *v15;
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    closure #5 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc, MEMORY[0x277D21860]);
    closure #6 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Proto_Gnss_Emergency_EllipsoidArc.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 20), v8, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidPoint and conformance Proto_Gnss_Emergency_EllipsoidPoint, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_EllipsoidArc@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = a2 + a1[6];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1[9];
  v11 = a2 + a1[8];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a2 + a1[10];
  *v13 = 0;
  *(v13 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_EllipsoidArc(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidArc and conformance Proto_Gnss_Emergency_EllipsoidArc, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_EllipsoidArc(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidArc and conformance Proto_Gnss_Emergency_EllipsoidArc, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_EllipsoidArc(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidArc and conformance Proto_Gnss_Emergency_EllipsoidArc, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_PointUncertainCircle.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v7 & 1) == 0)
    {
      if (result == 1)
      {
        v8 = *(a4(0) + 20);
        type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidPoint and conformance Proto_Gnss_Emergency_EllipsoidPoint, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        v9 = *(a4(0) + 24);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_PointUncertainCircle.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  result = a4(v5, a1, a2, a3);
  if (!v6)
  {
    v9 = (v5 + *(a5(0) + 24));
    if ((v9[1] & 1) == 0)
    {
      v10 = *v9;
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Proto_Gnss_Emergency_PointAltitude.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 20), v8, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidPoint and conformance Proto_Gnss_Emergency_EllipsoidPoint, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_PointUncertainCircle@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a2 + *(a1 + 24);
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_PointAltitude(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PointAltitude and conformance Proto_Gnss_Emergency_PointAltitude, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_PointAltitude(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PointAltitude and conformance Proto_Gnss_Emergency_PointAltitude, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_PointAltitude(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PointAltitude and conformance Proto_Gnss_Emergency_PointAltitude, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_Polygon.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for Proto_Gnss_Emergency_Polygon(0) + 24);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidPoint and conformance Proto_Gnss_Emergency_EllipsoidPoint, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_Polygon.traverse<A>(visitor:)()
{
  result = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
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
    type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidPoint and conformance Proto_Gnss_Emergency_EllipsoidPoint, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  v6 = v0 + *(v3 + 20);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_Polygon(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Polygon and conformance Proto_Gnss_Emergency_Polygon, type metadata accessor for Proto_Gnss_Emergency_Polygon);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_Polygon(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Polygon and conformance Proto_Gnss_Emergency_Polygon, type metadata accessor for Proto_Gnss_Emergency_Polygon);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_Polygon(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Polygon and conformance Proto_Gnss_Emergency_Polygon, type metadata accessor for Proto_Gnss_Emergency_Polygon);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_ShapeInfo._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t Proto_Gnss_Emergency_ShapeInfo.decodeMessage<A>(decoder:)()
{
  v2 = v0;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v6);

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
        if (result > 2)
        {
          v13 = v1;
          if (result == 3)
          {
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
            v14 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid;
            v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid and conformance Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid;
          }

          else
          {
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
            v14 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc;
            v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidArc and conformance Proto_Gnss_Emergency_EllipsoidArc;
          }
        }

        else if (result == 1)
        {
          v13 = v1;
          swift_beginAccess();
          type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
          v14 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle;
          v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PointUncertainCircle and conformance Proto_Gnss_Emergency_PointUncertainCircle;
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_25;
          }

          v13 = v1;
          swift_beginAccess();
          type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
          v14 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse;
          v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PointUncertainEllipse and conformance Proto_Gnss_Emergency_PointUncertainEllipse;
        }

        goto LABEL_23;
      }

      if (result <= 6)
      {
        break;
      }

      if (result == 7)
      {
        v13 = v1;
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
        v14 = type metadata accessor for Proto_Gnss_Emergency_Polygon;
        v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Polygon and conformance Proto_Gnss_Emergency_Polygon;
LABEL_23:
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(v15, v14);
        v1 = v13;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        goto LABEL_24;
      }

      if (result != 8)
      {
        goto LABEL_25;
      }

      swift_beginAccess();
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
LABEL_24:
      swift_endAccess();
LABEL_25:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v13 = v1;
    if (result == 5)
    {
      swift_beginAccess();
      type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
      v14 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint;
      v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidPoint and conformance Proto_Gnss_Emergency_EllipsoidPoint;
    }

    else
    {
      swift_beginAccess();
      type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
      v14 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude;
      v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PointAltitude and conformance Proto_Gnss_Emergency_PointAltitude;
    }

    goto LABEL_23;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_ShapeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  result = closure #1 in closure #1 in Proto_Gnss_Emergency_ShapeInfo.traverse<A>(visitor:)(v8, a1, a2, a3);
  if (!v4)
  {
    closure #2 in closure #1 in Proto_Gnss_Emergency_ShapeInfo.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #3 in closure #1 in Proto_Gnss_Emergency_ShapeInfo.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #4 in closure #1 in Proto_Gnss_Emergency_ShapeInfo.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #5 in closure #1 in Proto_Gnss_Emergency_ShapeInfo.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #6 in closure #1 in Proto_Gnss_Emergency_ShapeInfo.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #7 in closure #1 in Proto_Gnss_Emergency_ShapeInfo.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #8 in closure #1 in Proto_Gnss_Emergency_ShapeInfo.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__noLocation, 8, MEMORY[0x277D21860]);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in Proto_Gnss_Emergency_ShapeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PointUncertainCircle and conformance Proto_Gnss_Emergency_PointUncertainCircle, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
}

uint64_t closure #2 in closure #1 in Proto_Gnss_Emergency_ShapeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PointUncertainEllipse and conformance Proto_Gnss_Emergency_PointUncertainEllipse, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
}

uint64_t closure #3 in closure #1 in Proto_Gnss_Emergency_ShapeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid and conformance Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
}

uint64_t closure #4 in closure #1 in Proto_Gnss_Emergency_ShapeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidArc and conformance Proto_Gnss_Emergency_EllipsoidArc, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
}

uint64_t closure #5 in closure #1 in Proto_Gnss_Emergency_ShapeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidPoint and conformance Proto_Gnss_Emergency_EllipsoidPoint, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
}

uint64_t closure #6 in closure #1 in Proto_Gnss_Emergency_ShapeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PointAltitude and conformance Proto_Gnss_Emergency_PointAltitude, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
}

uint64_t closure #7 in closure #1 in Proto_Gnss_Emergency_ShapeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_Polygon);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Polygon and conformance Proto_Gnss_Emergency_Polygon, type metadata accessor for Proto_Gnss_Emergency_Polygon);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_Polygon);
}

uint64_t closure #1 in static Proto_Gnss_Emergency_ShapeInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v214 = a2;
  v3 = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
  v173 = *(v3 - 8);
  v174 = v3;
  v4 = *(v173 + 64);
  MEMORY[0x28223BE20](v3);
  v169 = (&v168 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSg_ADtMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSg_ADtMR);
  v6 = *(*(v172 - 8) + 64);
  MEMORY[0x28223BE20](v172);
  v175 = &v168 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v170 = (&v168 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v177 = &v168 - v12;
  v13 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  v180 = *(v13 - 8);
  v181 = v13;
  v14 = *(v180 + 64);
  MEMORY[0x28223BE20](v13);
  v171 = &v168 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSg_ADtMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSg_ADtMR);
  v16 = *(*(v179 - 8) + 64);
  MEMORY[0x28223BE20](v179);
  v182 = &v168 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v176 = &v168 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v184 = &v168 - v22;
  v23 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v187 = *(v23 - 8);
  v188 = v23;
  v24 = *(v187 + 64);
  MEMORY[0x28223BE20](v23);
  v178 = &v168 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSg_ADtMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSg_ADtMR);
  v26 = *(*(v186 - 8) + 64);
  MEMORY[0x28223BE20](v186);
  v189 = &v168 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v183 = &v168 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v191 = &v168 - v32;
  v33 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v194 = *(v33 - 8);
  v195 = v33;
  v34 = *(v194 + 64);
  MEMORY[0x28223BE20](v33);
  v185 = &v168 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSg_ADtMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSg_ADtMR);
  v36 = *(*(v193 - 8) + 64);
  MEMORY[0x28223BE20](v193);
  v196 = &v168 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38 - 8);
  v190 = &v168 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v202 = &v168 - v42;
  v43 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v199 = *(v43 - 8);
  v200 = v43;
  v44 = *(v199 + 64);
  MEMORY[0x28223BE20](v43);
  v192 = &v168 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSg_ADtMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSg_ADtMR);
  v46 = *(*(v198 - 8) + 64);
  MEMORY[0x28223BE20](v198);
  v201 = &v168 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  v49 = *(*(v48 - 8) + 64);
  v50 = MEMORY[0x28223BE20](v48 - 8);
  v210 = &v168 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v209 = &v168 - v52;
  v53 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v206 = *(v53 - 8);
  v207 = v53;
  v54 = *(v206 + 64);
  MEMORY[0x28223BE20](v53);
  v197 = &v168 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSg_ADtMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSg_ADtMR);
  v56 = *(*(v205 - 8) + 64);
  MEMORY[0x28223BE20](v205);
  v208 = &v168 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  v59 = *(*(v58 - 8) + 64);
  v60 = MEMORY[0x28223BE20](v58 - 8);
  v203 = &v168 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v212 = &v168 - v62;
  v213 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  v63 = *(v213 - 8);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v213);
  v204 = &v168 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSg_ADtMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSg_ADtMR);
  v67 = v66 - 8;
  v68 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v70 = &v168 - v69;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  v72 = *(*(v71 - 8) + 64);
  v73 = MEMORY[0x28223BE20](v71 - 8);
  v211 = &v168 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v73);
  v76 = &v168 - v75;
  v77 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v77, v76, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  v78 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
  v79 = v214;
  swift_beginAccess();
  v80 = *(v67 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v76, v70, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  v81 = v79 + v78;
  v82 = v213;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v81, &v70[v80], &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  v83 = *(v63 + 48);
  if (v83(v70, 1, v82) == 1)
  {

    outlined destroy of Any?(v76, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
    if (v83(&v70[v80], 1, v82) == 1)
    {
      outlined destroy of Any?(v70, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v85 = &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSg_ADtMd;
    v86 = &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSg_ADtMR;
LABEL_14:
    v101 = v70;
LABEL_15:
    outlined destroy of Any?(v101, v85, v86);
    goto LABEL_16;
  }

  v84 = v211;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v70, v211, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  if (v83(&v70[v80], 1, v82) == 1)
  {

    outlined destroy of Any?(v76, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v84, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
    goto LABEL_6;
  }

  v87 = v204;
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v70[v80], v204, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);

  v88 = specialized static Proto_Gnss_Emergency_PointAltitude.== infix(_:_:)(v84, v87, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v87, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
  outlined destroy of Any?(v76, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v84, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
  outlined destroy of Any?(v70, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  if ((v88 & 1) == 0)
  {
LABEL_16:

    return 0;
  }

LABEL_8:
  v89 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
  swift_beginAccess();
  v90 = v212;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v89, v212, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  v91 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
  swift_beginAccess();
  v92 = *(v205 + 48);
  v70 = v208;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v90, v208, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v79 + v91, &v70[v92], &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  v93 = v207;
  v94 = *(v206 + 48);
  if (v94(v70, 1, v207) == 1)
  {
    outlined destroy of Any?(v90, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
    v95 = v94(&v70[v92], 1, v93);
    v96 = v209;
    v97 = v210;
    if (v95 == 1)
    {
      outlined destroy of Any?(v70, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  v98 = v203;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v70, v203, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  v99 = v94(&v70[v92], 1, v93);
  v96 = v209;
  v100 = v210;
  if (v99 == 1)
  {
    outlined destroy of Any?(v212, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v98, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
LABEL_13:
    v85 = &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSg_ADtMd;
    v86 = &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSg_ADtMR;
    goto LABEL_14;
  }

  v103 = &v70[v92];
  v104 = v197;
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v103, v197, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
  LODWORD(v214) = specialized static Proto_Gnss_Emergency_PointUncertainEllipse.== infix(_:_:)(v98, v104);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v104, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
  outlined destroy of Any?(v212, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v98, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
  outlined destroy of Any?(v70, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  v97 = v100;
  if ((v214 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  v105 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v105, v96, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  v106 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
  swift_beginAccess();
  v107 = *(v198 + 48);
  v108 = v201;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v96, v201, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  v109 = v108;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v79 + v106, v108 + v107, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  v110 = v200;
  v111 = *(v199 + 48);
  if (v111(v108, 1, v200) == 1)
  {
    outlined destroy of Any?(v96, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
    v112 = v111(v108 + v107, 1, v110);
    v113 = v202;
    if (v112 == 1)
    {
      outlined destroy of Any?(v109, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
      goto LABEL_27;
    }

LABEL_25:
    v85 = &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSg_ADtMd;
    v86 = &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSg_ADtMR;
LABEL_54:
    v101 = v109;
    goto LABEL_15;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v108, v97, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  v114 = v111(v108 + v107, 1, v110);
  v113 = v202;
  if (v114 == 1)
  {
    outlined destroy of Any?(v96, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v97, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
    goto LABEL_25;
  }

  v115 = v109 + v107;
  v116 = v192;
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v115, v192, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
  LODWORD(v214) = specialized static Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.== infix(_:_:)(v97, v116);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v116, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
  outlined destroy of Any?(v96, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v97, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
  outlined destroy of Any?(v109, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  if ((v214 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_27:
  v117 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v117, v113, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  v118 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
  swift_beginAccess();
  v119 = *(v193 + 48);
  v120 = v113;
  v121 = v113;
  v122 = v196;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v120, v196, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  v109 = v122;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v79 + v118, v122 + v119, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  v123 = v195;
  v124 = *(v194 + 48);
  if (v124(v122, 1, v195) == 1)
  {
    outlined destroy of Any?(v121, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
    if (v124(v122 + v119, 1, v123) == 1)
    {
      outlined destroy of Any?(v122, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v125 = v190;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v122, v190, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  if (v124(v122 + v119, 1, v123) == 1)
  {
    outlined destroy of Any?(v202, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v125, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
LABEL_32:
    v85 = &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSg_ADtMd;
    v86 = &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSg_ADtMR;
    goto LABEL_54;
  }

  v126 = v122 + v119;
  v127 = v185;
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v126, v185, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
  v128 = specialized static Proto_Gnss_Emergency_EllipsoidArc.== infix(_:_:)(v125, v127);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v127, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
  outlined destroy of Any?(v202, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v125, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
  outlined destroy of Any?(v122, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  if ((v128 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_34:
  v129 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  swift_beginAccess();
  v130 = v191;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v129, v191, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v131 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  swift_beginAccess();
  v132 = *(v186 + 48);
  v109 = v189;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v130, v189, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v79 + v131, v109 + v132, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v133 = v188;
  v134 = *(v187 + 48);
  if (v134(v109, 1, v188) == 1)
  {
    outlined destroy of Any?(v130, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
    if (v134(v109 + v132, 1, v133) == 1)
    {
      outlined destroy of Any?(v109, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  v135 = v183;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v109, v183, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  if (v134(v109 + v132, 1, v133) == 1)
  {
    outlined destroy of Any?(v191, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v135, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
LABEL_39:
    v85 = &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSg_ADtMd;
    v86 = &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSg_ADtMR;
    goto LABEL_54;
  }

  v136 = v109 + v132;
  v137 = v178;
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v136, v178, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  v138 = specialized static Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted.== infix(_:_:)(v135, v137, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v137, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  outlined destroy of Any?(v191, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v135, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  outlined destroy of Any?(v109, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  if ((v138 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_41:
  v139 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  swift_beginAccess();
  v140 = v184;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v139, v184, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  v141 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  swift_beginAccess();
  v142 = *(v179 + 48);
  v143 = v182;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v140, v182, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  v109 = v143;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v79 + v141, v143 + v142, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  v144 = v181;
  v145 = *(v180 + 48);
  if (v145(v143, 1, v181) == 1)
  {
    outlined destroy of Any?(v140, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
    if (v145(v143 + v142, 1, v144) == 1)
    {
      outlined destroy of Any?(v143, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
      goto LABEL_48;
    }

    goto LABEL_46;
  }

  v146 = v176;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v143, v176, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  if (v145(v143 + v142, 1, v144) == 1)
  {
    outlined destroy of Any?(v184, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v146, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
LABEL_46:
    v85 = &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSg_ADtMd;
    v86 = &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSg_ADtMR;
    goto LABEL_54;
  }

  v147 = v143 + v142;
  v148 = v171;
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v147, v171, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
  v149 = specialized static Proto_Gnss_Emergency_PointAltitude.== infix(_:_:)(v146, v148, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v148, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
  outlined destroy of Any?(v184, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v146, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
  outlined destroy of Any?(v143, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  if ((v149 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_48:
  v150 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  swift_beginAccess();
  v151 = v177;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v150, v177, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  v152 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  swift_beginAccess();
  v153 = *(v172 + 48);
  v154 = v175;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v151, v175, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  v109 = v154;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v79 + v152, v154 + v153, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  v155 = v174;
  v156 = *(v173 + 48);
  if (v156(v154, 1, v174) == 1)
  {
    outlined destroy of Any?(v151, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
    if (v156(v154 + v153, 1, v155) == 1)
    {
      outlined destroy of Any?(v154, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
      goto LABEL_56;
    }

    goto LABEL_53;
  }

  v157 = v170;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v154, v170, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  if (v156(v154 + v153, 1, v155) == 1)
  {
    outlined destroy of Any?(v177, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v157, type metadata accessor for Proto_Gnss_Emergency_Polygon);
LABEL_53:
    v85 = &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSg_ADtMd;
    v86 = &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSg_ADtMR;
    goto LABEL_54;
  }

  v158 = v154 + v153;
  v159 = v169;
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v158, v169, type metadata accessor for Proto_Gnss_Emergency_Polygon);
  v160 = specialized static Proto_Gnss_Emergency_Polygon.== infix(_:_:)(v157, v159);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v159, type metadata accessor for Proto_Gnss_Emergency_Polygon);
  outlined destroy of Any?(v177, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v157, type metadata accessor for Proto_Gnss_Emergency_Polygon);
  outlined destroy of Any?(v154, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  if ((v160 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_56:
  v161 = (a1 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__noLocation);
  swift_beginAccess();
  v162 = *v161;
  v163 = *(v161 + 4);

  v164 = (v79 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__noLocation);
  swift_beginAccess();
  v165 = *v164;
  v166 = *(v164 + 4);

  if (v163)
  {
    if (v166)
    {
      return 1;
    }
  }

  else
  {
    if (v162 == v165)
    {
      v167 = v166;
    }

    else
    {
      v167 = 1;
    }

    if ((v167 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_ShapeInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ShapeInfo and conformance Proto_Gnss_Emergency_ShapeInfo, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_ShapeInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ShapeInfo and conformance Proto_Gnss_Emergency_ShapeInfo, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_ShapeInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ShapeInfo and conformance Proto_Gnss_Emergency_ShapeInfo, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_LocEstimate.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0) + 20);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_ShapeType and conformance Proto_Gnss_Emergency_ShapeType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        v4 = *(type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0) + 24);
        type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ShapeInfo and conformance Proto_Gnss_Emergency_ShapeInfo, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_LocEstimate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  if (*(v5 + *(result + 20)) == 9)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v10 = *(v5 + *(result + 20));
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_ShapeType and conformance Proto_Gnss_Emergency_ShapeType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  closure #2 in Proto_Gnss_Emergency_LocEstimate.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #2 in Proto_Gnss_Emergency_LocEstimate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMd, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 24), v8, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMd, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMd, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ShapeInfo and conformance Proto_Gnss_Emergency_ShapeInfo, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_LocEstimate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LocEstimate and conformance Proto_Gnss_Emergency_LocEstimate, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_LocEstimate(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LocEstimate and conformance Proto_Gnss_Emergency_LocEstimate, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_LocEstimate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LocEstimate and conformance Proto_Gnss_Emergency_LocEstimate, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_HorizontalVelocity(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_HorizontalVelocity and conformance Proto_Gnss_Emergency_HorizontalVelocity, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_HorizontalVelocity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_HorizontalVelocity and conformance Proto_Gnss_Emergency_HorizontalVelocity, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_HorizontalVelocity(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_HorizontalVelocity and conformance Proto_Gnss_Emergency_HorizontalVelocity, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_HorizWithVertVelocity(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_HorizWithVertVelocity and conformance Proto_Gnss_Emergency_HorizWithVertVelocity, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_HorizWithVertVelocity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_HorizWithVertVelocity and conformance Proto_Gnss_Emergency_HorizWithVertVelocity, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_HorizWithVertVelocity(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_HorizWithVertVelocity and conformance Proto_Gnss_Emergency_HorizWithVertVelocity, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_HorizWithUncertaintyVelocity and conformance Proto_Gnss_Emergency_HorizWithUncertaintyVelocity, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_HorizWithUncertaintyVelocity and conformance Proto_Gnss_Emergency_HorizWithUncertaintyVelocity, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_HorizWithUncertaintyVelocity and conformance Proto_Gnss_Emergency_HorizWithUncertaintyVelocity, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.decodeMessage<A>(decoder:)()
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
            v7 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 32);
            break;
          case 5:
            v3 = v0;
            v9 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 36);
            break;
          case 6:
            v3 = v0;
            v5 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 40);
            break;
          default:
            goto LABEL_17;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            v3 = v0;
            v6 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 20);
            break;
          case 2:
            v3 = v0;
            v8 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 24);
            break;
          case 3:
            v3 = v0;
            v4 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 28);
            break;
          default:
            goto LABEL_17;
        }
      }

      v0 = v3;
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
LABEL_17:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
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

  closure #5 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity, MEMORY[0x277D21860]);
  closure #6 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity and conformance Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity and conformance Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity and conformance Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_VelocityInfo.decodeMessage<A>(decoder:)()
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
          v4 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0) + 28);
          type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
          v5 = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity;
          v6 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_HorizWithUncertaintyVelocity and conformance Proto_Gnss_Emergency_HorizWithUncertaintyVelocity;
          goto LABEL_5;
        }

        if (result == 4)
        {
          v3 = v0;
          v8 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0) + 32);
          type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
          v5 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity;
          v6 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity and conformance Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity;
LABEL_5:
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(v6, v5);
          v0 = v3;
LABEL_6:
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          v9 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0) + 20);
          type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_HorizontalVelocity and conformance Proto_Gnss_Emergency_HorizontalVelocity, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);
          goto LABEL_6;
        }

        if (result == 2)
        {
          v3 = v0;
          v7 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0) + 24);
          type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
          v5 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity;
          v6 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_HorizWithVertVelocity and conformance Proto_Gnss_Emergency_HorizWithVertVelocity;
          goto LABEL_5;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_VelocityInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in Proto_Gnss_Emergency_VelocityInfo.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in Proto_Gnss_Emergency_VelocityInfo.traverse<A>(visitor:)(v3, a1, a2, a3);
    closure #3 in Proto_Gnss_Emergency_VelocityInfo.traverse<A>(visitor:)(v3, a1, a2, a3);
    closure #4 in Proto_Gnss_Emergency_VelocityInfo.traverse<A>(visitor:)(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Proto_Gnss_Emergency_VelocityInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 20), v8, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_HorizontalVelocity and conformance Proto_Gnss_Emergency_HorizontalVelocity, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);
}

uint64_t closure #2 in Proto_Gnss_Emergency_VelocityInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 24), v8, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_HorizWithVertVelocity and conformance Proto_Gnss_Emergency_HorizWithVertVelocity, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);
}

uint64_t closure #3 in Proto_Gnss_Emergency_VelocityInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 28), v8, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_HorizWithUncertaintyVelocity and conformance Proto_Gnss_Emergency_HorizWithUncertaintyVelocity, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);
}

uint64_t closure #4 in Proto_Gnss_Emergency_VelocityInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMd, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 32), v8, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMd, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMd, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity and conformance Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_VelocityInfo@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[7];
  v9 = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  (*(*(v9 - 8) + 56))(a2 + v8, 1, 1, v9);
  v10 = a1[8];
  v11 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a2 + v10, 1, 1, v11);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_VelocityInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityInfo and conformance Proto_Gnss_Emergency_VelocityInfo, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_VelocityInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityInfo and conformance Proto_Gnss_Emergency_VelocityInfo, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_VelocityInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityInfo and conformance Proto_Gnss_Emergency_VelocityInfo, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_VelocityEstimate.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0) + 20);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_VelocityType and conformance Proto_Gnss_Emergency_VelocityType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        v4 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0) + 24);
        type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityInfo and conformance Proto_Gnss_Emergency_VelocityInfo, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #2 in Proto_Gnss_Emergency_VelocityEstimate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 24), v8, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityInfo and conformance Proto_Gnss_Emergency_VelocityInfo, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_VelocityEstimate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityEstimate and conformance Proto_Gnss_Emergency_VelocityEstimate, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_VelocityEstimate(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityEstimate and conformance Proto_Gnss_Emergency_VelocityEstimate, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_VelocityEstimate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityEstimate and conformance Proto_Gnss_Emergency_VelocityEstimate, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_PositionReport._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t Proto_Gnss_Emergency_PositionReport.decodeMessage<A>(decoder:)()
{
  v2 = v0;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v6);

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

      if (result > 4)
      {
        if (result <= 6)
        {
          v13 = v1;
          if (result == 5)
          {
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
            v14 = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo;
            v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssLocationInfo and conformance Proto_Gnss_Emergency_GanssLocationInfo;
          }

          else
          {
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
            v14 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate;
            v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LocEstimate and conformance Proto_Gnss_Emergency_LocEstimate;
          }

          goto LABEL_23;
        }

        if (result == 7)
        {
          v13 = v1;
          swift_beginAccess();
          type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
          v14 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate;
          v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityEstimate and conformance Proto_Gnss_Emergency_VelocityEstimate;
LABEL_23:
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(v15, v14);
          v1 = v13;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_24;
        }

        if (result != 8)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (result > 2)
        {
          v13 = v1;
          if (result == 3)
          {
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
            v14 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo;
            v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionInfo and conformance Proto_Gnss_Emergency_SessionInfo;
          }

          else
          {
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
            v14 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo;
            v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LocationInfo and conformance Proto_Gnss_Emergency_LocationInfo;
          }

          goto LABEL_23;
        }

        if (result == 1)
        {
          swift_beginAccess();
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_ErrorCodes and conformance Proto_Gnss_Emergency_ErrorCodes();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_24;
        }

        if (result != 2)
        {
          goto LABEL_25;
        }
      }

      swift_beginAccess();
      dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
LABEL_24:
      swift_endAccess();
LABEL_25:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_PositionReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20));
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
    dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  closure #3 in closure #1 in Proto_Gnss_Emergency_PositionReport.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #4 in closure #1 in Proto_Gnss_Emergency_PositionReport.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #5 in closure #1 in Proto_Gnss_Emergency_PositionReport.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #6 in closure #1 in Proto_Gnss_Emergency_PositionReport.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #7 in closure #1 in Proto_Gnss_Emergency_PositionReport.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #8 in closure #1 in Proto_Gnss_Emergency_ShapeInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__technologySource, 8, MEMORY[0x277D21848]);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #3 in closure #1 in Proto_Gnss_Emergency_PositionReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
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

uint64_t closure #4 in closure #1 in Proto_Gnss_Emergency_PositionReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LocationInfo and conformance Proto_Gnss_Emergency_LocationInfo, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
}

uint64_t closure #5 in closure #1 in Proto_Gnss_Emergency_PositionReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssLocationInfo and conformance Proto_Gnss_Emergency_GanssLocationInfo, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
}

uint64_t closure #6 in closure #1 in Proto_Gnss_Emergency_PositionReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LocEstimate and conformance Proto_Gnss_Emergency_LocEstimate, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
}

uint64_t closure #7 in closure #1 in Proto_Gnss_Emergency_PositionReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityEstimate and conformance Proto_Gnss_Emergency_VelocityEstimate, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
}

BOOL closure #1 in static Proto_Gnss_Emergency_PositionReport.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  v146 = *(v4 - 8);
  v147 = v4;
  v5 = *(v146 + 64);
  MEMORY[0x28223BE20](v4);
  v142 = &v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSg_ADtMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSg_ADtMR);
  v7 = *(*(v145 - 8) + 64);
  MEMORY[0x28223BE20](v145);
  v9 = &v139 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v143 = &v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v154 = &v139 - v14;
  v15 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  v151 = *(v15 - 8);
  v152 = v15;
  v16 = *(v151 + 64);
  MEMORY[0x28223BE20](v15);
  v144 = &v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSg_ADtMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSg_ADtMR);
  v18 = *(*(v150 - 8) + 64);
  MEMORY[0x28223BE20](v150);
  v153 = &v139 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v148 = &v139 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v160 = &v139 - v24;
  v25 = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v157 = *(v25 - 8);
  v158 = v25;
  v26 = *(v157 + 64);
  MEMORY[0x28223BE20](v25);
  v149 = &v139 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSg_ADtMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSg_ADtMR);
  v28 = *(*(v156 - 8) + 64);
  MEMORY[0x28223BE20](v156);
  v159 = &v139 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v167 = &v139 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v168 = &v139 - v34;
  v35 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v164 = *(v35 - 8);
  v165 = v35;
  v36 = *(v164 + 64);
  MEMORY[0x28223BE20](v35);
  v155 = &v139 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSg_ADtMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSg_ADtMR);
  v38 = *(*(v163 - 8) + 64);
  MEMORY[0x28223BE20](v163);
  v166 = &v139 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40 - 8);
  v161 = &v139 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v169 = &v139 - v44;
  v45 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v170 = *(v45 - 8);
  v46 = *(v170 + 64);
  MEMORY[0x28223BE20](v45);
  v162 = &v139 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSg_ADtMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSg_ADtMR);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v51 = &v139 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v53 = *(*(v52 - 8) + 64);
  v54 = MEMORY[0x28223BE20](v52 - 8);
  v56 = &v139 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v58 = &v139 - v57;
  swift_beginAccess();
  v59 = *(a1 + 16);
  swift_beginAccess();
  v60 = *(a2 + 16);
  if (v59 == 9)
  {
    if (v60 != 9)
    {
      return 0;
    }

LABEL_6:
    swift_beginAccess();
    v62 = *(a1 + 20);
    v141 = a1;
    v63 = *(a1 + 24);
    swift_beginAccess();
    v64 = *(a2 + 24);
    if (v63)
    {
      if (!*(a2 + 24))
      {
        return 0;
      }
    }

    else
    {
      if (v62 != *(a2 + 20))
      {
        v64 = 1;
      }

      if (v64)
      {
        return 0;
      }
    }

    v140 = v9;
    v171 = a2;
    v65 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    v66 = v141;
    swift_beginAccess();
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v66 + v65, v58, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    v67 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    swift_beginAccess();
    v68 = *(v48 + 48);
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v58, v51, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v171 + v67, &v51[v68], &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    v69 = *(v170 + 48);
    if (v69(v51, 1, v45) == 1)
    {

      outlined destroy of Any?(v58, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
      if (v69(&v51[v68], 1, v45) == 1)
      {
        outlined destroy of Any?(v51, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
LABEL_19:
        v75 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
        swift_beginAccess();
        v76 = v169;
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v66 + v75, v169, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
        v77 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
        swift_beginAccess();
        v78 = *(v163 + 48);
        v79 = v166;
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v76, v166, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v171 + v77, v79 + v78, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
        v80 = v165;
        v81 = *(v164 + 48);
        if (v81(v79, 1, v165) == 1)
        {
          outlined destroy of Any?(v76, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
          v82 = v81(v79 + v78, 1, v80);
          v84 = v167;
          v83 = v168;
          if (v82 == 1)
          {
            outlined destroy of Any?(v79, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
            goto LABEL_26;
          }
        }

        else
        {
          v85 = v161;
          outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v79, v161, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
          v86 = v81(v79 + v78, 1, v80);
          v87 = v167;
          v83 = v168;
          if (v86 != 1)
          {
            v88 = v79 + v78;
            v89 = v155;
            outlined init with take of Proto_Gnss_Emergency_SLPAddress(v88, v155, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
            LODWORD(v170) = specialized static Proto_Gnss_Emergency_LocationInfo.== infix(_:_:)(v85, v89);
            outlined destroy of Proto_Gnss_Emergency_SLPAddress(v89, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
            outlined destroy of Any?(v169, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
            outlined destroy of Proto_Gnss_Emergency_SLPAddress(v85, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
            outlined destroy of Any?(v79, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
            v84 = v87;
            if ((v170 & 1) == 0)
            {
              goto LABEL_48;
            }

LABEL_26:
            v90 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
            swift_beginAccess();
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v66 + v90, v83, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
            v91 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
            v92 = v171;
            swift_beginAccess();
            v93 = *(v156 + 48);
            v94 = v83;
            v95 = v83;
            v96 = v159;
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v94, v159, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
            v97 = v96;
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v92 + v91, v96 + v93, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
            v98 = v158;
            v99 = *(v157 + 48);
            if (v99(v96, 1, v158) == 1)
            {
              outlined destroy of Any?(v95, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
              v100 = v99(v96 + v93, 1, v98);
              v101 = v160;
              if (v100 == 1)
              {
                outlined destroy of Any?(v96, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
LABEL_33:
                v106 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
                swift_beginAccess();
                outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v66 + v106, v101, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
                v107 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
                v108 = v101;
                v109 = v171;
                swift_beginAccess();
                v110 = *(v150 + 48);
                v111 = v153;
                outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v108, v153, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
                v97 = v111;
                outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v109 + v107, v111 + v110, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
                v112 = v152;
                v113 = *(v151 + 48);
                if (v113(v111, 1, v152) == 1)
                {
                  outlined destroy of Any?(v108, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
                  v114 = v113(v111 + v110, 1, v112);
                  v115 = v154;
                  if (v114 == 1)
                  {
                    outlined destroy of Any?(v111, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
LABEL_40:
                    v121 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
                    swift_beginAccess();
                    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v66 + v121, v115, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
                    v122 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
                    v123 = v171;
                    swift_beginAccess();
                    v124 = *(v145 + 48);
                    v125 = v140;
                    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v115, v140, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
                    v97 = v125;
                    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v123 + v122, v125 + v124, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
                    v126 = v147;
                    v127 = *(v146 + 48);
                    if (v127(v125, 1, v147) == 1)
                    {
                      outlined destroy of Any?(v115, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
                      if (v127(v125 + v124, 1, v126) == 1)
                      {
                        outlined destroy of Any?(v125, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
LABEL_52:
                        v132 = (v66 + OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__technologySource);
                        swift_beginAccess();
                        v133 = *v132;
                        v134 = *(v132 + 4);

                        v135 = (v171 + OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__technologySource);
                        swift_beginAccess();
                        v136 = *v135;
                        v137 = *(v135 + 4);

                        if ((v134 & 1) == 0)
                        {
                          if (v133 == v136)
                          {
                            v138 = v137;
                          }

                          else
                          {
                            v138 = 1;
                          }

                          return (v138 & 1) == 0;
                        }

                        return v137 != 0;
                      }

                      goto LABEL_45;
                    }

                    v128 = v143;
                    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v125, v143, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
                    if (v127(v125 + v124, 1, v126) == 1)
                    {
                      outlined destroy of Any?(v154, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
                      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v128, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
LABEL_45:
                      v70 = &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSg_ADtMd;
                      v71 = &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSg_ADtMR;
                      goto LABEL_46;
                    }

                    v129 = v125 + v124;
                    v130 = v142;
                    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v129, v142, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
                    v131 = specialized static Proto_Gnss_Emergency_VelocityEstimate.== infix(_:_:)(v128, v130);
                    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v130, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
                    outlined destroy of Any?(v154, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
                    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v128, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
                    outlined destroy of Any?(v125, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
                    if (v131)
                    {
                      goto LABEL_52;
                    }

LABEL_48:

                    return 0;
                  }
                }

                else
                {
                  v116 = v148;
                  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v111, v148, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
                  v117 = v113(v111 + v110, 1, v112);
                  v115 = v154;
                  if (v117 != 1)
                  {
                    v118 = v111 + v110;
                    v119 = v144;
                    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v118, v144, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
                    v120 = specialized static Proto_Gnss_Emergency_LocEstimate.== infix(_:_:)(v116, v119);
                    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v119, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
                    outlined destroy of Any?(v160, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
                    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v116, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
                    outlined destroy of Any?(v111, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
                    if ((v120 & 1) == 0)
                    {
                      goto LABEL_48;
                    }

                    goto LABEL_40;
                  }

                  outlined destroy of Any?(v160, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
                  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v116, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
                }

                v70 = &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSg_ADtMd;
                v71 = &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSg_ADtMR;
LABEL_46:
                v72 = v97;
                goto LABEL_47;
              }
            }

            else
            {
              outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v96, v84, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
              v102 = v99(v96 + v93, 1, v98);
              v101 = v160;
              if (v102 != 1)
              {
                v103 = v96 + v93;
                v104 = v149;
                outlined init with take of Proto_Gnss_Emergency_SLPAddress(v103, v149, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
                v105 = specialized static Proto_Gnss_Emergency_GanssLocationInfo.== infix(_:_:)(v84, v104);
                outlined destroy of Proto_Gnss_Emergency_SLPAddress(v104, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
                outlined destroy of Any?(v168, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
                outlined destroy of Proto_Gnss_Emergency_SLPAddress(v84, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
                outlined destroy of Any?(v96, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
                if ((v105 & 1) == 0)
                {
                  goto LABEL_48;
                }

                goto LABEL_33;
              }

              outlined destroy of Any?(v168, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
              outlined destroy of Proto_Gnss_Emergency_SLPAddress(v84, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
            }

            v70 = &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSg_ADtMd;
            v71 = &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSg_ADtMR;
            goto LABEL_46;
          }

          outlined destroy of Any?(v169, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
          outlined destroy of Proto_Gnss_Emergency_SLPAddress(v85, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
        }

        v70 = &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSg_ADtMd;
        v71 = &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSg_ADtMR;
        v72 = v79;
LABEL_47:
        outlined destroy of Any?(v72, v70, v71);
        goto LABEL_48;
      }
    }

    else
    {
      outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v51, v56, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
      if (v69(&v51[v68], 1, v45) != 1)
      {
        v73 = v162;
        outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v51[v68], v162, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        v66 = v141;

        v74 = specialized static Proto_Gnss_Emergency_SessionInfo.== infix(_:_:)(v56, v73);
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v73, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        outlined destroy of Any?(v58, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v56, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        outlined destroy of Any?(v51, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
        if ((v74 & 1) == 0)
        {
          goto LABEL_48;
        }

        goto LABEL_19;
      }

      outlined destroy of Any?(v58, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v56, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    }

    v70 = &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSg_ADtMd;
    v71 = &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSg_ADtMR;
    v72 = v51;
    goto LABEL_47;
  }

  result = 0;
  if (v60 != 9 && v59 == v60)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_PositionReport(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionReport and conformance Proto_Gnss_Emergency_PositionReport, type metadata accessor for Proto_Gnss_Emergency_PositionReport);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_PositionReport(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionReport and conformance Proto_Gnss_Emergency_PositionReport, type metadata accessor for Proto_Gnss_Emergency_PositionReport);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_PositionReport(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionReport and conformance Proto_Gnss_Emergency_PositionReport, type metadata accessor for Proto_Gnss_Emergency_PositionReport);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GanssMeasurementElement.decodeMessage<A>(decoder:)()
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
          v4 = v0;
          if (result == 3)
          {
            v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 28);
          }

          else
          {
            v7 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 32);
          }

          goto LABEL_5;
        }

        if (result == 1)
        {
          v9 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 20);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }

        else if (result == 2)
        {
          v4 = v0;
          v6 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 24);
          goto LABEL_5;
        }
      }

      else if (result <= 6)
      {
        if (result != 5)
        {
          v4 = v0;
          v8 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 40);
          goto LABEL_5;
        }

        v11 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 36);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_MultipathIndicator and conformance Proto_Gnss_Emergency_MultipathIndicator();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else
      {
        switch(result)
        {
          case 7:
            v4 = v0;
            v10 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 44);
            goto LABEL_5;
          case 8:
            v4 = v0;
            v12 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 48);
            goto LABEL_5;
          case 9:
            v4 = v0;
            v5 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 52);
LABEL_5:
            v0 = v4;
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurementElement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
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
    result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
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

  closure #5 in Proto_Gnss_Emergency_GanssMeasurementElement.traverse<A>(visitor:)(v5);
  closure #6 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement);
  closure #7 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement);
  closure #8 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement);
  closure #9 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement, MEMORY[0x277D21860]);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #5 in Proto_Gnss_Emergency_GanssMeasurementElement.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  if (*(a1 + *(result + 36)) != 6)
  {
    v3 = *(a1 + *(result + 36));
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_MultipathIndicator and conformance Proto_Gnss_Emergency_MultipathIndicator();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_GanssMeasurementElement@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  *(a2 + a1[9]) = 6;
  v12 = a2 + v11;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1[12];
  v14 = a2 + a1[11];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a2 + v13;
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a2 + a1[13];
  *v16 = 0;
  *(v16 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GanssMeasurementElement(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssMeasurementElement and conformance Proto_Gnss_Emergency_GanssMeasurementElement, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GanssMeasurementElement(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssMeasurementElement and conformance Proto_Gnss_Emergency_GanssMeasurementElement, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GanssMeasurementElement(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssMeasurementElement and conformance Proto_Gnss_Emergency_GanssMeasurementElement, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GanssSignalMeasurementInfo.decodeMessage<A>(decoder:)()
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
          v4 = *(type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0) + 32);
LABEL_5:
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_6;
        }

        if (result == 4)
        {
          type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssMeasurementElement and conformance Proto_Gnss_Emergency_GanssMeasurementElement, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          v3 = v0;
          v6 = *(type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0) + 24);
          goto LABEL_5;
        }

        if (result == 2)
        {
          v3 = v0;
          v5 = *(type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0) + 28);
          goto LABEL_5;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GanssSignalMeasurementInfo.traverse<A>(visitor:)()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
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

  v6 = (v0 + v3[7]);
  if ((v6[1] & 1) == 0)
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v8 = (v0 + v3[8]);
  if ((v8[1] & 1) == 0)
  {
    v9 = *v8;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if (*(*v0 + 16))
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssMeasurementElement and conformance Proto_Gnss_Emergency_GanssMeasurementElement, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  v10 = v0 + v3[5];
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_GanssSignalMeasurementInfo@<X0>(int *a1@<X0>, void *a2@<X8>)
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
  v9 = a2 + a1[8];
  *v9 = 0;
  v9[4] = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GanssSignalMeasurementInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssSignalMeasurementInfo and conformance Proto_Gnss_Emergency_GanssSignalMeasurementInfo, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GanssSignalMeasurementInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssSignalMeasurementInfo and conformance Proto_Gnss_Emergency_GanssSignalMeasurementInfo, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GanssSignalMeasurementInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssSignalMeasurementInfo and conformance Proto_Gnss_Emergency_GanssSignalMeasurementInfo, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0) + 20);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_GanssId and conformance Proto_Gnss_Emergency_GanssId();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        v4 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0) + 24);
        type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssSignalMeasurementInfo and conformance Proto_Gnss_Emergency_GanssSignalMeasurementInfo, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  if (*(v5 + *(result + 20)) == 7)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v10 = *(v5 + *(result + 20));
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_GanssId and conformance Proto_Gnss_Emergency_GanssId();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  closure #2 in Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #2 in Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMd, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 24), v8, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMd, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMd, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssSignalMeasurementInfo and conformance Proto_Gnss_Emergency_GanssSignalMeasurementInfo, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss and conformance Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss and conformance Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss and conformance Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GanssMeasurements.decodeMessage<A>(decoder:)()
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
            v13 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 36);
            goto LABEL_5;
          }

          v6 = v0;
          v7 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 40);
          type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
          v8 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams;
          v9 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssTimeMeasuredParams and conformance Proto_Gnss_Emergency_GanssTimeMeasuredParams;
          goto LABEL_21;
        }

        if (result == 7)
        {
          v3 = v0;
          v4 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 44);
LABEL_5:
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_6;
        }

        if (result == 8)
        {
          v6 = v0;
          v11 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 48);
          type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
          v8 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss;
          v9 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss and conformance Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss;
LABEL_21:
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(v9, v8);
          v0 = v6;
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
            v14 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 28);
          }

          else
          {
            v10 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 32);
          }

          goto LABEL_5;
        }

        if (result == 1)
        {
          v12 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 20);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_GnssTimeId and conformance Proto_Gnss_Emergency_GnssTimeId();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }

        else if (result == 2)
        {
          v3 = v0;
          v5 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 24);
          goto LABEL_5;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurements.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  v10 = result;
  if (*(v5 + *(result + 20)) == 6)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v17 = *(v5 + *(result + 20));
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_GnssTimeId and conformance Proto_Gnss_Emergency_GnssTimeId();
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
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v13 = (v5 + v10[7]);
  if ((v13[1] & 1) == 0)
  {
    v14 = *v13;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v15 = (v5 + v10[8]);
  if ((v15[1] & 1) == 0)
  {
    v16 = *v15;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #5 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements, MEMORY[0x277D21860]);
  closure #6 in Proto_Gnss_Emergency_GanssMeasurements.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #7 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
  closure #8 in Proto_Gnss_Emergency_GanssMeasurements.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #6 in Proto_Gnss_Emergency_GanssMeasurements.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMd, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 40), v8, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMd, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMd, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssTimeMeasuredParams and conformance Proto_Gnss_Emergency_GanssTimeMeasuredParams, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams);
}

uint64_t closure #8 in Proto_Gnss_Emergency_GanssMeasurements.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMd, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 48), v8, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMd, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMd, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss and conformance Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss);
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_GanssMeasurements@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  *(a2 + a1[5]) = 6;
  v5 = a2 + v4;
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1[8];
  v7 = a2 + a1[7];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a2 + v6;
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a1[10];
  v10 = a2 + a1[9];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
  (*(*(v11 - 8) + 56))(a2 + v9, 1, 1, v11);
  v12 = a1[11];
  v13 = a1[12];
  v14 = a2 + v12;
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  v16 = *(*(v15 - 8) + 56);

  return v16(a2 + v13, 1, 1, v15);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GanssMeasurements(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssMeasurements and conformance Proto_Gnss_Emergency_GanssMeasurements, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GanssMeasurements(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssMeasurements and conformance Proto_Gnss_Emergency_GanssMeasurements, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GanssMeasurements(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssMeasurements and conformance Proto_Gnss_Emergency_GanssMeasurements, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GpsMeasurementElement.decodeMessage<A>(decoder:)()
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
          v4 = v0;
          if (result == 3)
          {
            v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 28);
          }

          else
          {
            v7 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 32);
          }

          goto LABEL_5;
        }

        if (result == 1)
        {
          v9 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 20);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }

        else if (result == 2)
        {
          v4 = v0;
          v6 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 24);
          goto LABEL_5;
        }
      }

      else
      {
        if (result <= 6)
        {
          v4 = v0;
          if (result == 5)
          {
            v11 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 36);
          }

          else
          {
            v8 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 40);
          }

          goto LABEL_5;
        }

        switch(result)
        {
          case 7:
            v10 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 44);
            lazy protocol witness table accessor for type Proto_Gnss_Emergency_MultipathIndicator and conformance Proto_Gnss_Emergency_MultipathIndicator();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 8:
            v4 = v0;
            v12 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 48);
            goto LABEL_5;
          case 9:
            v4 = v0;
            v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 52);
LABEL_5:
            v0 = v4;
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GpsMeasurementElement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
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
    result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
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

  closure #5 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement, MEMORY[0x277D21860]);
  closure #6 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement);
  closure #7 in Proto_Gnss_Emergency_GpsMeasurementElement.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement, lazy protocol witness table accessor for type Proto_Gnss_Emergency_MultipathIndicator and conformance Proto_Gnss_Emergency_MultipathIndicator);
  closure #8 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement);
  closure #9 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement, MEMORY[0x277D21860]);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_GpsMeasurementElement@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  *(a2 + a1[11]) = 6;
  v15 = a2 + v14;
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a2 + a1[13];
  *v16 = 0;
  *(v16 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GpsMeasurementElement(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsMeasurementElement and conformance Proto_Gnss_Emergency_GpsMeasurementElement, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GpsMeasurementElement(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsMeasurementElement and conformance Proto_Gnss_Emergency_GpsMeasurementElement, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GpsMeasurementElement(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsMeasurementElement and conformance Proto_Gnss_Emergency_GpsMeasurementElement, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = &v31 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v32 = &v31 - v8;
  *(v1 + 16) = 0;
  *(v1 + 20) = 1;
  *(v1 + 24) = 0;
  *(v1 + 28) = 1;
  *(v1 + 32) = 0;
  *(v1 + 36) = 1;
  *(v1 + 40) = 0;
  v9 = MEMORY[0x277D84F90];
  *(v1 + 44) = 1;
  *(v1 + 48) = v9;
  v10 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  v31 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  v11 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  v12 = v1 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__codePhaseAmbiguity;
  v33 = v1 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__codePhaseAmbiguity;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = v1 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTodpresent;
  v34 = v1 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTodpresent;
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  v35 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  v15 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  swift_beginAccess();
  v16 = *(a1 + 16);
  LOBYTE(v14) = *(a1 + 20);
  swift_beginAccess();
  *(v1 + 16) = v16;
  *(v1 + 20) = v14;
  swift_beginAccess();
  LODWORD(v14) = *(a1 + 24);
  LOBYTE(v16) = *(a1 + 28);
  swift_beginAccess();
  *(v1 + 24) = v14;
  *(v1 + 28) = v16;
  swift_beginAccess();
  LODWORD(v14) = *(a1 + 32);
  v17 = *(a1 + 36);
  swift_beginAccess();
  *(v1 + 32) = v14;
  *(v1 + 36) = v17;
  swift_beginAccess();
  LODWORD(v14) = *(a1 + 40);
  v18 = *(a1 + 44);
  swift_beginAccess();
  *(v1 + 40) = v14;
  *(v1 + 44) = v18;
  swift_beginAccess();
  v19 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 48) = v19;
  v20 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  swift_beginAccess();
  v21 = v32;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v20, v32, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  v22 = v31;
  swift_beginAccess();

  outlined assign with take of Proto_Gpsd_Response?(v21, v1 + v22, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  swift_endAccess();
  v23 = a1 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__codePhaseAmbiguity;
  swift_beginAccess();
  LODWORD(v20) = *v23;
  LOBYTE(v23) = *(v23 + 4);
  v24 = v33;
  swift_beginAccess();
  *v24 = v20;
  *(v24 + 4) = v23;
  v25 = a1 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTodpresent;
  swift_beginAccess();
  LODWORD(v23) = *v25;
  LOBYTE(v25) = *(v25 + 4);
  v26 = v34;
  swift_beginAccess();
  *v26 = v23;
  *(v26 + 4) = v25;
  v27 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  swift_beginAccess();
  v28 = v36;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v27, v36, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);

  v29 = v35;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v28, v1 + v29, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  swift_endAccess();
  return v1;
}

uint64_t Proto_Gnss_Emergency_GpsMeasurements._StorageClass.__deallocating_deinit()
{
  v1 = v0[6];

  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

uint64_t Proto_Gnss_Emergency_GpsMeasurements.decodeMessage<A>(decoder:)()
{
  v2 = v0;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v6);
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

      if (result > 4)
      {
        break;
      }

      if (result > 2 || result == 1 || result == 2)
      {
        goto LABEL_23;
      }

LABEL_25:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result <= 6)
    {
      if (result == 5)
      {
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsMeasurementElement and conformance Proto_Gnss_Emergency_GpsMeasurementElement, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        goto LABEL_24;
      }

      v13 = v1;
      swift_beginAccess();
      type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
      v14 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams;
      v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTimeMeasuredParams and conformance Proto_Gnss_Emergency_GpsTimeMeasuredParams;
    }

    else
    {
      if (result == 7 || result == 8)
      {
LABEL_23:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        goto LABEL_24;
      }

      if (result != 9)
      {
        goto LABEL_25;
      }

      v13 = v1;
      swift_beginAccess();
      type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
      v14 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD;
      v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTOD and conformance Proto_Gnss_Emergency_GpsTOD;
    }

    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(v15, v14);
    v1 = v13;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_24:
    swift_endAccess();
    goto LABEL_25;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GpsMeasurements.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20));
  result = swift_beginAccess();
  if ((*(v9 + 20) & 1) == 0)
  {
    v11 = *(v9 + 16);
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if (!v4)
  {
    swift_beginAccess();
    if ((*(v9 + 28) & 1) == 0)
    {
      v12 = *(v9 + 24);
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
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

    swift_beginAccess();
    if (*(*(v9 + 48) + 16))
    {
      type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsMeasurementElement and conformance Proto_Gnss_Emergency_GpsMeasurementElement, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    closure #5 in closure #1 in Proto_Gnss_Emergency_GpsMeasurements.traverse<A>(visitor:)(v9, a1, a2, a3);
    v15 = (v9 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__codePhaseAmbiguity);
    swift_beginAccess();
    if ((v15[1] & 1) == 0)
    {
      v16 = *v15;
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    closure #8 in closure #1 in Proto_Gnss_Emergency_ShapeInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTodpresent, 8, MEMORY[0x277D21860]);
    closure #8 in closure #1 in Proto_Gnss_Emergency_GpsMeasurements.traverse<A>(visitor:)(v9, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #5 in closure #1 in Proto_Gnss_Emergency_GpsMeasurements.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTimeMeasuredParams and conformance Proto_Gnss_Emergency_GpsTimeMeasuredParams, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
}

uint64_t closure #8 in closure #1 in Proto_Gnss_Emergency_GpsMeasurements.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTOD and conformance Proto_Gnss_Emergency_GpsTOD, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
}

BOOL closure #1 in static Proto_Gnss_Emergency_GpsMeasurements.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v73 = *(v4 - 8);
  v74 = v4;
  v5 = *(v73 + 64);
  MEMORY[0x28223BE20](v4);
  v71 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSg_ADtMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSg_ADtMR);
  v7 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v75 = &v69 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v76 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v77 = &v69 - v13;
  v14 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  v78 = *(v14 - 8);
  v15 = *(v78 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSg_ADtMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSg_ADtMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v79 = &v69 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v69 - v26;
  swift_beginAccess();
  v28 = *(a1 + 16);
  v29 = *(a1 + 20);
  swift_beginAccess();
  v30 = *(a2 + 20);
  if (v29)
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (v28 != *(a2 + 16))
    {
      v30 = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v31 = *(a1 + 24);
  v32 = *(a1 + 28);
  swift_beginAccess();
  v33 = *(a2 + 28);
  if (v32)
  {
    if (!*(a2 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (v31 != *(a2 + 24))
    {
      v33 = 1;
    }

    if (v33)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v34 = *(a1 + 32);
  v35 = *(a1 + 36);
  swift_beginAccess();
  v36 = *(a2 + 36);
  if (v35)
  {
    if (!*(a2 + 36))
    {
      return 0;
    }
  }

  else
  {
    if (v34 != *(a2 + 32))
    {
      v36 = 1;
    }

    if (v36)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v37 = *(a1 + 40);
  v38 = *(a1 + 44);
  swift_beginAccess();
  v39 = *(a2 + 44);
  if (v38)
  {
    if (!*(a2 + 44))
    {
      return 0;
    }
  }

  else
  {
    if (v37 != *(a2 + 40))
    {
      v39 = 1;
    }

    if (v39)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v40 = *(a1 + 48);
  swift_beginAccess();
  v41 = *(a2 + 48);

  LODWORD(v70) = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf43Proto_Gnss_Emergency_WlanMeasurementElementV_Tt1g5Tm(v40, v41, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement, specialized static Proto_Gnss_Emergency_GpsMeasurementElement.== infix(_:_:));

  if ((v70 & 1) == 0)
  {
    goto LABEL_32;
  }

  v42 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v42, v27, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  v43 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  swift_beginAccess();
  v44 = *(v18 + 48);
  v45 = v79;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v27, v79, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  v70 = v44;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v43, v45 + v44, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  v46 = *(v78 + 48);
  if (v46(v45, 1, v14) == 1)
  {
    outlined destroy of Any?(v27, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
    if (v46(v45 + v70, 1, v14) == 1)
    {
      outlined destroy of Any?(v45, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
      goto LABEL_35;
    }

LABEL_31:
    outlined destroy of Any?(v45, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSg_ADtMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSg_ADtMR);
    goto LABEL_32;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v45, v25, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  if (v46(v45 + v70, 1, v14) == 1)
  {
    outlined destroy of Any?(v27, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v25, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
    goto LABEL_31;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v45 + v70, v17, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
  v48 = specialized static Proto_Gnss_Emergency_GpsTimeMeasuredParams.== infix(_:_:)(v25, v17);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v17, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
  outlined destroy of Any?(v27, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v25, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
  outlined destroy of Any?(v45, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  if ((v48 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_35:
  v49 = (a1 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__codePhaseAmbiguity);
  swift_beginAccess();
  v50 = *v49;
  v51 = *(v49 + 4);
  v52 = a2 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__codePhaseAmbiguity;
  swift_beginAccess();
  v53 = *(v52 + 4);
  if (v51)
  {
    v54 = v76;
    v55 = v77;
    if ((*(v52 + 4) & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v54 = v76;
    v55 = v77;
    if ((*(v52 + 4) & 1) != 0 || v50 != *v52)
    {
      goto LABEL_32;
    }
  }

  v56 = (a1 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTodpresent);
  swift_beginAccess();
  v57 = *v56;
  v58 = *(v56 + 4);
  v59 = a2 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTodpresent;
  swift_beginAccess();
  v60 = *(v59 + 4);
  if (v58)
  {
    if (*(v59 + 4))
    {
      goto LABEL_45;
    }

LABEL_32:

    return 0;
  }

  if ((*(v59 + 4) & 1) != 0 || v57 != *v59)
  {
    goto LABEL_32;
  }

LABEL_45:
  v61 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v61, v55, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  v62 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  swift_beginAccess();
  v63 = *(v72 + 48);
  v64 = v75;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v55, v75, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v62, v64 + v63, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  v65 = v74;
  v66 = *(v73 + 48);
  if (v66(v64, 1, v74) != 1)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v64, v54, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
    if (v66(v64 + v63, 1, v65) == 1)
    {

      outlined destroy of Any?(v77, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v54, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
      goto LABEL_50;
    }

    v67 = v71;
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v64 + v63, v71, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
    v68 = specialized static Proto_Gnss_Emergency_HorizWithUncertaintyVelocity.== infix(_:_:)(v54, v67, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);

    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v67, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
    outlined destroy of Any?(v77, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v54, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
    outlined destroy of Any?(v64, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
    return (v68 & 1) != 0;
  }

  outlined destroy of Any?(v55, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  if (v66(v64 + v63, 1, v65) != 1)
  {
LABEL_50:
    outlined destroy of Any?(v64, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSg_ADtMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSg_ADtMR);
    return 0;
  }

  outlined destroy of Any?(v64, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  return 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GpsMeasurements(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsMeasurements and conformance Proto_Gnss_Emergency_GpsMeasurements, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GpsMeasurements(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsMeasurements and conformance Proto_Gnss_Emergency_GpsMeasurements, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GpsMeasurements(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsMeasurements and conformance Proto_Gnss_Emergency_GpsMeasurements, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_MeasurementReport._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t Proto_Gnss_Emergency_MeasurementReport.decodeMessage<A>(decoder:)()
{
  v2 = v0;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_MeasurementReport._StorageClass.init(copying:)(v6);

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
        if (result != 1)
        {
          if (result == 2)
          {
            goto LABEL_20;
          }

          if (result != 3)
          {
            goto LABEL_22;
          }

          v13 = v1;
          swift_beginAccess();
          type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
          v14 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo;
          v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionInfo and conformance Proto_Gnss_Emergency_SessionInfo;
          goto LABEL_19;
        }

        swift_beginAccess();
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_ErrorCodes and conformance Proto_Gnss_Emergency_ErrorCodes();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else
      {
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
            type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
            v14 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements;
            v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssMeasurements and conformance Proto_Gnss_Emergency_GanssMeasurements;
          }

LABEL_19:
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(v15, v14);
          v1 = v13;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_21;
        }

        if (result == 6)
        {
LABEL_20:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_21;
        }

        if (result != 7)
        {
          goto LABEL_22;
        }

        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

LABEL_21:
      swift_endAccess();
LABEL_22:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_MeasurementReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20));
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

  closure #3 in closure #1 in Proto_Gnss_Emergency_MeasurementReport.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #4 in closure #1 in Proto_Gnss_Emergency_MeasurementReport.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #5 in closure #1 in Proto_Gnss_Emergency_MeasurementReport.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #8 in closure #1 in Proto_Gnss_Emergency_ShapeInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__moreGanssMeasurements, 6, MEMORY[0x277D21860]);
  closure #7 in closure #1 in Proto_Gnss_Emergency_MeasurementReport.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #3 in closure #1 in Proto_Gnss_Emergency_MeasurementReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
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

uint64_t closure #4 in closure #1 in Proto_Gnss_Emergency_MeasurementReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
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

uint64_t closure #5 in closure #1 in Proto_Gnss_Emergency_MeasurementReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssMeasurements and conformance Proto_Gnss_Emergency_GanssMeasurements, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
}

uint64_t closure #8 in closure #1 in Proto_Gnss_Emergency_ShapeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t (*a7)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = (a1 + *a5);
  result = swift_beginAccess();
  if ((v11[1] & 1) == 0)
  {
    return a7(*v11, a6, a3, a4);
  }

  return result;
}

BOOL closure #1 in static Proto_Gnss_Emergency_MeasurementReport.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  v108 = *(v4 - 8);
  v109 = v4;
  v5 = *(v108 + 64);
  MEMORY[0x28223BE20](v4);
  v104 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSg_ADtMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSg_ADtMR);
  v7 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107);
  v9 = &v101 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v105 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v116 = &v101 - v14;
  v15 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  v113 = *(v15 - 8);
  v114 = v15;
  v16 = *(v113 + 64);
  MEMORY[0x28223BE20](v15);
  v106 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSg_ADtMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSg_ADtMR);
  v18 = *(*(v112 - 8) + 64);
  MEMORY[0x28223BE20](v112);
  v115 = &v101 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v110 = &v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v118 = &v101 - v24;
  v25 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v119 = *(v25 - 8);
  v26 = *(v119 + 64);
  MEMORY[0x28223BE20](v25);
  v111 = &v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSg_ADtMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSg_ADtMR);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v101 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v36 = &v101 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v38 = &v101 - v37;
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
    v103 = a1;
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

    v102 = v9;
    v117 = a2;
    v45 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    v46 = v103;
    swift_beginAccess();
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v46 + v45, v38, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    v47 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    swift_beginAccess();
    v48 = *(v28 + 48);
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v38, v31, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    v49 = v117 + v47;
    v50 = v117;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v49, &v31[v48], &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    v51 = *(v119 + 48);
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
        v52 = v111;
        outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v31[v48], v111, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        v46 = v103;

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
        v55 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
        swift_beginAccess();
        v56 = v118;
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v46 + v55, v118, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
        v57 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
        swift_beginAccess();
        v58 = *(v112 + 48);
        v59 = v115;
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v56, v115, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v54 + v57, v59 + v58, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
        v60 = v114;
        v61 = *(v113 + 48);
        if (v61(v59, 1, v114) == 1)
        {
          outlined destroy of Any?(v56, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
          v62 = v61(v59 + v58, 1, v60);
          v63 = v116;
          if (v62 == 1)
          {
            outlined destroy of Any?(v59, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
LABEL_29:
            v77 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
            swift_beginAccess();
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v46 + v77, v63, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
            v78 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
            v79 = v117;
            swift_beginAccess();
            v80 = *(v107 + 48);
            v81 = v102;
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v63, v102, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
            v82 = v79 + v78;
            v83 = v81;
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v82, v81 + v80, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
            v84 = v109;
            v85 = *(v108 + 48);
            if (v85(v81, 1, v109) == 1)
            {
              outlined destroy of Any?(v63, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
              if (v85(v81 + v80, 1, v84) == 1)
              {
                outlined destroy of Any?(v81, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
LABEL_36:
                v91 = (v46 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__moreGanssMeasurements);
                swift_beginAccess();
                v92 = *v91;
                v93 = *(v91 + 4);
                v94 = v117;
                v95 = v117 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__moreGanssMeasurements;
                swift_beginAccess();
                v96 = *(v95 + 4);
                if (v93)
                {
                  if (*(v95 + 4))
                  {
LABEL_46:
                    v97 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime;
                    swift_beginAccess();
                    v98 = *(v46 + v97);

                    v99 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime;
                    swift_beginAccess();
                    v100 = *(v94 + v99);

                    if (v98 != 2)
                    {
                      return v100 != 2 && ((v98 ^ v100) & 1) == 0;
                    }

                    return v100 == 2;
                  }
                }

                else if ((*(v95 + 4) & 1) == 0 && v92 == *v95)
                {
                  goto LABEL_46;
                }

LABEL_41:

                return 0;
              }
            }

            else
            {
              v86 = v81;
              v87 = v105;
              outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v86, v105, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
              if (v85(v83 + v80, 1, v84) != 1)
              {
                v88 = v83 + v80;
                v89 = v104;
                outlined init with take of Proto_Gnss_Emergency_SLPAddress(v88, v104, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
                v90 = specialized static Proto_Gnss_Emergency_GanssMeasurements.== infix(_:_:)(v87, v89);
                outlined destroy of Proto_Gnss_Emergency_SLPAddress(v89, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
                outlined destroy of Any?(v63, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
                outlined destroy of Proto_Gnss_Emergency_SLPAddress(v87, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
                outlined destroy of Any?(v83, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
                if ((v90 & 1) == 0)
                {
                  goto LABEL_41;
                }

                goto LABEL_36;
              }

              outlined destroy of Any?(v63, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
              outlined destroy of Proto_Gnss_Emergency_SLPAddress(v87, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
            }

            v66 = &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSg_ADtMd;
            v67 = &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSg_ADtMR;
            v68 = v83;
LABEL_40:
            outlined destroy of Any?(v68, v66, v67);
            goto LABEL_41;
          }
        }

        else
        {
          v64 = v110;
          outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v59, v110, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
          v65 = v61(v59 + v58, 1, v60);
          v63 = v116;
          if (v65 != 1)
          {
            v69 = v59 + v58;
            v70 = v106;
            outlined init with take of Proto_Gnss_Emergency_SLPAddress(v69, v106, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
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
                outlined destroy of Any?(v118, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
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
            outlined destroy of Any?(v118, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
            outlined destroy of Proto_Gnss_Emergency_SLPAddress(v64, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
            outlined destroy of Any?(v59, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
            if ((v76 & 1) == 0)
            {
              goto LABEL_41;
            }

            goto LABEL_29;
          }

          outlined destroy of Any?(v118, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
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

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_MeasurementReport(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementReport and conformance Proto_Gnss_Emergency_MeasurementReport, type metadata accessor for Proto_Gnss_Emergency_MeasurementReport);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_MeasurementReport(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementReport and conformance Proto_Gnss_Emergency_MeasurementReport, type metadata accessor for Proto_Gnss_Emergency_MeasurementReport);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_MeasurementReport(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementReport and conformance Proto_Gnss_Emergency_MeasurementReport, type metadata accessor for Proto_Gnss_Emergency_MeasurementReport);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GpsAssistanceRequest.decodeMessage<A>(decoder:)()
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
          v1 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0) + 28);
          goto LABEL_3;
        case 2:
          v7 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0) + 32);
LABEL_3:
          v0 = 0;
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 3:
          v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0) + 36);
          goto LABEL_3;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        goto LABEL_18;
      }

      if (result == 7)
      {
        v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0) + 44);
        goto LABEL_3;
      }
    }

    else
    {
      if (result == 4)
      {
        v6 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0) + 40);
        goto LABEL_3;
      }

LABEL_18:
      dispatch thunk of Decoder.decodeRepeatedUInt32Field(value:)();
    }
  }
}

uint64_t Proto_Gnss_Emergency_GpsAssistanceRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
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

  if (*(*v3 + 16))
  {
    dispatch thunk of Visitor.visitRepeatedUInt32Field(value:fieldNumber:)();
  }

  if (*(v3[1] + 16))
  {
    dispatch thunk of Visitor.visitRepeatedUInt32Field(value:fieldNumber:)();
  }

  closure #7 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
  v18 = v3 + v9[6];
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GpsAssistanceRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsAssistanceRequest and conformance Proto_Gnss_Emergency_GpsAssistanceRequest, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GpsAssistanceRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsAssistanceRequest and conformance Proto_Gnss_Emergency_GpsAssistanceRequest, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GpsAssistanceRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsAssistanceRequest and conformance Proto_Gnss_Emergency_GpsAssistanceRequest, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GanssTimeModelElem(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssTimeModelElem and conformance Proto_Gnss_Emergency_GanssTimeModelElem, type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GanssTimeModelElem(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssTimeModelElem and conformance Proto_Gnss_Emergency_GanssTimeModelElem, type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GanssTimeModelElem(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssTimeModelElem and conformance Proto_Gnss_Emergency_GanssTimeModelElem, type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GanssDataBitAssist.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          v1 = *(type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0) + 36);
          goto LABEL_3;
        case 5:
          v7 = *(type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0) + 40);
LABEL_3:
          v0 = 0;
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 6:
          dispatch thunk of Decoder.decodeRepeatedUInt32Field(value:)();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          v5 = *(type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0) + 24);
          goto LABEL_3;
        case 2:
          v6 = *(type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0) + 28);
          goto LABEL_3;
        case 3:
          v4 = *(type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0) + 32);
          goto LABEL_3;
      }
    }
  }
}

uint64_t Proto_Gnss_Emergency_GanssDataBitAssist.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
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

  closure #6 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
  if (*(*v3 + 16))
  {
    dispatch thunk of Visitor.visitRepeatedUInt32Field(value:fieldNumber:)();
  }

  v18 = v3 + v9[5];
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_GanssDataBitAssist@<X0>(int *a1@<X0>, void *a2@<X8>)
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
  v12 = a2 + a1[10];
  *v12 = 0;
  v12[4] = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GanssDataBitAssist(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssDataBitAssist and conformance Proto_Gnss_Emergency_GanssDataBitAssist, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GanssDataBitAssist(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssDataBitAssist and conformance Proto_Gnss_Emergency_GanssDataBitAssist, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GanssDataBitAssist(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssDataBitAssist and conformance Proto_Gnss_Emergency_GanssDataBitAssist, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GanssStoredSatDataElem(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssStoredSatDataElem and conformance Proto_Gnss_Emergency_GanssStoredSatDataElem, type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GanssStoredSatDataElem(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssStoredSatDataElem and conformance Proto_Gnss_Emergency_GanssStoredSatDataElem, type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GanssStoredSatDataElem(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssStoredSatDataElem and conformance Proto_Gnss_Emergency_GanssStoredSatDataElem, type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GanssNavModelAddData.decodeMessage<A>(decoder:)()
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
          v7 = *(type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0) + 24);
          goto LABEL_5;
        }

        if (result == 2)
        {
          v3 = v0;
          v5 = *(type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0) + 28);
          goto LABEL_5;
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v3 = v0;
            v4 = *(type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0) + 32);
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            break;
          case 4:
            v3 = v0;
            v6 = *(type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0) + 36);
            goto LABEL_5;
          case 5:
            type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem(0);
            lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssStoredSatDataElem and conformance Proto_Gnss_Emergency_GanssStoredSatDataElem, type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem);
            dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GanssNavModelAddData.traverse<A>(visitor:)()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
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

  v6 = (v0 + v3[7]);
  if ((v6[1] & 1) == 0)
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v8 = (v0 + v3[8]);
  if ((v8[1] & 1) == 0)
  {
    v9 = *v8;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v10 = (v0 + v3[9]);
  if ((v10[1] & 1) == 0)
  {
    v11 = *v10;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if (*(*v0 + 16))
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem(0);
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssStoredSatDataElem and conformance Proto_Gnss_Emergency_GanssStoredSatDataElem, type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  v12 = v0 + v3[5];
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_GanssNavModelAddData@<X0>(int *a1@<X0>, void *a2@<X8>)
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
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GanssNavModelAddData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssNavModelAddData and conformance Proto_Gnss_Emergency_GanssNavModelAddData, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GanssNavModelAddData(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssNavModelAddData and conformance Proto_Gnss_Emergency_GanssNavModelAddData, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GanssNavModelAddData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssNavModelAddData and conformance Proto_Gnss_Emergency_GanssNavModelAddData, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_HorizWithVertVelocity.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
LABEL_13:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_HorizWithVertVelocity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }
  }

  v10 = (v4 + v7[6]);
  if ((v10[1] & 1) == 0)
  {
    v11 = *v10;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v12 = (v4 + v7[7]);
  if ((v12[1] & 1) == 0)
  {
    v13 = *v12;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v14 = (v4 + v7[8]);
  if ((v14[1] & 1) == 0)
  {
    v15 = *v14;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_HorizWithVertVelocity@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GanssAddAssistDataChoices(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssAddAssistDataChoices and conformance Proto_Gnss_Emergency_GanssAddAssistDataChoices, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GanssAddAssistDataChoices(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssAddAssistDataChoices and conformance Proto_Gnss_Emergency_GanssAddAssistDataChoices, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GanssAddAssistDataChoices(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssAddAssistDataChoices and conformance Proto_Gnss_Emergency_GanssAddAssistDataChoices, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v34 = &v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v33 = &v30 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v31 = &v30 - v11;
  *(v1 + 16) = 7;
  *(v1 + 20) = 0;
  *(v1 + 24) = 1;
  *(v1 + 28) = 0;
  v12 = MEMORY[0x277D84F90];
  *(v1 + 32) = 1;
  *(v1 + 40) = v12;
  v13 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
  v14 = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
  v16 = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
  v32 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
  v18 = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  swift_beginAccess();
  LOBYTE(v17) = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v17;
  swift_beginAccess();
  LODWORD(v17) = *(a1 + 20);
  v19 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 20) = v17;
  *(v1 + 24) = v19;
  swift_beginAccess();
  v20 = *(a1 + 28);
  LOBYTE(v17) = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 28) = v20;
  *(v1 + 32) = v17;
  swift_beginAccess();
  v21 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 40) = v21;
  v22 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
  swift_beginAccess();
  v23 = v31;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v22, v31, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
  swift_beginAccess();

  outlined assign with take of Proto_Gpsd_Response?(v23, v1 + v13, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
  swift_endAccess();
  v24 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
  swift_beginAccess();
  v25 = v33;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v24, v33, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v25, v1 + v15, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
  swift_endAccess();
  v26 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
  swift_beginAccess();
  v27 = v34;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v26, v34, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);

  v28 = v32;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v27, v1 + v28, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
  swift_endAccess();
  return v1;
}

uint64_t Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.__deallocating_deinit()
{
  v1 = v0[5];

  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

uint64_t Proto_Gnss_Emergency_GanssAidRequestPerGanss.decodeMessage<A>(decoder:)()
{
  v2 = v0;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.init(copying:)(v6);
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

      if (result == 1)
      {
        swift_beginAccess();
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_LcsGanssId and conformance Proto_Gnss_Emergency_LcsGanssId();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
LABEL_22:
        swift_endAccess();
        goto LABEL_23;
      }

      if (result == 2 || result == 3)
      {
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        goto LABEL_22;
      }

LABEL_23:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result > 5)
    {
      if (result == 6)
      {
        v13 = v1;
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
        v14 = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData;
        v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssNavModelAddData and conformance Proto_Gnss_Emergency_GanssNavModelAddData;
      }

      else
      {
        if (result != 7)
        {
          goto LABEL_23;
        }

        v13 = v1;
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
        v14 = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices;
        v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssAddAssistDataChoices and conformance Proto_Gnss_Emergency_GanssAddAssistDataChoices;
      }
    }

    else
    {
      if (result == 4)
      {
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssTimeModelElem and conformance Proto_Gnss_Emergency_GanssTimeModelElem, type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        goto LABEL_22;
      }

      v13 = v1;
      swift_beginAccess();
      type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
      v14 = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist;
      v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssDataBitAssist and conformance Proto_Gnss_Emergency_GanssDataBitAssist;
    }

    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(v15, v14);
    v1 = v13;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    goto LABEL_22;
  }

  return result;
}