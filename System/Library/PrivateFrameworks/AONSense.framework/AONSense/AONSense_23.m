uint64_t specialized static Proto_Gnss_TimeTransferData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Time(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf15Proto_Gnss_TimeVSg_ADtMd, &_s10ALProtobuf15Proto_Gnss_TimeVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v47 - v15;
  v17 = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  v18 = *(v17 + 20);
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 2)
  {
    if (v20 != 2)
    {
      goto LABEL_12;
    }
  }

  else if (v20 == 2 || ((v19 ^ v20) & 1) != 0)
  {
    goto LABEL_12;
  }

  v21 = a1;
  v22 = a2;
  v23 = *(v17 + 24);
  v24 = *(v13 + 48);
  v47 = v21;
  v48 = v17;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v21 + v23, v16, &_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v22 + v23, &v16[v24], &_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
  v25 = *(v5 + 48);
  if (v25(v16, 1, v4) != 1)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16, v12, &_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
    if (v25(&v16[v24], 1, v4) != 1)
    {
      outlined init with take of Proto_Gnss_Time(&v16[v24], v8, type metadata accessor for Proto_Gnss_Time);
      v28 = specialized static Proto_Gnss_Time.== infix(_:_:)(v12, v8);
      outlined destroy of Proto_Gnss_Time(v8, type metadata accessor for Proto_Gnss_Time);
      outlined destroy of Proto_Gnss_Time(v12, type metadata accessor for Proto_Gnss_Time);
      outlined destroy of Any?(v16, &_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
      if ((v28 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }

    outlined destroy of Proto_Gnss_Time(v12, type metadata accessor for Proto_Gnss_Time);
LABEL_11:
    outlined destroy of Any?(v16, &_s10ALProtobuf15Proto_Gnss_TimeVSg_ADtMd, &_s10ALProtobuf15Proto_Gnss_TimeVSg_ADtMR);
    goto LABEL_12;
  }

  if (v25(&v16[v24], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  outlined destroy of Any?(v16, &_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
LABEL_15:
  v29 = v48[7];
  v30 = *(v47 + v29);
  v31 = *(v22 + v29);
  if (v30 == 7)
  {
    if (v31 != 7)
    {
      goto LABEL_12;
    }
  }

  else if (v30 != v31)
  {
    goto LABEL_12;
  }

  v32 = v48[8];
  v33 = (v47 + v32);
  v34 = *(v47 + v32 + 4);
  v35 = (v22 + v32);
  v36 = *(v22 + v32 + 4);
  if (v34)
  {
    if (!v36)
    {
      goto LABEL_12;
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
      goto LABEL_12;
    }
  }

  v37 = v48[9];
  v38 = (v47 + v37);
  v39 = *(v47 + v37 + 8);
  v40 = (v22 + v37);
  v41 = *(v22 + v37 + 8);
  if (v39)
  {
    if (!v41)
    {
      goto LABEL_12;
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
      goto LABEL_12;
    }
  }

  v42 = v48[10];
  v43 = (v47 + v42);
  v44 = *(v47 + v42 + 8);
  v45 = (v22 + v42);
  v46 = *(v22 + v42 + 8);
  if ((v44 & 1) == 0)
  {
    if (*v43 != *v45)
    {
      LOBYTE(v46) = 1;
    }

    if (v46)
    {
      goto LABEL_12;
    }

LABEL_37:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v26 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v26 & 1;
  }

  if (v46)
  {
    goto LABEL_37;
  }

LABEL_12:
  v26 = 0;
  return v26 & 1;
}

uint64_t specialized static Proto_Gnss_PwrMeasurement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_PwrMeasurement(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if ((v7 & 1) == 0)
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }

LABEL_7:
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

    else if (v27 == 2 || ((v27 ^ v26) & 1) != 0)
    {
      return 0;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  if (v9)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t specialized static Proto_Gnss_DecodedRti.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_DecodedRti(0);
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
  lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_Velocity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Velocity(0);
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

  v30 = v4[10];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 8);
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
  lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_SvId.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_SvId(0);
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

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_Time.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Time(0);
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

  v23 = v4[9];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 8);
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

  v28 = v4[10];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 8);
  if (v30)
  {
    if (!v32)
    {
      return 0;
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
      return 0;
    }
  }

  v33 = v4[11];
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 8);
  v36 = (a2 + v33);
  v37 = *(a2 + v33 + 8);
  if (v35)
  {
    if (!v37)
    {
      return 0;
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
      return 0;
    }
  }

  v38 = v4[12];
  v39 = (a1 + v38);
  v40 = *(a1 + v38 + 8);
  v41 = (a2 + v38);
  v42 = *(a2 + v38 + 8);
  if (v40)
  {
    if (!v42)
    {
      return 0;
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
      return 0;
    }
  }

  v43 = v4[13];
  v44 = (a1 + v43);
  v45 = *(a1 + v43 + 8);
  v46 = (a2 + v43);
  v47 = *(a2 + v43 + 8);
  if (v45)
  {
    if (!v47)
    {
      return 0;
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
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_TimeTransferDataExtend.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
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
  lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_Position.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Position(0);
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

  v30 = v4[10];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 8);
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
  v37 = *(a1 + v35 + 8);
  v38 = (a2 + v35);
  v39 = *(a2 + v35 + 8);
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
  v42 = *(a1 + v40 + 8);
  v43 = (a2 + v40);
  v44 = *(a2 + v40 + 8);
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

  v50 = v4[14];
  v51 = *(a1 + v50);
  v52 = *(a2 + v50);
  if (v51 == 6)
  {
    if (v52 != 6)
    {
      return 0;
    }
  }

  else if (v52 == 6 || qword_23D1D7168[v51] != qword_23D1D7168[v52])
  {
    return 0;
  }

  v53 = v4[15];
  v54 = (a1 + v53);
  v55 = *(a1 + v53 + 8);
  v56 = (a2 + v53);
  v57 = *(a2 + v53 + 8);
  if (v55)
  {
    if (!v57)
    {
      return 0;
    }
  }

  else
  {
    if (*v54 != *v56)
    {
      LOBYTE(v57) = 1;
    }

    if (v57)
    {
      return 0;
    }
  }

  v58 = v4[16];
  v59 = *(a1 + v58);
  v60 = *(a2 + v58);
  if (v59 == 6)
  {
    if (v60 != 6)
    {
      return 0;
    }
  }

  else if (v59 != v60)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type Proto_Gnss_GnssContent and conformance Proto_Gnss_GnssContent()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_GnssContent and conformance Proto_Gnss_GnssContent;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_GnssContent and conformance Proto_Gnss_GnssContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_GnssContent and conformance Proto_Gnss_GnssContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_GnssContent and conformance Proto_Gnss_GnssContent;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_GnssContent and conformance Proto_Gnss_GnssContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_GnssContent and conformance Proto_Gnss_GnssContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_GnssContent and conformance Proto_Gnss_GnssContent;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_GnssContent and conformance Proto_Gnss_GnssContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_GnssContent and conformance Proto_Gnss_GnssContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_GnssContent and conformance Proto_Gnss_GnssContent;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_GnssContent and conformance Proto_Gnss_GnssContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_GnssContent and conformance Proto_Gnss_GnssContent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_EstimationTechnology and conformance Proto_Gnss_EstimationTechnology()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_EstimationTechnology and conformance Proto_Gnss_EstimationTechnology;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_EstimationTechnology and conformance Proto_Gnss_EstimationTechnology)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_EstimationTechnology and conformance Proto_Gnss_EstimationTechnology);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_EstimationTechnology and conformance Proto_Gnss_EstimationTechnology;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_EstimationTechnology and conformance Proto_Gnss_EstimationTechnology)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_EstimationTechnology and conformance Proto_Gnss_EstimationTechnology);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_EstimationTechnology and conformance Proto_Gnss_EstimationTechnology;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_EstimationTechnology and conformance Proto_Gnss_EstimationTechnology)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_EstimationTechnology and conformance Proto_Gnss_EstimationTechnology);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_EstimationTechnology and conformance Proto_Gnss_EstimationTechnology;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_EstimationTechnology and conformance Proto_Gnss_EstimationTechnology)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_EstimationTechnology and conformance Proto_Gnss_EstimationTechnology);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_TimeQuality and conformance Proto_Gnss_TimeQuality()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_TimeQuality and conformance Proto_Gnss_TimeQuality;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_TimeQuality and conformance Proto_Gnss_TimeQuality)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_TimeQuality and conformance Proto_Gnss_TimeQuality);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_TimeQuality and conformance Proto_Gnss_TimeQuality;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_TimeQuality and conformance Proto_Gnss_TimeQuality)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_TimeQuality and conformance Proto_Gnss_TimeQuality);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_TimeQuality and conformance Proto_Gnss_TimeQuality;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_TimeQuality and conformance Proto_Gnss_TimeQuality)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_TimeQuality and conformance Proto_Gnss_TimeQuality);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_TimeQuality and conformance Proto_Gnss_TimeQuality;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_TimeQuality and conformance Proto_Gnss_TimeQuality)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_TimeQuality and conformance Proto_Gnss_TimeQuality);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_PositionAssistType and conformance Proto_Gnss_PositionAssistType()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_PositionAssistType and conformance Proto_Gnss_PositionAssistType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_PositionAssistType and conformance Proto_Gnss_PositionAssistType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_PositionAssistType and conformance Proto_Gnss_PositionAssistType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_PositionAssistType and conformance Proto_Gnss_PositionAssistType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_PositionAssistType and conformance Proto_Gnss_PositionAssistType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_PositionAssistType and conformance Proto_Gnss_PositionAssistType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_PositionAssistType and conformance Proto_Gnss_PositionAssistType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_PositionAssistType and conformance Proto_Gnss_PositionAssistType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_PositionAssistType and conformance Proto_Gnss_PositionAssistType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_PositionAssistType and conformance Proto_Gnss_PositionAssistType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_PositionAssistType and conformance Proto_Gnss_PositionAssistType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_PositionAssistType and conformance Proto_Gnss_PositionAssistType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_MotionActivityContext and conformance Proto_Gnss_MotionActivityContext()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_MotionActivityContext and conformance Proto_Gnss_MotionActivityContext;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_MotionActivityContext and conformance Proto_Gnss_MotionActivityContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_MotionActivityContext and conformance Proto_Gnss_MotionActivityContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_MotionActivityContext and conformance Proto_Gnss_MotionActivityContext;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_MotionActivityContext and conformance Proto_Gnss_MotionActivityContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_MotionActivityContext and conformance Proto_Gnss_MotionActivityContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_MotionActivityContext and conformance Proto_Gnss_MotionActivityContext;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_MotionActivityContext and conformance Proto_Gnss_MotionActivityContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_MotionActivityContext and conformance Proto_Gnss_MotionActivityContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_MotionActivityContext and conformance Proto_Gnss_MotionActivityContext;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_MotionActivityContext and conformance Proto_Gnss_MotionActivityContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_MotionActivityContext and conformance Proto_Gnss_MotionActivityContext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_MovingState and conformance Proto_Gnss_MovingState()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_MovingState and conformance Proto_Gnss_MovingState;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_MovingState and conformance Proto_Gnss_MovingState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_MovingState and conformance Proto_Gnss_MovingState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_MovingState and conformance Proto_Gnss_MovingState;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_MovingState and conformance Proto_Gnss_MovingState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_MovingState and conformance Proto_Gnss_MovingState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_MovingState and conformance Proto_Gnss_MovingState;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_MovingState and conformance Proto_Gnss_MovingState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_MovingState and conformance Proto_Gnss_MovingState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_MovingState and conformance Proto_Gnss_MovingState;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_MovingState and conformance Proto_Gnss_MovingState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_MovingState and conformance Proto_Gnss_MovingState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Reliability and conformance Proto_Gnss_Reliability()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Reliability and conformance Proto_Gnss_Reliability;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Reliability and conformance Proto_Gnss_Reliability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Reliability and conformance Proto_Gnss_Reliability);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Reliability and conformance Proto_Gnss_Reliability;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Reliability and conformance Proto_Gnss_Reliability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Reliability and conformance Proto_Gnss_Reliability);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Reliability and conformance Proto_Gnss_Reliability;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Reliability and conformance Proto_Gnss_Reliability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Reliability and conformance Proto_Gnss_Reliability);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Reliability and conformance Proto_Gnss_Reliability;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Reliability and conformance Proto_Gnss_Reliability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Reliability and conformance Proto_Gnss_Reliability);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_DeviceMountState and conformance Proto_Gnss_DeviceMountState()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_DeviceMountState and conformance Proto_Gnss_DeviceMountState;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_DeviceMountState and conformance Proto_Gnss_DeviceMountState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_DeviceMountState and conformance Proto_Gnss_DeviceMountState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_DeviceMountState and conformance Proto_Gnss_DeviceMountState;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_DeviceMountState and conformance Proto_Gnss_DeviceMountState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_DeviceMountState and conformance Proto_Gnss_DeviceMountState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_DeviceMountState and conformance Proto_Gnss_DeviceMountState;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_DeviceMountState and conformance Proto_Gnss_DeviceMountState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_DeviceMountState and conformance Proto_Gnss_DeviceMountState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_DeviceMountState and conformance Proto_Gnss_DeviceMountState;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_DeviceMountState and conformance Proto_Gnss_DeviceMountState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_DeviceMountState and conformance Proto_Gnss_DeviceMountState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_SignalEnvironmentType and conformance Proto_Gnss_SignalEnvironmentType()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_SignalEnvironmentType and conformance Proto_Gnss_SignalEnvironmentType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_SignalEnvironmentType and conformance Proto_Gnss_SignalEnvironmentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_SignalEnvironmentType and conformance Proto_Gnss_SignalEnvironmentType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_SignalEnvironmentType and conformance Proto_Gnss_SignalEnvironmentType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_SignalEnvironmentType and conformance Proto_Gnss_SignalEnvironmentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_SignalEnvironmentType and conformance Proto_Gnss_SignalEnvironmentType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_SignalEnvironmentType and conformance Proto_Gnss_SignalEnvironmentType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_SignalEnvironmentType and conformance Proto_Gnss_SignalEnvironmentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_SignalEnvironmentType and conformance Proto_Gnss_SignalEnvironmentType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_SignalEnvironmentType and conformance Proto_Gnss_SignalEnvironmentType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_SignalEnvironmentType and conformance Proto_Gnss_SignalEnvironmentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_SignalEnvironmentType and conformance Proto_Gnss_SignalEnvironmentType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_DeleteGnssDataBitMask and conformance Proto_Gnss_DeleteGnssDataBitMask()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_DeleteGnssDataBitMask and conformance Proto_Gnss_DeleteGnssDataBitMask;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_DeleteGnssDataBitMask and conformance Proto_Gnss_DeleteGnssDataBitMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_DeleteGnssDataBitMask and conformance Proto_Gnss_DeleteGnssDataBitMask);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_DeleteGnssDataBitMask and conformance Proto_Gnss_DeleteGnssDataBitMask;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_DeleteGnssDataBitMask and conformance Proto_Gnss_DeleteGnssDataBitMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_DeleteGnssDataBitMask and conformance Proto_Gnss_DeleteGnssDataBitMask);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_DeleteGnssDataBitMask and conformance Proto_Gnss_DeleteGnssDataBitMask;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_DeleteGnssDataBitMask and conformance Proto_Gnss_DeleteGnssDataBitMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_DeleteGnssDataBitMask and conformance Proto_Gnss_DeleteGnssDataBitMask);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_DeleteGnssDataBitMask and conformance Proto_Gnss_DeleteGnssDataBitMask;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_DeleteGnssDataBitMask and conformance Proto_Gnss_DeleteGnssDataBitMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_DeleteGnssDataBitMask and conformance Proto_Gnss_DeleteGnssDataBitMask);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_PwrMeasurement.PowerLoggingStatus and conformance Proto_Gnss_PwrMeasurement.PowerLoggingStatus()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_PwrMeasurement.PowerLoggingStatus and conformance Proto_Gnss_PwrMeasurement.PowerLoggingStatus;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_PwrMeasurement.PowerLoggingStatus and conformance Proto_Gnss_PwrMeasurement.PowerLoggingStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_PwrMeasurement.PowerLoggingStatus and conformance Proto_Gnss_PwrMeasurement.PowerLoggingStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_PwrMeasurement.PowerLoggingStatus and conformance Proto_Gnss_PwrMeasurement.PowerLoggingStatus;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_PwrMeasurement.PowerLoggingStatus and conformance Proto_Gnss_PwrMeasurement.PowerLoggingStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_PwrMeasurement.PowerLoggingStatus and conformance Proto_Gnss_PwrMeasurement.PowerLoggingStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_PwrMeasurement.PowerLoggingStatus and conformance Proto_Gnss_PwrMeasurement.PowerLoggingStatus;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_PwrMeasurement.PowerLoggingStatus and conformance Proto_Gnss_PwrMeasurement.PowerLoggingStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_PwrMeasurement.PowerLoggingStatus and conformance Proto_Gnss_PwrMeasurement.PowerLoggingStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_PwrMeasurement.PowerLoggingStatus and conformance Proto_Gnss_PwrMeasurement.PowerLoggingStatus;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_PwrMeasurement.PowerLoggingStatus and conformance Proto_Gnss_PwrMeasurement.PowerLoggingStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_PwrMeasurement.PowerLoggingStatus and conformance Proto_Gnss_PwrMeasurement.PowerLoggingStatus);
  }

  return result;
}

void type metadata completion function for Proto_Gnss_Position()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for UInt32?);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Double?(319, &lazy cache variable for type metadata for Proto_Gnss_Reliability?);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Double?(319, &lazy cache variable for type metadata for UInt64?);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Double?(319, &lazy cache variable for type metadata for Proto_Gnss_GnssContent?);
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

void type metadata completion function for Proto_Gnss_Velocity()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for Proto_Gnss_Time()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for UInt64?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for Float?);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Double?(319, &lazy cache variable for type metadata for Bool?);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Double?(319, &lazy cache variable for type metadata for Int32?);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?);
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

void type metadata completion function for Proto_Gnss_TimeTransferData()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for Bool?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Proto_Gnss_Time?(319, &lazy cache variable for type metadata for Proto_Gnss_Time?, type metadata accessor for Proto_Gnss_Time);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Double?(319, &lazy cache variable for type metadata for Proto_Gnss_TimeQuality?);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Double?(319, &lazy cache variable for type metadata for UInt32?);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Double?(319, &lazy cache variable for type metadata for UInt64?);
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

uint64_t type metadata completion function for Proto_Gnss_Fix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
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

void type metadata completion function for Proto_Gnss_SensorSample3Axis()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for UInt64?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for Float?);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_SvId()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for UInt32?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for Int32?);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_PwrMeasurement()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for Proto_Gnss_PwrMeasurement.PowerLoggingStatus?);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_RawPressureSample(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  type metadata accessor for UnknownStorage();
  if (v5 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for UInt64?);
    if (v6 <= 0x3F)
    {
      type metadata accessor for Double?(319, a4);
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_DecodedExtendedEphemeris()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for UInt64?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for Bool?);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Double?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_SvPositionSource?);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Fix._StorageClass()
{
  type metadata accessor for Proto_Gnss_Time?(319, &lazy cache variable for type metadata for Proto_Gnss_Time?, type metadata accessor for Proto_Gnss_Time);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    type metadata accessor for Proto_Gnss_Time?(319, &lazy cache variable for type metadata for Proto_Gnss_Position?, type metadata accessor for Proto_Gnss_Position);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      type metadata accessor for Proto_Gnss_Time?(319, &lazy cache variable for type metadata for Proto_Gnss_Velocity?, type metadata accessor for Proto_Gnss_Velocity);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for Proto_Gnss_Time?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata completion function for Proto_Gnss_TimeTransferDataExtend._StorageClass()
{
  type metadata accessor for Proto_Gnss_Time?(319, &lazy cache variable for type metadata for Proto_Gnss_TimeTransferData?, type metadata accessor for Proto_Gnss_TimeTransferData);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.machContTimeNs.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 16) = a1;
  *(v7 + 24) = 0;
  return result;
}

void (*CLP_LogEntry_AONLoc_BtAdvertisement.machContTimeNs.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (*(v6 + 24))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return CLP_LogEntry_AONLoc_BtAdvertisement.machContTimeNs.modify;
}

void CLP_LogEntry_AONLoc_BtAdvertisement.machContTimeNs.modify(uint64_t *a1)
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
    v10 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 16) = v2;
  *(v7 + 24) = 0;

  free(v1);
}

Swift::Void __swiftcall CLP_LogEntry_AONLoc_BtAdvertisement.clearMachContTimeNs()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    v10 = v5;
    v5 = v9;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v10);
    *(v1 + v2) = v9;
  }

  swift_beginAccess();
  *(v5 + 16) = 0;
  *(v5 + 24) = 1;
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.mac.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 32) = a1;
  *(v7 + 40) = 0;
  return result;
}

void (*CLP_LogEntry_AONLoc_BtAdvertisement.mac.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 32);
  if (*(v6 + 40))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return CLP_LogEntry_AONLoc_BtAdvertisement.mac.modify;
}

void CLP_LogEntry_AONLoc_BtAdvertisement.mac.modify(uint64_t *a1)
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
    v10 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 32) = v2;
  *(v7 + 40) = 0;

  free(v1);
}

Swift::Void __swiftcall CLP_LogEntry_AONLoc_BtAdvertisement.clearMac()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    v10 = v5;
    v5 = v9;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v10);
    *(v1 + v2) = v9;
  }

  swift_beginAccess();
  *(v5 + 32) = 0;
  *(v5 + 40) = 1;
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.rssiDb.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 44) = a1;
  *(v7 + 48) = 0;
  return result;
}

void (*CLP_LogEntry_AONLoc_BtAdvertisement.rssiDb.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 44);
  if (*(v6 + 48))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_AONLoc_BtAdvertisement.rssiDb.modify;
}

void CLP_LogEntry_AONLoc_BtAdvertisement.rssiDb.modify(uint64_t *a1)
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
    v10 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 44) = v2;
  *(v7 + 48) = 0;

  free(v1);
}

Swift::Void __swiftcall CLP_LogEntry_AONLoc_BtAdvertisement.clearRssiDb()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v5);
    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  *(v5 + 44) = 0;
  *(v5 + 48) = 1;
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.channel.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 52) = a1;
  *(v7 + 56) = 0;
  return result;
}

void (*CLP_LogEntry_AONLoc_BtAdvertisement.channel.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 52);
  if (*(v6 + 56))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_AONLoc_BtAdvertisement.channel.modify;
}

void CLP_LogEntry_AONLoc_BtAdvertisement.channel.modify(uint64_t *a1)
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
    v10 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 52) = v2;
  *(v7 + 56) = 0;

  free(v1);
}

Swift::Void __swiftcall CLP_LogEntry_AONLoc_BtAdvertisement.clearChannel()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v5);
    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  *(v5 + 52) = 0;
  *(v5 + 56) = 1;
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.antennaIndex.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  if (*(v1 + 64))
  {
    return 0;
  }

  else
  {
    return *(v1 + 60);
  }
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.antennaIndex.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 60) = a1;
  *(v7 + 64) = 0;
  return result;
}

void (*CLP_LogEntry_AONLoc_BtAdvertisement.antennaIndex.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 60);
  if (*(v6 + 64))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_AONLoc_BtAdvertisement.antennaIndex.modify;
}

void CLP_LogEntry_AONLoc_BtAdvertisement.antennaIndex.modify(uint64_t *a1)
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
    v10 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 60) = v2;
  *(v7 + 64) = 0;

  free(v1);
}

Swift::Void __swiftcall CLP_LogEntry_AONLoc_BtAdvertisement.clearAntennaIndex()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v5);
    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  *(v5 + 60) = 0;
  *(v5 + 64) = 1;
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.payload.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v1 + 72);
  }

  outlined copy of Data?(v2, v3);
  return v4;
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.payload.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v14);
    *(v3 + v6) = v13;
  }

  swift_beginAccess();
  v15 = *(v9 + 72);
  v16 = *(v9 + 80);
  *(v9 + 72) = a1;
  *(v9 + 80) = a2;
  return outlined consume of Data?(v15, v16);
}

void (*CLP_LogEntry_AONLoc_BtAdvertisement.payload.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 72);
  v8 = *(v6 + 80);
  if (v8 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v6 + 72);
  }

  v10 = 0xC000000000000000;
  if (v8 >> 60 != 15)
  {
    v10 = *(v6 + 80);
  }

  *(v4 + 72) = v9;
  *(v4 + 80) = v10;
  outlined copy of Data?(v7, v8);
  return CLP_LogEntry_AONLoc_BtAdvertisement.payload.modify;
}

void CLP_LogEntry_AONLoc_BtAdvertisement.payload.modify(uint64_t *a1, char a2)
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
      v12 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
      v13 = *(v12 + 48);
      v14 = *(v12 + 52);
      v15 = swift_allocObject();
      v16 = v9;
      v9 = v15;
      CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v16);
      *(v11 + v10) = v15;
    }

    swift_beginAccess();
    v17 = *(v9 + 72);
    v18 = *(v9 + 80);
    *(v9 + 72) = v3;
    *(v9 + 80) = v5;
    outlined consume of Data?(v17, v18);
    outlined consume of Data._Representation(*(v2 + 72), *(v2 + 80));
  }

  else
  {
    v19 = *(v6 + v4);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v4);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 96);
      v23 = *(v2 + 88);
      v24 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      v27 = swift_allocObject();
      v28 = v21;
      v21 = v27;
      CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v28);
      *(v23 + v22) = v27;
    }

    swift_beginAccess();
    v29 = *(v21 + 72);
    v30 = *(v21 + 80);
    *(v21 + 72) = v3;
    *(v21 + 80) = v5;
    outlined consume of Data?(v29, v30);
  }

  free(v2);
}

Swift::Void __swiftcall CLP_LogEntry_AONLoc_BtAdvertisement.clearPayload()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v5);
    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  v10 = *(v5 + 72);
  v11 = *(v5 + 80);
  *(v5 + 72) = xmmword_23D1B1460;
  outlined consume of Data?(v10, v11);
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.btType.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 88) = a1;
  return result;
}

void (*CLP_LogEntry_AONLoc_BtAdvertisement.btType.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 88);
  if (v7 == 3)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return CLP_LogEntry_AONLoc_BtAdvertisement.btType.modify;
}

void CLP_LogEntry_AONLoc_BtAdvertisement.btType.modify(uint64_t *a1)
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
    v10 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 88) = v2;

  free(v1);
}

Swift::Void __swiftcall CLP_LogEntry_AONLoc_BtAdvertisement.clearBtType()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    v10 = v5;
    v5 = v9;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v10);
    *(v1 + v2) = v9;
  }

  swift_beginAccess();
  *(v5 + 88) = 3;
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.deviceFlags.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 96) = a1;
  *(v7 + 104) = 0;
  return result;
}

void (*CLP_LogEntry_AONLoc_BtAdvertisement.deviceFlags.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 96);
  if (*(v6 + 104))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return CLP_LogEntry_AONLoc_BtAdvertisement.deviceFlags.modify;
}

void CLP_LogEntry_AONLoc_BtAdvertisement.deviceFlags.modify(uint64_t *a1)
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
    v10 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 96) = v2;
  *(v7 + 104) = 0;

  free(v1);
}

Swift::Void __swiftcall CLP_LogEntry_AONLoc_BtAdvertisement.clearDeviceFlags()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    v10 = v5;
    v5 = v9;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v10);
    *(v1 + v2) = v9;
  }

  swift_beginAccess();
  *(v5 + 96) = 0;
  *(v5 + 104) = 1;
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.discoveryFlags.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 112) = a1;
  *(v7 + 120) = 0;
  return result;
}

void (*CLP_LogEntry_AONLoc_BtAdvertisement.discoveryFlags.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 112);
  if (*(v6 + 120))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return CLP_LogEntry_AONLoc_BtAdvertisement.discoveryFlags.modify;
}

void CLP_LogEntry_AONLoc_BtAdvertisement.discoveryFlags.modify(uint64_t *a1)
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
    v10 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 112) = v2;
  *(v7 + 120) = 0;

  free(v1);
}

Swift::Void __swiftcall CLP_LogEntry_AONLoc_BtAdvertisement.clearDiscoveryFlags()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    v10 = v5;
    v5 = v9;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v10);
    *(v1 + v2) = v9;
  }

  swift_beginAccess();
  *(v5 + 112) = 0;
  *(v5 + 120) = 1;
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.productID.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 124) = a1;
  *(v7 + 128) = 0;
  return result;
}

void (*CLP_LogEntry_AONLoc_BtAdvertisement.productID.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 124);
  if (*(v6 + 128))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_AONLoc_BtAdvertisement.productID.modify;
}

void CLP_LogEntry_AONLoc_BtAdvertisement.productID.modify(uint64_t *a1)
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
    v10 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 124) = v2;
  *(v7 + 128) = 0;

  free(v1);
}

Swift::Void __swiftcall CLP_LogEntry_AONLoc_BtAdvertisement.clearProductID()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v5);
    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  *(v5 + 124) = 0;
  *(v5 + 128) = 1;
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.identifier.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v14);
    *(v3 + v6) = v13;
  }

  swift_beginAccess();
  v15 = *(v9 + 144);
  *(v9 + 136) = a1;
  *(v9 + 144) = a2;
}

void (*CLP_LogEntry_AONLoc_BtAdvertisement.identifier.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 144))
  {
    v7 = *(v6 + 136);
    v8 = *(v6 + 144);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return CLP_LogEntry_AONLoc_BtAdvertisement.identifier.modify;
}

void CLP_LogEntry_AONLoc_BtAdvertisement.identifier.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    v7 = *(*a1 + 80);

    v8 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 96);
      v12 = *(v2 + 88);
      v13 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      v16 = swift_allocObject();
      v17 = v10;
      v10 = v16;
      CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v17);
      *(v12 + v11) = v16;
    }

    swift_beginAccess();
    v18 = *(v10 + 144);
    *(v10 + 136) = v3;
    *(v10 + 144) = v5;

    v19 = *(v2 + 80);
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
      v25 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      v28 = swift_allocObject();
      v29 = v22;
      v22 = v28;
      CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v29);
      *(v24 + v23) = v28;
    }

    swift_beginAccess();
    v30 = *(v22 + 144);
    *(v22 + 136) = v3;
    *(v22 + 144) = v5;
  }

  free(v2);
}

Swift::Void __swiftcall CLP_LogEntry_AONLoc_BtAdvertisement.clearIdentifier()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v5);
    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  v10 = *(v5 + 144);
  *(v5 + 136) = 0;
  *(v5 + 144) = 0;
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.idsDeviceID.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  if (*(v1 + 160))
  {
    v2 = *(v1 + 152);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.idsDeviceID.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v14);
    *(v3 + v6) = v13;
  }

  swift_beginAccess();
  v15 = *(v9 + 160);
  *(v9 + 152) = a1;
  *(v9 + 160) = a2;
}

void (*CLP_LogEntry_AONLoc_BtAdvertisement.idsDeviceID.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 160))
  {
    v7 = *(v6 + 152);
    v8 = *(v6 + 160);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return CLP_LogEntry_AONLoc_BtAdvertisement.idsDeviceID.modify;
}

void CLP_LogEntry_AONLoc_BtAdvertisement.idsDeviceID.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    v7 = *(*a1 + 80);

    v8 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 96);
      v12 = *(v2 + 88);
      v13 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      v16 = swift_allocObject();
      v17 = v10;
      v10 = v16;
      CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v17);
      *(v12 + v11) = v16;
    }

    swift_beginAccess();
    v18 = *(v10 + 160);
    *(v10 + 152) = v3;
    *(v10 + 160) = v5;

    v19 = *(v2 + 80);
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
      v25 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      v28 = swift_allocObject();
      v29 = v22;
      v22 = v28;
      CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v29);
      *(v24 + v23) = v28;
    }

    swift_beginAccess();
    v30 = *(v22 + 160);
    *(v22 + 152) = v3;
    *(v22 + 160) = v5;
  }

  free(v2);
}

Swift::Void __swiftcall CLP_LogEntry_AONLoc_BtAdvertisement.clearIdsDeviceID()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v5);
    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  v10 = *(v5 + 160);
  *(v5 + 152) = 0;
  *(v5 + 160) = 0;
}

int *CLP_LogEntry_AONLoc_Type7Info.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  *(a1 + result[5]) = 2;
  *(a1 + result[6]) = 2;
  *(a1 + result[7]) = 2;
  *(a1 + result[8]) = 2;
  *(a1 + result[9]) = 2;
  *(a1 + result[10]) = 8;
  return result;
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.type7Info.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of CLP_LogEntry_AONLoc_Type7Info(a1, v7, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
  v17 = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info;
  swift_beginAccess();
  outlined assign with take of CLP_LogEntry_AONLoc_Type7Info?(v7, v11 + v18);
  return swift_endAccess();
}

void (*CLP_LogEntry_AONLoc_BtAdvertisement.type7Info.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + v9[5]) = 2;
    *(v14 + v9[6]) = 2;
    *(v14 + v9[7]) = 2;
    *(v14 + v9[8]) = 2;
    *(v14 + v9[9]) = 2;
    *(v14 + v9[10]) = 8;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_AONLoc_Type7Info(v8, v14, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
  }

  return CLP_LogEntry_AONLoc_BtAdvertisement.type7Info.modify;
}

void CLP_LogEntry_AONLoc_BtAdvertisement.type7Info.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_AONLoc_Type7Info(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_AONLoc_Type7Info(v15, v19, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info;
    swift_beginAccess();
    outlined assign with take of CLP_LogEntry_AONLoc_Type7Info?(v19, v7 + v20);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_AONLoc_Type7Info(v14, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
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
      v27 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_AONLoc_Type7Info(v14, v19, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info;
    swift_beginAccess();
    outlined assign with take of CLP_LogEntry_AONLoc_Type7Info?(v19, v24 + v33);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

Swift::Void __swiftcall CLP_LogEntry_AONLoc_BtAdvertisement.clearType7Info()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info;
  swift_beginAccess();
  outlined assign with take of CLP_LogEntry_AONLoc_Type7Info?(v5, v9 + v16);
  swift_endAccess();
}

ALProtobuf::CLP_LogEntry_AONLoc_BtAdvertisement::BtType_optional __swiftcall CLP_LogEntry_AONLoc_BtAdvertisement.BtType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 7)
  {
    v1 = 1;
  }

  else
  {
    v1 = 3;
  }

  if (rawValue == 18)
  {
    v2.value = ALProtobuf_CLP_LogEntry_AONLoc_BtAdvertisement_BtType_type18;
  }

  else
  {
    v2.value = v1;
  }

  if (rawValue)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_AONLoc_BtAdvertisement.BtType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement.BtType and conformance CLP_LogEntry_AONLoc_BtAdvertisement.BtType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t *protocol witness for RawRepresentable.init(rawValue:) in conformance CLP_LogEntry_AONLoc_BtAdvertisement.BtType@<X0>(uint64_t *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (*result)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (v2 == 7)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 18)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  *a2 = v5;
  return result;
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v2) = static CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.defaultInstance;
}

uint64_t variable initialization expression of CLP_LogEntry_AONLoc_BtAdvertisement._storage()
{
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }
}

uint64_t CLP_LogEntry_AONLoc_BtDeviceInfo.cbDeviceBytes.getter()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtDeviceInfo(0) + 20));
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v1;
  }

  if (v2 >> 60 != 15)
  {
    v4 = v1[1];
  }

  outlined copy of Data?(*v1, v2);
  return v3;
}

uint64_t CLP_LogEntry_AONLoc_BtDeviceInfo.cbDeviceBytes.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtDeviceInfo(0) + 20);
  result = outlined consume of Data?(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t (*CLP_LogEntry_AONLoc_BtDeviceInfo.cbDeviceBytes.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtDeviceInfo(0) + 20);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  outlined copy of Data?(v5, v6);
  return Proto_Gnss_Emergency_WlanMeasurementElement.bssid.modify;
}

Swift::Void __swiftcall CLP_LogEntry_AONLoc_BtDeviceInfo.clearCbDeviceBytes()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtDeviceInfo(0) + 20);
  outlined consume of Data?(*v1, *(v1 + 8));
  *v1 = xmmword_23D1B1460;
}

double CLP_LogEntry_AONLoc_BtDeviceInfo.init()@<D0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_AONLoc_BtDeviceInfo(0);
  result = 0.0;
  *(a1 + *(v2 + 20)) = xmmword_23D1B1460;
  return result;
}

uint64_t CLP_LogEntry_AONLoc_BtNotification.eventReceiptTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with take of CLP_LogEntry_AONLoc_Type7Info(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_AONLoc_BtNotification.eventReceiptTime.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    CLP_LogEntry_PrivateData_TimeStamp.init()(v14);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_AONLoc_Type7Info(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return CLP_LogEntry_AONLoc_BtNotification.eventReceiptTime.modify;
}

void CLP_LogEntry_AONLoc_BtNotification.eventReceiptTime.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Type7Info((*a1)[5], v4, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    outlined destroy of Any?(v9 + v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    outlined init with take of CLP_LogEntry_AONLoc_Type7Info(v4, v9 + v3, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of CLP_LogEntry_AONLoc_Type7Info(v5, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  else
  {
    outlined destroy of Any?(v9 + v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    outlined init with take of CLP_LogEntry_AONLoc_Type7Info(v5, v9 + v3, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

Swift::Void __swiftcall CLP_LogEntry_AONLoc_BtNotification.clearEventReceiptTime()()
{
  v1 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0) + 24);
  outlined destroy of Any?(v0 + v1, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t CLP_LogEntry_AONLoc_BtNotification.isSimulated.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_AONLoc_BtNotification.isSimulated.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_AONLoc_BtNotification.isApOn.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_AONLoc_BtNotification.isApOn.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_AONLoc_BtNotification.isScreenOn.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_AONLoc_BtNotification.isScreenOn.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_AONLoc_BtNotification.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CLP_LogEntry_AONLoc_BtNotification.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CLP_LogEntry_AONLoc_BtNotification.init()@<X0>(char *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
  v3 = &a1[v2[5]];
  UnknownStorage.init()();
  v4 = v2[6];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v5 - 8) + 56))(&a1[v4], 1, 1, v5);
  a1[v2[7]] = 2;
  a1[v2[8]] = 2;
  a1[v2[9]] = 2;
  return result;
}

uint64_t variable initialization expression of CLP_LogEntry_AONLoc_BtNotification._eventReceiptTime@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t CLP_LogEntry_AONLoc_Type7Info.isSameAccount.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_AONLoc_Type7Info.isSameAccount.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_AONLoc_Type7Info.isFamily.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_AONLoc_Type7Info.isFamily.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_AONLoc_Type7Info.isSharedHome.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_AONLoc_Type7Info.isSharedHome.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Request.type.modify;
}

uint64_t CLP_LogEntry_AONLoc_Type7Info.isLeftBud.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_AONLoc_Type7Info.isLeftBud.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_AONLoc_Type7Info.isCase.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_AONLoc_Type7Info.isCase.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_AONLoc_Type7Info.placement.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0) + 40));
  if (v1 == 8)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_AONLoc_Type7Info.placement.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_AONLoc_Type7Info.placement.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0) + 40);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 8)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Request.type.modify;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_AONLoc_Type7Info.Placement(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Type7Info.Placement and conformance CLP_LogEntry_AONLoc_Type7Info.Placement();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t outlined init with copy of CLP_LogEntry_AONLoc_Type7Info(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of CLP_LogEntry_AONLoc_Type7Info(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
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
  if ((*(v9 + 40) & 1) == 0)
  {
    v12 = *(v9 + 32);
    dispatch thunk of Visitor.visitSingularFixed64Field(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v9 + 48) & 1) == 0)
  {
    v13 = *(v9 + 44);
    dispatch thunk of Visitor.visitSingularSInt32Field(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v9 + 56) & 1) == 0)
  {
    v14 = *(v9 + 52);
    dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v9 + 64) & 1) == 0)
  {
    v15 = *(v9 + 60);
    dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  swift_beginAccess();
  v16 = *(v9 + 80);
  if (v16 >> 60 != 15)
  {
    v17 = *(v9 + 72);
    outlined copy of Data._Representation(v17, *(v9 + 80));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    outlined consume of Data?(v17, v16);
  }

  closure #7 in closure #1 in CLP_LogEntry_AONLoc_BtAdvertisement.traverse<A>(visitor:)(v9);
  closure #8 in closure #1 in CLP_LogEntry_AONLoc_BtAdvertisement.traverse<A>(visitor:)(v9);
  closure #9 in closure #1 in CLP_LogEntry_AONLoc_BtAdvertisement.traverse<A>(visitor:)(v9);
  closure #10 in closure #1 in CLP_LogEntry_AONLoc_BtAdvertisement.traverse<A>(visitor:)(v9);
  closure #11 in closure #1 in CLP_LogEntry_AONLoc_BtAdvertisement.traverse<A>(visitor:)(v9);
  closure #12 in closure #1 in CLP_LogEntry_AONLoc_BtAdvertisement.traverse<A>(visitor:)(v9);
  closure #13 in closure #1 in CLP_LogEntry_AONLoc_BtAdvertisement.traverse<A>(visitor:)(v9, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #7 in closure #1 in CLP_LogEntry_AONLoc_BtAdvertisement.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 88) != 3)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement.BtType and conformance CLP_LogEntry_AONLoc_BtAdvertisement.BtType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #8 in closure #1 in CLP_LogEntry_AONLoc_BtAdvertisement.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 104) & 1) == 0)
  {
    v3 = *(a1 + 96);
    return dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #9 in closure #1 in CLP_LogEntry_AONLoc_BtAdvertisement.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 120) & 1) == 0)
  {
    v3 = *(a1 + 112);
    return dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #10 in closure #1 in CLP_LogEntry_AONLoc_BtAdvertisement.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 128) & 1) == 0)
  {
    v3 = *(a1 + 124);
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #11 in closure #1 in CLP_LogEntry_AONLoc_BtAdvertisement.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 144))
  {
    v3 = *(a1 + 136);
    v4 = *(a1 + 144);

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #12 in closure #1 in CLP_LogEntry_AONLoc_BtAdvertisement.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 160))
  {
    v3 = *(a1 + 152);
    v4 = *(a1 + 160);

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #13 in closure #1 in CLP_LogEntry_AONLoc_BtAdvertisement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
  }

  outlined init with take of CLP_LogEntry_AONLoc_Type7Info(v8, v13, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Type7Info and conformance CLP_LogEntry_AONLoc_Type7Info, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_AONLoc_Type7Info(v13, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
}

BOOL closure #1 in static CLP_LogEntry_AONLoc_BtAdvertisement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  v78 = *(v4 - 8);
  v5 = *(v78 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v71[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSg_ADtMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSg_ADtMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v79 = &v71[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v71[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v71[-v16];
  swift_beginAccess();
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  swift_beginAccess();
  v20 = *(a2 + 24);
  if (v19)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v18 != *(a2 + 16))
    {
      v20 = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  swift_beginAccess();
  v23 = *(a2 + 40);
  if (v22)
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (v21 != *(a2 + 32))
    {
      v23 = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v24 = *(a1 + 44);
  v25 = *(a1 + 48);
  swift_beginAccess();
  v26 = *(a2 + 48);
  if (v25)
  {
    if (!*(a2 + 48))
    {
      return 0;
    }
  }

  else
  {
    if (v24 != *(a2 + 44))
    {
      v26 = 1;
    }

    if (v26)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v27 = *(a1 + 52);
  v28 = *(a1 + 56);
  swift_beginAccess();
  v29 = *(a2 + 56);
  if (v28)
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (v27 != *(a2 + 52))
    {
      v29 = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v30 = *(a1 + 60);
  v31 = *(a1 + 64);
  swift_beginAccess();
  v32 = *(a2 + 64);
  if (v31)
  {
    if (!*(a2 + 64))
    {
      return 0;
    }
  }

  else
  {
    if (v30 != *(a2 + 60))
    {
      v32 = 1;
    }

    if (v32)
    {
      return 0;
    }
  }

  v73 = v4;
  swift_beginAccess();
  v33 = *(a1 + 72);
  v34 = *(a1 + 80);
  swift_beginAccess();
  v35 = *(a2 + 72);
  v36 = *(a2 + 80);
  v77 = v33;
  v37 = v33;
  v38 = v34;
  v39 = v35;
  outlined copy of Data?(v37, v38);
  v74 = v39;
  outlined copy of Data?(v39, v36);
  v75 = v36;
  v76 = v38;
  if (v38 >> 60 == 15)
  {
    if (v36 >> 60 == 15)
    {

      outlined consume of Data?(v77, v76);
      goto LABEL_37;
    }

LABEL_35:
    outlined consume of Data?(v77, v76);
    outlined consume of Data?(v74, v75);
    return 0;
  }

  if (v36 >> 60 == 15)
  {
    goto LABEL_35;
  }

  v40 = v77;
  outlined copy of Data?(v77, v76);
  v41 = v74;
  v42 = v75;
  outlined copy of Data?(v74, v75);

  v43 = v40;
  v44 = v76;
  v72 = specialized static Data.== infix(_:_:)(v43, v76, v41, v42);
  outlined consume of Data?(v41, v42);
  outlined consume of Data?(v77, v44);
  outlined consume of Data?(v41, v42);
  outlined consume of Data?(v77, v44);
  if ((v72 & 1) == 0)
  {
    goto LABEL_73;
  }

LABEL_37:
  swift_beginAccess();
  v45 = *(a1 + 88);
  swift_beginAccess();
  v46 = *(a2 + 88);
  if (v45 == 3)
  {
    if (v46 != 3)
    {
      goto LABEL_73;
    }
  }

  else if (v46 == 3 || qword_23D1D7BB8[v45] != qword_23D1D7BB8[v46])
  {
    goto LABEL_73;
  }

  swift_beginAccess();
  v47 = *(a1 + 96);
  v48 = *(a1 + 104);
  swift_beginAccess();
  v49 = *(a2 + 104);
  if (v48)
  {
    if ((*(a2 + 104) & 1) == 0)
    {
      goto LABEL_73;
    }
  }

  else if ((*(a2 + 104) & 1) != 0 || v47 != *(a2 + 96))
  {
    goto LABEL_73;
  }

  swift_beginAccess();
  v50 = *(a1 + 112);
  v51 = *(a1 + 120);
  swift_beginAccess();
  v52 = *(a2 + 120);
  if (v51)
  {
    if ((*(a2 + 120) & 1) == 0)
    {
      goto LABEL_73;
    }
  }

  else if ((*(a2 + 120) & 1) != 0 || v50 != *(a2 + 112))
  {
    goto LABEL_73;
  }

  swift_beginAccess();
  v53 = *(a1 + 124);
  v54 = *(a1 + 128);
  swift_beginAccess();
  v55 = *(a2 + 128);
  if (v54)
  {
    if ((*(a2 + 128) & 1) == 0)
    {
      goto LABEL_73;
    }
  }

  else if ((*(a2 + 128) & 1) != 0 || v53 != *(a2 + 124))
  {
    goto LABEL_73;
  }

  swift_beginAccess();
  v56 = *(a1 + 136);
  v57 = *(a1 + 144);
  swift_beginAccess();
  v58 = *(a2 + 144);
  if (v57)
  {
    if (!v58 || (v56 != *(a2 + 136) || v57 != v58) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_73;
    }
  }

  else if (v58)
  {
    goto LABEL_73;
  }

  swift_beginAccess();
  v59 = *(a1 + 152);
  v60 = *(a1 + 160);
  swift_beginAccess();
  v61 = *(a2 + 160);
  if (!v60)
  {
    if (!v61)
    {
      goto LABEL_69;
    }

LABEL_73:

    return 0;
  }

  if (!v61 || (v59 != *(a2 + 152) || v60 != v61) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_73;
  }

LABEL_69:
  v62 = OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v62, v17, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
  v63 = OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info;
  swift_beginAccess();
  v64 = *(v8 + 48);
  v65 = v79;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v17, v79, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
  v77 = v64;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v63, &v65[v64], &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
  v66 = *(v78 + 48);
  if (v66(v65, 1, v73) == 1)
  {

    outlined destroy of Any?(v17, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
    if (v66(&v79[v77], 1, v73) == 1)
    {
      outlined destroy of Any?(v79, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
      return 1;
    }

LABEL_77:
    outlined destroy of Any?(v79, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSg_ADtMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSg_ADtMR);
    return 0;
  }

  v68 = v79;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v79, v15, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
  if (v66(&v68[v77], 1, v73) == 1)
  {

    outlined destroy of Any?(v17, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
    outlined destroy of CLP_LogEntry_AONLoc_Type7Info(v15, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
    goto LABEL_77;
  }

  v69 = v79;
  outlined init with take of CLP_LogEntry_AONLoc_Type7Info(&v79[v77], v7, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
  v70 = specialized static CLP_LogEntry_AONLoc_Type7Info.== infix(_:_:)(v15, v7);

  outlined destroy of CLP_LogEntry_AONLoc_Type7Info(v7, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
  outlined destroy of Any?(v17, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
  outlined destroy of CLP_LogEntry_AONLoc_Type7Info(v15, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
  outlined destroy of Any?(v69, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
  return (v70 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_AONLoc_BtAdvertisement(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_AONLoc_BtAdvertisement(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_AONLoc_BtAdvertisement(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_AONLoc_BtDeviceInfo.decodeMessage<A>(decoder:)()
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
      v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtDeviceInfo(0) + 20);
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_AONLoc_BtDeviceInfo.traverse<A>(visitor:)()
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_BtDeviceInfo(0);
  v3 = v0 + *(result + 20);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    outlined copy of Data._Representation(*v3, *(v3 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    result = outlined consume of Data?(v5, v4);
  }

  if (!v1)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

double protocol witness for Message.init() in conformance CLP_LogEntry_AONLoc_BtDeviceInfo@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = 0.0;
  *(a2 + *(a1 + 20)) = xmmword_23D1B1460;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_AONLoc_BtDeviceInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtDeviceInfo and conformance CLP_LogEntry_AONLoc_BtDeviceInfo, type metadata accessor for CLP_LogEntry_AONLoc_BtDeviceInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_AONLoc_BtDeviceInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtDeviceInfo and conformance CLP_LogEntry_AONLoc_BtDeviceInfo, type metadata accessor for CLP_LogEntry_AONLoc_BtDeviceInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_AONLoc_BtDeviceInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtDeviceInfo and conformance CLP_LogEntry_AONLoc_BtDeviceInfo, type metadata accessor for CLP_LogEntry_AONLoc_BtDeviceInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_AONLoc_BtNotification.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in CLP_LogEntry_AONLoc_BtNotification.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0);
      lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v8 = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
    if (*(v5 + v8[7]) != 2)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    if (*(v5 + v8[8]) != 2)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    if (*(v5 + v8[9]) != 2)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    v9 = v5 + v8[5];
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CLP_LogEntry_AONLoc_BtNotification.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 24), v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_AONLoc_Type7Info(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_AONLoc_Type7Info(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_AONLoc_BtNotification(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtNotification and conformance CLP_LogEntry_AONLoc_BtNotification, type metadata accessor for CLP_LogEntry_AONLoc_BtNotification);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_AONLoc_BtNotification(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtNotification and conformance CLP_LogEntry_AONLoc_BtNotification, type metadata accessor for CLP_LogEntry_AONLoc_BtNotification);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_AONLoc_BtNotification(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtNotification and conformance CLP_LogEntry_AONLoc_BtNotification, type metadata accessor for CLP_LogEntry_AONLoc_BtNotification);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_AONLoc_Type7Info.traverse<A>(visitor:)()
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
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

  closure #5 in CLP_LogEntry_AONLoc_Type7Info.traverse<A>(visitor:)(v0);
  closure #6 in CLP_LogEntry_AONLoc_Type7Info.traverse<A>(visitor:)(v0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #5 in CLP_LogEntry_AONLoc_Type7Info.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  if (*(a1 + *(result + 36)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #6 in CLP_LogEntry_AONLoc_Type7Info.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  if (*(a1 + *(result + 40)) != 8)
  {
    v3 = *(a1 + *(result + 40));
    lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Type7Info.Placement and conformance CLP_LogEntry_AONLoc_Type7Info.Placement();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

Swift::Int CLP_LogEntry_AONLoc_BtAdvertisement.hashValue.getter(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_AONLoc_Type7Info(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Type7Info and conformance CLP_LogEntry_AONLoc_Type7Info, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_AONLoc_Type7Info(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Type7Info and conformance CLP_LogEntry_AONLoc_Type7Info, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_AONLoc_Type7Info(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Type7Info and conformance CLP_LogEntry_AONLoc_Type7Info, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v24 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v22 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      while (1)
      {
        outlined init with copy of CLP_LogEntry_AONLoc_Type7Info(v14, v11, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);
        outlined init with copy of CLP_LogEntry_AONLoc_Type7Info(v15, v8, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);
        v17 = *(v4 + 20);
        v18 = *&v11[v17];
        v19 = *&v8[v17];
        if (v18 != v19)
        {
          v20 = *&v11[v17];

          v21 = closure #1 in static CLP_LogEntry_AONLoc_BtAdvertisement.== infix(_:_:)(v18, v19);

          if (!v21)
          {
            break;
          }
        }

        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v22 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of CLP_LogEntry_AONLoc_Type7Info(v8, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);
        outlined destroy of CLP_LogEntry_AONLoc_Type7Info(v11, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);
        if (v22)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v22 & 1;
      }

      outlined destroy of CLP_LogEntry_AONLoc_Type7Info(v8, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);
      outlined destroy of CLP_LogEntry_AONLoc_Type7Info(v11, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t specialized static CLP_LogEntry_AONLoc_BtNotification.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v37 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  v36 = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
  v17 = v36[6];
  v18 = *(v13 + 56);
  v38 = a1;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v17, v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v17, &v16[v18], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      outlined destroy of Any?(v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
LABEL_8:
      v23 = v38;
      if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementV_Tt1g5(*v38, *a2))
      {
        v24 = v36[7];
        v25 = *(v23 + v24);
        v26 = *(a2 + v24);
        if (v25 == 2)
        {
          if (v26 != 2)
          {
            goto LABEL_24;
          }
        }

        else if (v26 == 2 || ((v25 ^ v26) & 1) != 0)
        {
          goto LABEL_24;
        }

        v27 = v36[8];
        v28 = *(v23 + v27);
        v29 = *(a2 + v27);
        if (v28 == 2)
        {
          if (v29 != 2)
          {
            goto LABEL_24;
          }
        }

        else if (v29 == 2 || ((v28 ^ v29) & 1) != 0)
        {
          goto LABEL_24;
        }

        v30 = v36[9];
        v31 = *(v23 + v30);
        v32 = *(a2 + v30);
        if (v31 != 2)
        {
          if (v32 == 2 || ((v31 ^ v32) & 1) != 0)
          {
            goto LABEL_24;
          }

LABEL_26:
          v34 = v36[5];
          type metadata accessor for UnknownStorage();
          lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
          v20 = dispatch thunk of static Equatable.== infix(_:_:)();
          return v20 & 1;
        }

        if (v32 == 2)
        {
          goto LABEL_26;
        }
      }

LABEL_24:
      v20 = 0;
      return v20 & 1;
    }
  }

  else
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16, v11, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v21 = v37;
      outlined init with take of CLP_LogEntry_AONLoc_Type7Info(&v16[v18], v37, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of CLP_LogEntry_AONLoc_Type7Info(v21, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of CLP_LogEntry_AONLoc_Type7Info(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of Any?(v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      if ((v22 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_8;
    }

    outlined destroy of CLP_LogEntry_AONLoc_Type7Info(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  outlined destroy of Any?(v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static CLP_LogEntry_AONLoc_BtDeviceInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtDeviceInfo(0) + 20);
  v6 = *(a1 + v4);
  v5 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v9 = *v7;
  v8 = v7[1];
  if (v5 >> 60 != 15)
  {
    if (v8 >> 60 != 15)
    {
      outlined copy of Data?(v6, v5);
      outlined copy of Data?(v9, v8);
      v11 = specialized static Data.== infix(_:_:)(v6, v5, v9, v8);
      outlined consume of Data?(v9, v8);
      outlined consume of Data?(v6, v5);
      if (v11)
      {
        goto LABEL_8;
      }

      return 0;
    }

LABEL_5:
    outlined copy of Data?(v6, v5);
    outlined copy of Data?(v9, v8);
    outlined consume of Data?(v6, v5);
    outlined consume of Data?(v9, v8);
    return 0;
  }

  if (v8 >> 60 != 15)
  {
    goto LABEL_5;
  }

  outlined copy of Data?(v6, v5);
  outlined copy of Data?(v9, v8);
  outlined consume of Data?(v6, v5);
LABEL_8:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_AONLoc_Type7Info.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
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
  if (v21 == 8)
  {
    if (v22 != 8)
    {
      return 0;
    }
  }

  else if (v21 != v22)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_AONLoc_BtAdvertisement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = closure #1 in static CLP_LogEntry_AONLoc_BtAdvertisement.== infix(_:_:)(v5, v6);

    if (!v8)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Type7Info.Placement and conformance CLP_LogEntry_AONLoc_Type7Info.Placement()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Type7Info.Placement and conformance CLP_LogEntry_AONLoc_Type7Info.Placement;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Type7Info.Placement and conformance CLP_LogEntry_AONLoc_Type7Info.Placement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Type7Info.Placement and conformance CLP_LogEntry_AONLoc_Type7Info.Placement);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Type7Info.Placement and conformance CLP_LogEntry_AONLoc_Type7Info.Placement;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Type7Info.Placement and conformance CLP_LogEntry_AONLoc_Type7Info.Placement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Type7Info.Placement and conformance CLP_LogEntry_AONLoc_Type7Info.Placement);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Type7Info.Placement and conformance CLP_LogEntry_AONLoc_Type7Info.Placement;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Type7Info.Placement and conformance CLP_LogEntry_AONLoc_Type7Info.Placement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Type7Info.Placement and conformance CLP_LogEntry_AONLoc_Type7Info.Placement);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Type7Info.Placement and conformance CLP_LogEntry_AONLoc_Type7Info.Placement;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Type7Info.Placement and conformance CLP_LogEntry_AONLoc_Type7Info.Placement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Type7Info.Placement and conformance CLP_LogEntry_AONLoc_Type7Info.Placement);
  }

  return result;
}

uint64_t type metadata completion function for CLP_LogEntry_AONLoc_BtAdvertisement()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for CLP_LogEntry_AONLoc_BtDeviceInfo()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for Data?);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for CLP_LogEntry_AONLoc_BtNotification()
{
  type metadata accessor for [CLP_LogEntry_AONLoc_BtAdvertisement](319, &lazy cache variable for type metadata for [CLP_LogEntry_AONLoc_BtAdvertisement], type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      type metadata accessor for [CLP_LogEntry_AONLoc_BtAdvertisement](319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_TimeStamp?, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Double?(319, &lazy cache variable for type metadata for Bool?);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for [CLP_LogEntry_AONLoc_BtAdvertisement](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata completion function for CLP_LogEntry_AONLoc_Type7Info()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for Bool?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for CLP_LogEntry_AONLoc_Type7Info.Placement?);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass()
{
  type metadata accessor for [CLP_LogEntry_AONLoc_BtAdvertisement](319, &lazy cache variable for type metadata for CLP_LogEntry_AONLoc_Type7Info?, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gpsd_SuplInitDecodeResult(uint64_t a1, uint64_t a2)
{
  inited = lazy protocol witness table accessor for type Proto_Gpsd_SuplInitDecodeResult and conformance Proto_Gpsd_SuplInitDecodeResult();

  return MEMORY[0x28217E238](a1, a2, inited);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gpsd_CompressionType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gpsd_CompressionType and conformance Proto_Gpsd_CompressionType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gpsd_LtlInfoType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gpsd_LtlInfoType and conformance Proto_Gpsd_LtlInfoType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t Proto_Gpsd_Request.machContinuousTimeNs.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  swift_beginAccess();
  if (*(v1 + 24))
  {
    return 0;
  }

  else
  {
    return *(v1 + 16);
  }
}

uint64_t Proto_Gpsd_Request.machContinuousTimeNs.setter(uint64_t a1)
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

  result = swift_beginAccess();
  *(v7 + 16) = a1;
  *(v7 + 24) = 0;
  return result;
}

void (*Proto_Gpsd_Request.machContinuousTimeNs.modify(uint64_t *a1))(uint64_t *a1)
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
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (*(v6 + 24))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return Proto_Gpsd_Request.machContinuousTimeNs.modify;
}

void Proto_Gpsd_Request.machContinuousTimeNs.modify(uint64_t *a1)
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
    v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 16) = v2;
  *(v7 + 24) = 0;

  free(v1);
}

BOOL Proto_Gpsd_Request.hasMachContinuousTimeNs.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  swift_beginAccess();
  return (*(v1 + 24) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearMachContinuousTimeNs()()
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
    v10 = v5;
    v5 = v9;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v10);
    *(v1 + v2) = v9;
  }

  swift_beginAccess();
  *(v5 + 16) = 0;
  *(v5 + 24) = 1;
}

uint64_t Proto_Gpsd_Request.transactionID.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
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

uint64_t Proto_Gpsd_Request.transactionID.setter(int a1)
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

  result = swift_beginAccess();
  *(v7 + 28) = a1;
  *(v7 + 32) = 0;
  return result;
}

void (*Proto_Gpsd_Request.transactionID.modify(uint64_t *a1))(uint64_t *a1)
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
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 28);
  if (*(v6 + 32))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gpsd_Request.transactionID.modify;
}

void Proto_Gpsd_Request.transactionID.modify(uint64_t *a1)
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
    v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 28) = v2;
  *(v7 + 32) = 0;

  free(v1);
}

BOOL Proto_Gpsd_Request.hasTransactionID.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  swift_beginAccess();
  return (*(v1 + 32) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearTransactionID()()
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

  swift_beginAccess();
  *(v5 + 28) = 0;
  *(v5 + 32) = 1;
}

uint64_t Proto_Gpsd_Request.type.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  swift_beginAccess();
  if (*(v1 + 33) == 62)
  {
    return 0;
  }

  else
  {
    return *(v1 + 33);
  }
}

uint64_t Proto_Gpsd_Request.type.setter(char a1)
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

  result = swift_beginAccess();
  *(v7 + 33) = a1;
  return result;
}

void (*Proto_Gpsd_Request.type.modify(uint64_t *a1))(uint64_t *a1)
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
  swift_beginAccess();
  v7 = *(v6 + 33);
  if (v7 == 62)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return Proto_Gpsd_Request.type.modify;
}

void Proto_Gpsd_Request.type.modify(uint64_t *a1)
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
    v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 33) = v2;

  free(v1);
}

BOOL Proto_Gpsd_Request.hasType.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  swift_beginAccess();
  return *(v1 + 33) != 62;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearType()()
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
    v10 = v5;
    v5 = v9;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v10);
    *(v1 + v2) = v9;
  }

  swift_beginAccess();
  *(v5 + 33) = 62;
}

uint64_t Proto_Gpsd_Request.injectAssistancePosition.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMd, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMd, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMR);
  v9 = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gpsd_InjectAssistancePosition);
  }

  UnknownStorage.init()();
  v11 = v9[5];
  v12 = type metadata accessor for Proto_Gnss_Position(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  *(a1 + v9[6]) = 4;
  *(a1 + v9[7]) = 2;
  v13 = a1 + v9[8];
  *v13 = 0;
  *(v13 + 8) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMd, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_InjectAssistancePosition.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
  v3 = v2[5];
  v4 = type metadata accessor for Proto_Gnss_Position(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  *(a1 + v2[6]) = 4;
  *(a1 + v2[7]) = 2;
  v6 = a1 + v2[8];
  *v6 = 0;
  *(v6 + 8) = 1;
  return result;
}

uint64_t Proto_Gpsd_Request.injectAssistancePosition.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMd, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMR);
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

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gpsd_InjectAssistancePosition);
  v17 = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMd, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.injectAssistancePosition.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMd, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
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
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMd, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v9[5];
    v20 = type metadata accessor for Proto_Gnss_Position(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    *(v14 + v9[6]) = 4;
    *(v14 + v9[7]) = 2;
    v21 = v14 + v9[8];
    *v21 = 0;
    *(v21 + 8) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMd, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_InjectAssistancePosition);
  }

  return Proto_Gpsd_Request.injectAssistancePosition.modify;
}

void Proto_Gpsd_Request.injectAssistancePosition.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_InjectAssistancePosition);
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
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gpsd_InjectAssistancePosition);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMd, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gpsd_InjectAssistancePosition);
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
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gpsd_InjectAssistancePosition);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMd, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasInjectAssistancePosition.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMd, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMd, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMR);
  v7 = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMd, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearInjectAssistancePosition()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMd, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMR);
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

  v15 = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMd, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.injectAssistanceTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMR);
  v9 = type metadata accessor for Proto_Gpsd_InjectAssistanceTime(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gpsd_InjectAssistanceTime);
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
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.injectAssistanceTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMR);
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

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gpsd_InjectAssistanceTime);
  v17 = type metadata accessor for Proto_Gpsd_InjectAssistanceTime(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.injectAssistanceTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_InjectAssistanceTime(0);
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
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMR);
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
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_InjectAssistanceTime);
  }

  return Proto_Gpsd_Request.injectAssistanceTime.modify;
}

void Proto_Gpsd_Request.injectAssistanceTime.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_InjectAssistanceTime);
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
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gpsd_InjectAssistanceTime);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gpsd_InjectAssistanceTime);
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
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gpsd_InjectAssistanceTime);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasInjectAssistanceTime.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMR);
  v7 = type metadata accessor for Proto_Gpsd_InjectAssistanceTime(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearInjectAssistanceTime()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMR);
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

  v15 = type metadata accessor for Proto_Gpsd_InjectAssistanceTime(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.setAssistancePressure.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistancePressure;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMR);
  v9 = type metadata accessor for Proto_Gpsd_SetAssistancePressure(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gpsd_SetAssistancePressure);
  }

  *a1 = MEMORY[0x277D84F90];
  v11 = a1 + *(v9 + 20);
  UnknownStorage.init()();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.setAssistancePressure.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMR);
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

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gpsd_SetAssistancePressure);
  v17 = type metadata accessor for Proto_Gpsd_SetAssistancePressure(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistancePressure;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.setAssistancePressure.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_SetAssistancePressure(0);
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
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistancePressure;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    v19 = v14 + *(v9 + 20);
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_SetAssistancePressure);
  }

  return Proto_Gpsd_Request.setAssistancePressure.modify;
}

void Proto_Gpsd_Request.setAssistancePressure.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetAssistancePressure);
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
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gpsd_SetAssistancePressure);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistancePressure;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gpsd_SetAssistancePressure);
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
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gpsd_SetAssistancePressure);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistancePressure;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasSetAssistancePressure.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistancePressure;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMR);
  v7 = type metadata accessor for Proto_Gpsd_SetAssistancePressure(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearSetAssistancePressure()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMR);
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

  v15 = type metadata accessor for Proto_Gpsd_SetAssistancePressure(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistancePressure;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.setAssistanceAccel.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMd, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAccel;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMd, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMR);
  v9 = type metadata accessor for Proto_Gpsd_SetAssistanceAccel(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gpsd_SetAssistanceAccel);
  }

  *a1 = MEMORY[0x277D84F90];
  v11 = a1 + *(v9 + 20);
  UnknownStorage.init()();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMd, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_SetAssistancePressure.init()@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v2 = a2 + *(a1(0) + 20);
  return UnknownStorage.init()();
}

uint64_t Proto_Gpsd_Request.setAssistanceAccel.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMd, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMR);
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

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gpsd_SetAssistanceAccel);
  v17 = type metadata accessor for Proto_Gpsd_SetAssistanceAccel(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAccel;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMd, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.setAssistanceAccel.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMd, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_SetAssistanceAccel(0);
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
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAccel;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMd, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    v19 = v14 + *(v9 + 20);
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMd, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_SetAssistanceAccel);
  }

  return Proto_Gpsd_Request.setAssistanceAccel.modify;
}

void Proto_Gpsd_Request.setAssistanceAccel.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetAssistanceAccel);
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
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gpsd_SetAssistanceAccel);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAccel;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMd, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gpsd_SetAssistanceAccel);
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
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gpsd_SetAssistanceAccel);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAccel;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMd, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasSetAssistanceAccel.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMd, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAccel;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMd, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMR);
  v7 = type metadata accessor for Proto_Gpsd_SetAssistanceAccel(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMd, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearSetAssistanceAccel()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMd, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMR);
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

  v15 = type metadata accessor for Proto_Gpsd_SetAssistanceAccel(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAccel;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMd, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.setAssistanceGyro.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMd, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceGyro;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMd, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMR);
  v9 = type metadata accessor for Proto_Gpsd_SetAssistanceGyro(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gpsd_SetAssistanceGyro);
  }

  *a1 = MEMORY[0x277D84F90];
  v11 = a1 + *(v9 + 20);
  UnknownStorage.init()();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMd, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.setAssistanceGyro.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMd, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMR);
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

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gpsd_SetAssistanceGyro);
  v17 = type metadata accessor for Proto_Gpsd_SetAssistanceGyro(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceGyro;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMd, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.setAssistanceGyro.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMd, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_SetAssistanceGyro(0);
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
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceGyro;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMd, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    v19 = v14 + *(v9 + 20);
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMd, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_SetAssistanceGyro);
  }

  return Proto_Gpsd_Request.setAssistanceGyro.modify;
}

void Proto_Gpsd_Request.setAssistanceGyro.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetAssistanceGyro);
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
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gpsd_SetAssistanceGyro);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceGyro;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMd, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gpsd_SetAssistanceGyro);
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
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gpsd_SetAssistanceGyro);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceGyro;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMd, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasSetAssistanceGyro.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMd, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceGyro;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMd, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMR);
  v7 = type metadata accessor for Proto_Gpsd_SetAssistanceGyro(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMd, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearSetAssistanceGyro()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMd, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMR);
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

  v15 = type metadata accessor for Proto_Gpsd_SetAssistanceGyro(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceGyro;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMd, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.setAssistanceDem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMd, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceDem;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMd, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMR);
  v9 = type metadata accessor for Proto_Gpsd_SetAssistanceDem(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gpsd_SetAssistanceDem);
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
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMd, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMR);
  }

  return result;
}

int *Proto_Gpsd_InjectAssistanceTime.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = a1(0);
  v5 = a2 + result[5];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a2 + result[6];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + result[7];
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

uint64_t Proto_Gpsd_Request.setAssistanceDem.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMd, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMR);
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

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gpsd_SetAssistanceDem);
  v17 = type metadata accessor for Proto_Gpsd_SetAssistanceDem(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceDem;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMd, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.setAssistanceDem.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMd, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_SetAssistanceDem(0);
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
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceDem;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMd, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMR);
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
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMd, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_SetAssistanceDem);
  }

  return Proto_Gpsd_Request.setAssistanceDem.modify;
}

void Proto_Gpsd_Request.setAssistanceDem.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetAssistanceDem);
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
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gpsd_SetAssistanceDem);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceDem;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMd, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gpsd_SetAssistanceDem);
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
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gpsd_SetAssistanceDem);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceDem;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMd, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasSetAssistanceDem.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMd, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceDem;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMd, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMR);
  v7 = type metadata accessor for Proto_Gpsd_SetAssistanceDem(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMd, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearSetAssistanceDem()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMd, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMR);
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

  v15 = type metadata accessor for Proto_Gpsd_SetAssistanceDem(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceDem;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMd, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.setAssistanceMapVector.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v19 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMapVector;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMR);
  v9 = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gpsd_SetAssistanceMapVector);
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
  *(a1 + v9[8]) = 2;
  v14 = a1 + v9[9];
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = a1 + v9[10];
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = a1 + v9[11];
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = a1 + v9[12];
  *v17 = 0;
  *(v17 + 8) = 1;
  *(a1 + v9[13]) = 2;
  *(a1 + v9[14]) = 2;
  *(a1 + v9[15]) = 2;
  *(a1 + v9[16]) = 2;
  *(a1 + v9[17]) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMR);
  }

  return result;
}

int *Proto_Gpsd_SetAssistanceMapVector.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 8) = 1;
  *(a1 + result[8]) = 2;
  v6 = a1 + result[9];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1 + result[10];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1 + result[11];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a1 + result[12];
  *v9 = 0;
  *(v9 + 8) = 1;
  *(a1 + result[13]) = 2;
  *(a1 + result[14]) = 2;
  *(a1 + result[15]) = 2;
  *(a1 + result[16]) = 2;
  *(a1 + result[17]) = 2;
  return result;
}

uint64_t Proto_Gpsd_Request.setAssistanceMapVector.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMR);
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

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gpsd_SetAssistanceMapVector);
  v17 = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMapVector;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.setAssistanceMapVector.modify(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x60uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[7] = v7;
  v8 = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  v5[8] = v8;
  v9 = *(v8 - 8);
  v5[9] = v9;
  v10 = *(v9 + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v5[11] = v11;
  Proto_Gpsd_Request.setAssistanceMapVector.getter(v11);
  return Proto_Gpsd_Request.setAssistanceMapVector.modify;
}

void Proto_Gpsd_Request.setAssistanceMapVector.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[6];
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(v2[11], v2[10], type metadata accessor for Proto_Gpsd_SetAssistanceMapVector);
    v4 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
    v5 = *(v3 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v3 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      v11 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v7);
      *(v3 + v4) = v11;
      v7 = v11;
    }

    v13 = v2[10];
    v12 = v2[11];
    v14 = v2[8];
    v15 = v2[9];
    v16 = v2[7];
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v13, v16, type metadata accessor for Proto_Gpsd_SetAssistanceMapVector);
    (*(v15 + 56))(v16, 0, 1, v14);
    v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMapVector;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v16, v7 + v17, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v12, type metadata accessor for Proto_Gpsd_SetAssistanceMapVector);
  }

  else
  {
    v18 = v2[6];
    v19 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
    v20 = *(v18 + v19);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v18 + v19);
    if ((v21 & 1) == 0)
    {
      v23 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      v26 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v22);
      *(v18 + v19) = v26;
      v22 = v26;
    }

    v13 = v2[10];
    v12 = v2[11];
    v27 = v2[8];
    v28 = v2[9];
    v16 = v2[7];
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v12, v16, type metadata accessor for Proto_Gpsd_SetAssistanceMapVector);
    (*(v28 + 56))(v16, 0, 1, v27);
    v29 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMapVector;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v16, v22 + v29, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMR);
    swift_endAccess();
  }

  free(v12);
  free(v13);
  free(v16);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasSetAssistanceMapVector.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMapVector;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMR);
  v7 = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearSetAssistanceMapVector()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMR);
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

  v15 = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMapVector;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMd, &_s10ALProtobuf33Proto_Gpsd_SetAssistanceMapVectorVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.setAssistanceMotionActivityContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMd, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMotionActivityContext;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMd, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMR);
  v9 = type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext);
  }

  UnknownStorage.init()();
  v11 = a1 + v9[5];
  *v11 = 0;
  *(v11 + 8) = 1;
  *(a1 + v9[6]) = 10;
  *(a1 + v9[7]) = 5;
  *(a1 + v9[8]) = 6;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMd, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMR);
  }

  return result;
}

int *Proto_Gpsd_SetAssistanceMotionActivityContext.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  *(a1 + result[6]) = 10;
  *(a1 + result[7]) = 5;
  *(a1 + result[8]) = 6;
  return result;
}

uint64_t Proto_Gpsd_Request.setAssistanceMotionActivityContext.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMd, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMR);
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

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext);
  v17 = type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMotionActivityContext;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMd, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.setAssistanceMotionActivityContext.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMd, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0);
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
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMotionActivityContext;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMd, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 8) = 1;
    *(v14 + v9[6]) = 10;
    *(v14 + v9[7]) = 5;
    *(v14 + v9[8]) = 6;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMd, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext);
  }

  return Proto_Gpsd_Request.setAssistanceMotionActivityContext.modify;
}

void Proto_Gpsd_Request.setAssistanceMotionActivityContext.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext);
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
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMotionActivityContext;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMd, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext);
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
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMotionActivityContext;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMd, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasSetAssistanceMotionActivityContext.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMd, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMotionActivityContext;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMd, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMR);
  v7 = type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMd, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearSetAssistanceMotionActivityContext()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMd, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMR);
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

  v15 = type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMotionActivityContext;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMd, &_s10ALProtobuf45Proto_Gpsd_SetAssistanceMotionActivityContextVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.setAssistanceMountState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMd, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMountState;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMd, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMR);
  v9 = type metadata accessor for Proto_Gpsd_SetAssistanceMountState(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gpsd_SetAssistanceMountState);
  }

  UnknownStorage.init()();
  v11 = a1 + *(v9 + 20);
  *v11 = 0;
  *(v11 + 8) = 1;
  *(a1 + *(v9 + 24)) = 4;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMd, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_SetAssistanceMountState.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMountState(0);
  v3 = a1 + *(result + 20);
  *v3 = 0;
  *(v3 + 8) = 1;
  *(a1 + *(result + 24)) = 4;
  return result;
}

uint64_t Proto_Gpsd_Request.setAssistanceMountState.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMd, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMR);
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

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gpsd_SetAssistanceMountState);
  v17 = type metadata accessor for Proto_Gpsd_SetAssistanceMountState(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMountState;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMd, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.setAssistanceMountState.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMd, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_SetAssistanceMountState(0);
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
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMountState;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMd, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + *(v9 + 20);
    *v19 = 0;
    *(v19 + 8) = 1;
    *(v14 + *(v9 + 24)) = 4;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMd, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_SetAssistanceMountState);
  }

  return Proto_Gpsd_Request.setAssistanceMountState.modify;
}

void Proto_Gpsd_Request.setAssistanceMountState.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetAssistanceMountState);
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
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gpsd_SetAssistanceMountState);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMountState;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMd, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gpsd_SetAssistanceMountState);
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
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gpsd_SetAssistanceMountState);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMountState;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMd, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasSetAssistanceMountState.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMd, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMountState;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMd, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMR);
  v7 = type metadata accessor for Proto_Gpsd_SetAssistanceMountState(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMd, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearSetAssistanceMountState()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMd, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMR);
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

  v15 = type metadata accessor for Proto_Gpsd_SetAssistanceMountState(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMountState;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMd, &_s10ALProtobuf34Proto_Gpsd_SetAssistanceMountStateVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.setAssistanceSignalEnvironment.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMd, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSignalEnvironment;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMd, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMR);
  v9 = type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment);
  }

  UnknownStorage.init()();
  *(a1 + *(v9 + 20)) = 8;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMd, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.setAssistanceSignalEnvironment.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMd, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMR);
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

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment);
  v17 = type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSignalEnvironment;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMd, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.setAssistanceSignalEnvironment.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMd, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment(0);
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
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSignalEnvironment;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMd, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + *(v9 + 20)) = 8;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMd, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment);
  }

  return Proto_Gpsd_Request.setAssistanceSignalEnvironment.modify;
}

void Proto_Gpsd_Request.setAssistanceSignalEnvironment.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment);
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
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSignalEnvironment;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMd, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment);
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
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSignalEnvironment;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMd, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasSetAssistanceSignalEnvironment.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMd, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSignalEnvironment;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMd, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMR);
  v7 = type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMd, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearSetAssistanceSignalEnvironment()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMd, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMR);
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

  v15 = type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSignalEnvironment;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMd, &_s10ALProtobuf41Proto_Gpsd_SetAssistanceSignalEnvironmentVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.setAssistanceSpeedConstraint.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMd, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSpeedConstraint;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMd, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMR);
  v9 = type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint);
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
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMd, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMR);
  }

  return result;
}

int *Proto_Gpsd_SetAssistanceSpeedConstraint.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0);
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

uint64_t Proto_Gpsd_Request.setAssistanceSpeedConstraint.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMd, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMR);
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

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint);
  v17 = type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSpeedConstraint;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMd, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.setAssistanceSpeedConstraint.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMd, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0);
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
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSpeedConstraint;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMd, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMR);
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
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMd, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint);
  }

  return Proto_Gpsd_Request.setAssistanceSpeedConstraint.modify;
}

void Proto_Gpsd_Request.setAssistanceSpeedConstraint.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint);
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
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSpeedConstraint;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMd, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint);
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
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSpeedConstraint;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMd, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasSetAssistanceSpeedConstraint.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMd, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSpeedConstraint;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMd, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMR);
  v7 = type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMd, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearSetAssistanceSpeedConstraint()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMd, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMR);
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

  v15 = type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSpeedConstraint;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMd, &_s10ALProtobuf39Proto_Gpsd_SetAssistanceSpeedConstraintVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.setAssistanceAlongTrackVelocity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMd, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAlongTrackVelocity;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMd, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMR);
  v9 = type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity);
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
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMd, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.setAssistanceAlongTrackVelocity.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMd, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMR);
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

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity);
  v17 = type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAlongTrackVelocity;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMd, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.setAssistanceAlongTrackVelocity.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMd, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity(0);
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
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAlongTrackVelocity;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMd, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMR);
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
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMd, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity);
  }

  return Proto_Gpsd_Request.setAssistanceAlongTrackVelocity.modify;
}

void Proto_Gpsd_Request.setAssistanceAlongTrackVelocity.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity);
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
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAlongTrackVelocity;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMd, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity);
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
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAlongTrackVelocity;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMd, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasSetAssistanceAlongTrackVelocity.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMd, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAlongTrackVelocity;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMd, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMR);
  v7 = type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMd, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearSetAssistanceAlongTrackVelocity()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMd, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMR);
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

  v15 = type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAlongTrackVelocity;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMd, &_s10ALProtobuf42Proto_Gpsd_SetAssistanceAlongTrackVelocityVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.injectAssistanceFile.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceFile;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMR);
  v9 = type metadata accessor for Proto_Gpsd_InjectAssistanceFile(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gpsd_InjectAssistanceFile);
  }

  UnknownStorage.init()();
  *(a1 + *(v9 + 20)) = xmmword_23D1B1460;
  *(a1 + *(v9 + 24)) = 3;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMR);
  }

  return result;
}

double Proto_Gpsd_InjectAssistanceFile.init()@<D0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gpsd_InjectAssistanceFile(0);
  result = 0.0;
  *(a1 + *(v2 + 20)) = xmmword_23D1B1460;
  *(a1 + *(v2 + 24)) = 3;
  return result;
}

uint64_t Proto_Gpsd_Request.injectAssistanceFile.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMR);
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

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gpsd_InjectAssistanceFile);
  v17 = type metadata accessor for Proto_Gpsd_InjectAssistanceFile(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceFile;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.injectAssistanceFile.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_InjectAssistanceFile(0);
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
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceFile;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + *(v9 + 20)) = xmmword_23D1B1460;
    *(v14 + *(v9 + 24)) = 3;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_InjectAssistanceFile);
  }

  return Proto_Gpsd_Request.injectAssistanceFile.modify;
}

void Proto_Gpsd_Request.injectAssistanceFile.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_InjectAssistanceFile);
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
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gpsd_InjectAssistanceFile);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceFile;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gpsd_InjectAssistanceFile);
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
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gpsd_InjectAssistanceFile);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceFile;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasInjectAssistanceFile.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceFile;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMR);
  v7 = type metadata accessor for Proto_Gpsd_InjectAssistanceFile(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearInjectAssistanceFile()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMR);
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

  v15 = type metadata accessor for Proto_Gpsd_InjectAssistanceFile(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceFile;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceFileVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.injectRtiFile.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMd, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRtiFile;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMd, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMR);
  v9 = type metadata accessor for Proto_Gpsd_InjectRtiFile(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v6, a1, type metadata accessor for Proto_Gpsd_InjectRtiFile);
  }

  UnknownStorage.init()();
  *(a1 + *(v9 + 20)) = xmmword_23D1B1460;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMd, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.injectRtiFile.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMd, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMR);
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

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v7, type metadata accessor for Proto_Gpsd_InjectRtiFile);
  v17 = type metadata accessor for Proto_Gpsd_InjectRtiFile(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRtiFile;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMd, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.injectRtiFile.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMd, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_InjectRtiFile(0);
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
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRtiFile;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMd, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + *(v9 + 20)) = xmmword_23D1B1460;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMd, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_InjectRtiFile);
  }

  return Proto_Gpsd_Request.injectRtiFile.modify;
}

void Proto_Gpsd_Request.injectRtiFile.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_InjectRtiFile);
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
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v15, v19, type metadata accessor for Proto_Gpsd_InjectRtiFile);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRtiFile;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMd, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v14, type metadata accessor for Proto_Gpsd_InjectRtiFile);
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
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v14, v19, type metadata accessor for Proto_Gpsd_InjectRtiFile);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRtiFile;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMd, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasInjectRtiFile.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMd, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRtiFile;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMd, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMR);
  v7 = type metadata accessor for Proto_Gpsd_InjectRtiFile(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMd, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearInjectRtiFile()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMd, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMR);
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

  v15 = type metadata accessor for Proto_Gpsd_InjectRtiFile(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRtiFile;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMd, &_s10ALProtobuf24Proto_Gpsd_InjectRtiFileVSgMR);
  swift_endAccess();
}