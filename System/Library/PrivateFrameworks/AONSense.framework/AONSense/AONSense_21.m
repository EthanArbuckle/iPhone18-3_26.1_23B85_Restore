uint64_t specialized static Proto_Gnss_Emergency_GanssNavModelAddData.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  v5 = v4[6];
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

  v10 = v4[7];
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

  v15 = v4[8];
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

  v20 = v4[9];
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
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf43Proto_Gnss_Emergency_GanssStoredSatDataElemV_Tt1g5Tm(*a1, *a2, type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem, type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem))
  {
    v26 = v25[5];
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static Proto_Gnss_Emergency_WlanMeasurementElement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement(0);
  v5 = v4[5];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      outlined copy of Data?(v7, v6);
      outlined copy of Data?(v10, v9);
      outlined consume of Data?(v7, v6);
      goto LABEL_8;
    }

LABEL_5:
    outlined copy of Data?(v7, v6);
    outlined copy of Data?(v10, v9);
    outlined consume of Data?(v7, v6);
    outlined consume of Data?(v10, v9);
    return 0;
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_5;
  }

  outlined copy of Data?(v7, v6);
  outlined copy of Data?(v10, v9);
  v12 = specialized static Data.== infix(_:_:)(v7, v6, v10, v9);
  outlined consume of Data?(v10, v9);
  outlined consume of Data?(v7, v6);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v13 = v4[6];
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

  v16 = v4[7];
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

  v19 = v4[8];
  v20 = (a1 + v19);
  v21 = *(a1 + v19 + 4);
  v22 = (a2 + v19);
  v23 = *(a2 + v19 + 4);
  if (v21)
  {
    if (!v23)
    {
      return 0;
    }
  }

  else
  {
    if (*v20 != *v22)
    {
      LOBYTE(v23) = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  v24 = v4[9];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 4);
  v27 = (a2 + v24);
  v28 = *(a2 + v24 + 4);
  if ((v26 & 1) == 0)
  {
    if (*v25 != *v27)
    {
      LOBYTE(v28) = 1;
    }

    if ((v28 & 1) == 0)
    {
      goto LABEL_30;
    }

    return 0;
  }

  if (!v28)
  {
    return 0;
  }

LABEL_30:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_WlanMeasurementList.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList(0);
  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 6)
  {
    if (v7 != 6)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf43Proto_Gnss_Emergency_WlanMeasurementElementV_Tt1g5Tm(*a1, *a2, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement, specialized static Proto_Gnss_Emergency_WlanMeasurementElement.== infix(_:_:)))
  {
    v8 = *(v4 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static Proto_Gnss_Emergency_GpsNavigationModel.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  v5 = v4[6];
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

  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf33Proto_Gnss_Emergency_GpsEphemerisV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v10 = v4[7];
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11 == 6)
  {
    if (v12 != 6)
    {
      return 0;
    }
  }

  else if (v11 != v12)
  {
    return 0;
  }

  v13 = v4[8];
  v14 = *(a1 + v13);
  v15 = *(a2 + v13);
  if (v14 != 7)
  {
    if (v14 == v15)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (v15 != 7)
  {
    return 0;
  }

LABEL_16:
  v16 = v4[9];
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

  v22 = v4[5];
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_GanssDataBitAssist.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  v5 = v4[6];
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

  v10 = v4[7];
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

  v15 = v4[8];
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

  v20 = v4[9];
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

  v25 = v4[10];
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

  v30 = v4;
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZs5Int32V_Tt1g5(*a1, *a2))
  {
    v31 = v30[5];
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static Proto_Gnss_Emergency_ReferenceLocation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
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

  v50 = v4[14];
  v51 = (a1 + v50);
  v52 = *(a1 + v50 + 4);
  v53 = (a2 + v50);
  v54 = *(a2 + v50 + 4);
  if (v52)
  {
    if (!v54)
    {
      return 0;
    }
  }

  else
  {
    if (*v51 != *v53)
    {
      LOBYTE(v54) = 1;
    }

    if (v54)
    {
      return 0;
    }
  }

  v55 = v4[15];
  v56 = (a1 + v55);
  v57 = *(a1 + v55 + 4);
  v58 = (a2 + v55);
  v59 = *(a2 + v55 + 4);
  if (v57)
  {
    if (!v59)
    {
      return 0;
    }
  }

  else
  {
    if (*v56 != *v58)
    {
      LOBYTE(v59) = 1;
    }

    if (v59)
    {
      return 0;
    }
  }

  v60 = v4[16];
  v61 = *(a1 + v60);
  v62 = *(a2 + v60);
  if (v61 == 6)
  {
    if (v62 != 6)
    {
      return 0;
    }
  }

  else if (v61 != v62)
  {
    return 0;
  }

  v63 = v4[17];
  v64 = *(a1 + v63);
  v65 = *(a2 + v63);
  if (v64 != 7)
  {
    if (v64 == v65)
    {
      goto LABEL_75;
    }

    return 0;
  }

  if (v65 != 7)
  {
    return 0;
  }

LABEL_75:
  v66 = v4[18];
  v67 = (a1 + v66);
  v68 = *(a1 + v66 + 4);
  v69 = (a2 + v66);
  v70 = *(a2 + v66 + 4);
  if (v68)
  {
    if (!v70)
    {
      return 0;
    }
  }

  else
  {
    if (*v67 != *v69)
    {
      LOBYTE(v70) = 1;
    }

    if (v70)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_UtranGanssTimeMeasured.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSg_ADtMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - v15;
  v17 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v18 = v17[5];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 8);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_25;
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
      goto LABEL_25;
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
      goto LABEL_25;
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
      goto LABEL_25;
    }
  }

  v28 = v17[7];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 4);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 4);
  if (v30)
  {
    if (!v32)
    {
      goto LABEL_25;
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
      goto LABEL_25;
    }
  }

  v33 = v17[8];
  v34 = *(v13 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v33, v16, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
  v35 = a2 + v33;
  v36 = v34;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v35, &v16[v34], &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
  v37 = *(v5 + 48);
  if (v37(v16, 1, v4) == 1)
  {
    if (v37(&v16[v36], 1, v4) == 1)
    {
      outlined destroy of Any?(v16, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
LABEL_28:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v38 & 1;
    }

    goto LABEL_24;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16, v12, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
  if (v37(&v16[v36], 1, v4) == 1)
  {
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v12, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
LABEL_24:
    outlined destroy of Any?(v16, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSg_ADtMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSg_ADtMR);
    goto LABEL_25;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v16[v36], v8, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  v40 = specialized static Proto_Gnss_Emergency_CellInfo.== infix(_:_:)(v12, v8);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v8, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v12, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  outlined destroy of Any?(v16, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
  if (v40)
  {
    goto LABEL_28;
  }

LABEL_25:
  v38 = 0;
  return v38 & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_GanssTimeMeasuredParams.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSg_ADtMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v35 - v15;
  v17 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
  v18 = *(v17 + 20);
  v36 = a1;
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 6)
  {
    if (v20 != 6)
    {
      goto LABEL_12;
    }
  }

  else if (v19 != v20)
  {
    goto LABEL_12;
  }

  v21 = a2;
  v22 = *(v17 + 24);
  v23 = *(v13 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v36 + v22, v16, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v21 + v22, &v16[v23], &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMR);
  v24 = *(v5 + 48);
  if (v24(v16, 1, v4) == 1)
  {
    if (v24(&v16[v23], 1, v4) == 1)
    {
      outlined destroy of Any?(v16, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMR);
LABEL_17:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v27 & 1;
    }

    goto LABEL_10;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16, v12, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMR);
  if (v24(&v16[v23], 1, v4) == 1)
  {
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v12, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
LABEL_10:
    v25 = &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSg_ADtMd;
    v26 = &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSg_ADtMR;
LABEL_11:
    outlined destroy of Any?(v16, v25, v26);
    goto LABEL_12;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v16[v23], v8, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
  v29 = *(v4 + 20);
  v30 = *&v12[v29];
  v31 = *&v8[v29];
  if (v30 != v31)
  {
    v32 = *&v12[v29];

    v33 = closure #1 in static Proto_Gnss_Emergency_GanssTimeMeasured.== infix(_:_:)(v30, v31);

    if (!v33)
    {
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v8, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v12, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
      v25 = &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMd;
      v26 = &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMR;
      goto LABEL_11;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v34 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v8, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v12, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
  outlined destroy of Any?(v16, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMR);
  if (v34)
  {
    goto LABEL_17;
  }

LABEL_12:
  v27 = 0;
  return v27 & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_GanssMeasurements.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  v77 = *(v4 - 8);
  v78 = v4;
  v5 = *(v77 + 64);
  MEMORY[0x28223BE20](v4);
  v76 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMd, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v74 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSg_ADtMd, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSg_ADtMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v79 = &v74 - v13;
  v14 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMd, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v74 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSg_ADtMd, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSg_ADtMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v74 - v25;
  v27 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  v28 = v27[5];
  v29 = *(a1 + v28);
  v30 = *(a2 + v28);
  if (v29 == 6)
  {
    if (v30 != 6)
    {
      goto LABEL_36;
    }
  }

  else if (v29 != v30)
  {
    goto LABEL_36;
  }

  v31 = v27[6];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 4);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 4);
  if (v33)
  {
    if (!v35)
    {
      goto LABEL_36;
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
      goto LABEL_36;
    }
  }

  v36 = v27[7];
  v37 = (a1 + v36);
  v38 = *(a1 + v36 + 4);
  v39 = (a2 + v36);
  v40 = *(a2 + v36 + 4);
  if (v38)
  {
    if (!v40)
    {
      goto LABEL_36;
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
      goto LABEL_36;
    }
  }

  v41 = v27[8];
  v42 = (a1 + v41);
  v43 = *(a1 + v41 + 4);
  v44 = (a2 + v41);
  v45 = *(a2 + v41 + 4);
  if (v43)
  {
    if (!v45)
    {
      goto LABEL_36;
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
      goto LABEL_36;
    }
  }

  v46 = v27[9];
  v47 = (a1 + v46);
  v48 = *(a1 + v46 + 4);
  v49 = (a2 + v46);
  v50 = *(a2 + v46 + 4);
  if (v48)
  {
    if (!v50)
    {
      goto LABEL_36;
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
      goto LABEL_36;
    }
  }

  v51 = v27[10];
  v74 = v27;
  v75 = v51;
  v52 = *(v23 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v51, v26, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMd, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMR);
  v53 = a2 + v75;
  v75 = v52;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v53, &v26[v52], &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMd, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMR);
  v54 = *(v15 + 48);
  if (v54(v26, 1, v14) != 1)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v26, v22, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMd, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMR);
    if (v54(&v26[v75], 1, v14) != 1)
    {
      outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v26[v75], v18, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams);
      v60 = specialized static Proto_Gnss_Emergency_GanssTimeMeasuredParams.== infix(_:_:)(v22, v18);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v18, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v22, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams);
      outlined destroy of Any?(v26, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMd, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMR);
      if ((v60 & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_39;
    }

    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v22, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams);
LABEL_34:
    v55 = &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSg_ADtMd;
    v56 = &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSg_ADtMR;
    v57 = v26;
LABEL_35:
    outlined destroy of Any?(v57, v55, v56);
    goto LABEL_36;
  }

  if (v54(&v26[v75], 1, v14) != 1)
  {
    goto LABEL_34;
  }

  outlined destroy of Any?(v26, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMd, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMR);
LABEL_39:
  v61 = v74[11];
  v62 = (a1 + v61);
  v63 = *(a1 + v61 + 4);
  v64 = (a2 + v61);
  v65 = *(a2 + v61 + 4);
  if (v63)
  {
    if (!v65)
    {
      goto LABEL_36;
    }
  }

  else
  {
    if (*v62 != *v64)
    {
      LOBYTE(v65) = 1;
    }

    if (v65)
    {
      goto LABEL_36;
    }
  }

  v66 = v74[12];
  v67 = *(v11 + 48);
  v68 = v79;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v66, v79, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMd, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v66, v68 + v67, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMd, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMR);
  v69 = v78;
  v70 = *(v77 + 48);
  if (v70(v68, 1, v78) == 1)
  {
    if (v70(v68 + v67, 1, v69) == 1)
    {
      outlined destroy of Any?(v68, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMd, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMR);
LABEL_52:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v58 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v58 & 1;
    }

    goto LABEL_50;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v68, v10, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMd, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMR);
  if (v70(v68 + v67, 1, v69) == 1)
  {
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v10, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss);
LABEL_50:
    v55 = &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSg_ADtMd;
    v56 = &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSg_ADtMR;
    v57 = v68;
    goto LABEL_35;
  }

  v71 = v68 + v67;
  v72 = v76;
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v71, v76, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss);
  v73 = specialized static Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss.== infix(_:_:)(v10, v72);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v72, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v10, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss);
  outlined destroy of Any?(v68, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMd, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMR);
  if (v73)
  {
    goto LABEL_52;
  }

LABEL_36:
  v58 = 0;
  return v58 & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_VelocityEstimate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSg_ADtMd, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - v15;
  v17 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
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
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v29 + v22, v16, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v21 + v22, &v16[v23], &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMR);
  v24 = *(v5 + 48);
  if (v24(v16, 1, v4) == 1)
  {
    if (v24(&v16[v23], 1, v4) == 1)
    {
      outlined destroy of Any?(v16, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMR);
LABEL_14:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v25 & 1;
    }

    goto LABEL_10;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16, v12, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMR);
  if (v24(&v16[v23], 1, v4) == 1)
  {
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v12, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);
LABEL_10:
    outlined destroy of Any?(v16, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSg_ADtMd, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSg_ADtMR);
    goto LABEL_11;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v16[v23], v8, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);
  v27 = specialized static Proto_Gnss_Emergency_VelocityInfo.== infix(_:_:)(v12, v8);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v8, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v12, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);
  outlined destroy of Any?(v16, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMR);
  if (v27)
  {
    goto LABEL_14;
  }

LABEL_11:
  v25 = 0;
  return v25 & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_Is801LocationInd.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0);
  v110 = *(v4 - 8);
  v111 = v4;
  v5 = *(v110 + 64);
  MEMORY[0x28223BE20](v4);
  v108 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v112 = &v104 - v9;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSg_ADtMd, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSg_ADtMR);
  v10 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20](v109);
  v113 = &v104 - v11;
  v12 = type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0);
  v116 = *(v12 - 8);
  v13 = *(v116 + 64);
  MEMORY[0x28223BE20](v12);
  v114 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v115 = &v104 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSg_ADtMd, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSg_ADtMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v117 = &v104 - v20;
  v21 = type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMR);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v104 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSg_ADtMd, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSg_ADtMR);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v104 - v32;
  v34 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  v35 = a2;
  v36 = v34;
  v37 = v34[5];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 4);
  v40 = (v35 + v37);
  v41 = *(v35 + v37 + 4);
  if (v39)
  {
    if (!v41)
    {
      goto LABEL_47;
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
      goto LABEL_47;
    }
  }

  v42 = v34[6];
  v43 = (a1 + v42);
  v44 = *(a1 + v42 + 4);
  v45 = (v35 + v42);
  v46 = *(v35 + v42 + 4);
  if (v44)
  {
    if (!v46)
    {
      goto LABEL_47;
    }
  }

  else
  {
    if (*v43 != *v45)
    {
      LOBYTE(v46) = 1;
    }

    if (v46)
    {
      goto LABEL_47;
    }
  }

  v47 = v34[7];
  v48 = (a1 + v47);
  v49 = *(a1 + v47 + 4);
  v50 = (v35 + v47);
  v51 = *(v35 + v47 + 4);
  if (v49)
  {
    if (!v51)
    {
      goto LABEL_47;
    }
  }

  else
  {
    if (*v48 != *v50)
    {
      LOBYTE(v51) = 1;
    }

    if (v51)
    {
      goto LABEL_47;
    }
  }

  v52 = v34[8];
  v53 = (a1 + v52);
  v54 = *(a1 + v52 + 4);
  v55 = (v35 + v52);
  v56 = *(v35 + v52 + 4);
  if (v54)
  {
    if (!v56)
    {
      goto LABEL_47;
    }
  }

  else
  {
    if (*v53 != *v55)
    {
      LOBYTE(v56) = 1;
    }

    if (v56)
    {
      goto LABEL_47;
    }
  }

  v57 = v34[9];
  v58 = (a1 + v57);
  v59 = *(a1 + v57 + 4);
  v60 = (v35 + v57);
  v61 = *(v35 + v57 + 4);
  if (v59)
  {
    if (!v61)
    {
      goto LABEL_47;
    }
  }

  else
  {
    if (*v58 != *v60)
    {
      LOBYTE(v61) = 1;
    }

    if (v61)
    {
      goto LABEL_47;
    }
  }

  v62 = v34[10];
  v63 = *(a1 + v62);
  v64 = *(v35 + v62);
  if (v63 == 4)
  {
    if (v64 != 4)
    {
      goto LABEL_47;
    }
  }

  else if (v63 != v64)
  {
    goto LABEL_47;
  }

  v65 = v34[11];
  v66 = *(a1 + v65);
  v67 = *(v35 + v65);
  if (v66 == 2)
  {
    if (v67 != 2)
    {
      goto LABEL_47;
    }
  }

  else if (v67 == 2 || ((v66 ^ v67) & 1) != 0)
  {
    goto LABEL_47;
  }

  v107 = v34[12];
  v68 = *(v30 + 48);
  v105 = a1;
  v69 = a1 + v107;
  v70 = v68;
  v71 = v35;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v69, v33, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMR);
  v72 = v71 + v107;
  v106 = v71;
  v107 = v70;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v72, &v33[v70], &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMR);
  v73 = *(v22 + 48);
  if (v73(v33, 1, v21) == 1)
  {
    if (v73(&v33[v107], 1, v21) == 1)
    {
      outlined destroy of Any?(v33, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMR);
      goto LABEL_50;
    }

LABEL_45:
    v74 = &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSg_ADtMd;
    v75 = &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSg_ADtMR;
    v76 = v33;
LABEL_46:
    outlined destroy of Any?(v76, v74, v75);
    goto LABEL_47;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v33, v29, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMR);
  if (v73(&v33[v107], 1, v21) == 1)
  {
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v29, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo);
    goto LABEL_45;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v33[v107], v25, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo);
  v79 = specialized static Proto_Gnss_Emergency_HorizWithUncertaintyVelocity.== infix(_:_:)(v29, v25, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v25, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v29, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo);
  outlined destroy of Any?(v33, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMR);
  if ((v79 & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_50:
  v80 = v36[13];
  v81 = *(v105 + v80);
  v82 = *(v106 + v80);
  if (v81 == 2)
  {
    if (v82 != 2)
    {
      goto LABEL_47;
    }
  }

  else if (v82 == 2 || ((v81 ^ v82) & 1) != 0)
  {
    goto LABEL_47;
  }

  v83 = v36[14];
  v84 = *(v18 + 48);
  v85 = v106;
  v86 = v117;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v105 + v83, v117, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v85 + v83, v86 + v84, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMR);
  v87 = *(v116 + 48);
  if (v87(v86, 1, v12) != 1)
  {
    v88 = v115;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v86, v115, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMR);
    if (v87(v86 + v84, 1, v12) != 1)
    {
      v89 = v114;
      outlined init with take of Proto_Gnss_Emergency_SLPAddress(v86 + v84, v114, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo);
      v90 = specialized static Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted.== infix(_:_:)(v88, v89, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v89, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v88, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo);
      outlined destroy of Any?(v86, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMR);
      if ((v90 & 1) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_62;
    }

    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v88, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo);
    goto LABEL_60;
  }

  if (v87(v86 + v84, 1, v12) != 1)
  {
LABEL_60:
    v74 = &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSg_ADtMd;
    v75 = &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSg_ADtMR;
    v76 = v86;
    goto LABEL_46;
  }

  outlined destroy of Any?(v86, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMR);
LABEL_62:
  v91 = v36[15];
  v92 = *(v105 + v91);
  v93 = *(v106 + v91);
  if (v92 == 2)
  {
    if (v93 != 2)
    {
      goto LABEL_47;
    }
  }

  else if (v93 == 2 || ((v92 ^ v93) & 1) != 0)
  {
    goto LABEL_47;
  }

  v94 = v36[16];
  v95 = *(v109 + 48);
  v96 = v113;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v105 + v94, v113, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v106 + v94, v96 + v95, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMR);
  v97 = v111;
  v98 = *(v110 + 48);
  if (v98(v96, 1, v111) == 1)
  {
    if (v98(v96 + v95, 1, v97) == 1)
    {
      outlined destroy of Any?(v96, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMR);
LABEL_74:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v77 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v77 & 1;
    }

    goto LABEL_72;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v96, v112, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMR);
  if (v98(v96 + v95, 1, v97) == 1)
  {
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v112, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo);
    v96 = v113;
LABEL_72:
    v74 = &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSg_ADtMd;
    v75 = &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSg_ADtMR;
    v76 = v96;
    goto LABEL_46;
  }

  v99 = v113;
  v100 = v113 + v95;
  v101 = v108;
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v100, v108, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo);
  v102 = v112;
  v103 = specialized static Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted.== infix(_:_:)(v112, v101, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v101, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v102, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo);
  outlined destroy of Any?(v99, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMR);
  if (v103)
  {
    goto LABEL_74;
  }

LABEL_47:
  v77 = 0;
  return v77 & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_GpsReferenceTime.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v5 = v4[6];
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

  v10 = v4[7];
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

  v15 = v4[8];
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

  v20 = v4[9];
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
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf30Proto_Gnss_Emergency_TowAssistV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v26 = v25[10];
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

  v31 = v25[11];
  v32 = *(a1 + v31);
  v33 = *(a2 + v31);
  if (v32 == 6)
  {
    if (v33 != 6)
    {
      return 0;
    }
  }

  else if (v32 != v33)
  {
    return 0;
  }

  v34 = v25[12];
  v35 = *(a1 + v34);
  v36 = *(a2 + v34);
  if (v35 != 7)
  {
    if (v35 == v36)
    {
      goto LABEL_40;
    }

    return 0;
  }

  if (v36 != 7)
  {
    return 0;
  }

LABEL_40:
  v37 = v25[13];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 4);
  v40 = (a2 + v37);
  v41 = *(a2 + v37 + 4);
  if (v39)
  {
    if (!v41)
    {
      return 0;
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
      return 0;
    }
  }

  v43 = v25[5];
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_CellTimeAssistance.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSg_ADtMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - v15;
  v17 = type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
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
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v29 + v22, v16, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v21 + v22, &v16[v23], &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  v24 = *(v5 + 48);
  if (v24(v16, 1, v4) == 1)
  {
    if (v24(&v16[v23], 1, v4) == 1)
    {
      outlined destroy of Any?(v16, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
LABEL_14:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v25 & 1;
    }

    goto LABEL_10;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16, v12, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  if (v24(&v16[v23], 1, v4) == 1)
  {
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v12, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
LABEL_10:
    outlined destroy of Any?(v16, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSg_ADtMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSg_ADtMR);
    goto LABEL_11;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v16[v23], v8, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  v27 = specialized static Proto_Gnss_Emergency_CellTimeData.== infix(_:_:)(v12, v8);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v8, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v12, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  outlined destroy of Any?(v16, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  if (v27)
  {
    goto LABEL_14;
  }

LABEL_11:
  v25 = 0;
  return v25 & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_GpsAcqAssistance.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v52 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSg_ADtMd, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v52 - v15;
  v17 = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  v18 = v17[6];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 4);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 4);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_37;
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
      goto LABEL_37;
    }
  }

  v23 = v17[7];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 4);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 4);
  if (v25)
  {
    if (!v27)
    {
      goto LABEL_37;
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
      goto LABEL_37;
    }
  }

  v28 = v17[8];
  v29 = *(v13 + 48);
  v52 = v17;
  v53 = a1;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v28, v16, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v28, &v16[v29], &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMR);
  v30 = *(v5 + 48);
  if (v30(v16, 1, v4) == 1)
  {
    if (v30(&v16[v29], 1, v4) == 1)
    {
      outlined destroy of Any?(v16, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMR);
LABEL_20:
      v33 = v53;
      if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf34Proto_Gnss_Emergency_GpsAcqElementV_Tt1g5Tm(*v53, *a2, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement, specialized static Proto_Gnss_Emergency_GpsAcqElement.== infix(_:_:)))
      {
        v34 = v52[9];
        v35 = (v33 + v34);
        v36 = *(v33 + v34 + 4);
        v37 = (a2 + v34);
        v38 = *(a2 + v34 + 4);
        if (v36)
        {
          if (!v38)
          {
            goto LABEL_37;
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
            goto LABEL_37;
          }
        }

        v39 = v52[10];
        v40 = *(v33 + v39);
        v41 = *(a2 + v39);
        if (v40 == 6)
        {
          if (v41 != 6)
          {
            goto LABEL_37;
          }
        }

        else if (v40 != v41)
        {
          goto LABEL_37;
        }

        v42 = v52[11];
        v43 = *(v33 + v42);
        v44 = *(a2 + v42);
        if (v43 == 7)
        {
          if (v44 == 7)
          {
LABEL_35:
            v45 = v52[12];
            v46 = (v33 + v45);
            v47 = *(v33 + v45 + 4);
            v48 = (a2 + v45);
            v49 = *(a2 + v45 + 4);
            if (v47)
            {
              if (!v49)
              {
                goto LABEL_37;
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
                goto LABEL_37;
              }
            }

            v51 = v52[5];
            type metadata accessor for UnknownStorage();
            lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
            v31 = dispatch thunk of static Equatable.== infix(_:_:)();
            return v31 & 1;
          }
        }

        else if (v43 == v44)
        {
          goto LABEL_35;
        }
      }

LABEL_37:
      v31 = 0;
      return v31 & 1;
    }
  }

  else
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16, v12, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMR);
    if (v30(&v16[v29], 1, v4) != 1)
    {
      outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v16[v29], v8, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance);
      v32 = specialized static Proto_Gnss_Emergency_CellTimeAssistance.== infix(_:_:)(v12, v8);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v8, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v12, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance);
      outlined destroy of Any?(v16, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMR);
      if ((v32 & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_20;
    }

    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v12, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance);
  }

  outlined destroy of Any?(v16, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSg_ADtMd, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSg_ADtMR);
  v31 = 0;
  return v31 & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_ClsGeranCellTime.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0);
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

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_CellFTAssistance.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v34[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSg_ADtMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v34[-v15];
  v17 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  v18 = v17[5];
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 10)
  {
    if (v20 != 10)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v34[15] = v19;
    if (v20 == 10)
    {
      goto LABEL_16;
    }

    v34[14] = v20;
    v21 = v17;
    lazy protocol witness table accessor for type Proto_Gnss_Result and conformance Proto_Gnss_Result();
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    v17 = v21;
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v23 = v17[6];
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24 == 6)
  {
    if (v25 != 6)
    {
      goto LABEL_16;
    }
  }

  else if (v24 != v25)
  {
    goto LABEL_16;
  }

  v26 = v17[7];
  v27 = *(v13 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v26, v16, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  v28 = a2 + v26;
  v29 = v27;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v28, &v16[v27], &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  v30 = *(v5 + 48);
  if (v30(v16, 1, v4) == 1)
  {
    if (v30(&v16[v29], 1, v4) == 1)
    {
      outlined destroy of Any?(v16, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
LABEL_19:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v31 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v31 & 1;
    }

    goto LABEL_15;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16, v12, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  if (v30(&v16[v29], 1, v4) == 1)
  {
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v12, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
LABEL_15:
    outlined destroy of Any?(v16, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSg_ADtMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSg_ADtMR);
    goto LABEL_16;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v16[v29], v8, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  v33 = specialized static Proto_Gnss_Emergency_CellTimeData.== infix(_:_:)(v12, v8);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v8, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v12, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  outlined destroy of Any?(v16, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  if (v33)
  {
    goto LABEL_19;
  }

LABEL_16:
  v31 = 0;
  return v31 & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_ClsUtranCellTime.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v43 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSg_ADtMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v42 - v15;
  v44 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  v45 = a1;
  v17 = v44[5];
  v18 = *(v13 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v17, v16, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v17, &v16[v18], &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16, v11, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v22 = v43;
      outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v16[v18], v43, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
      v23 = specialized static Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted.== infix(_:_:)(v11, v22, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v22, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
      outlined destroy of Any?(v16, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
      if ((v23 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
LABEL_6:
    outlined destroy of Any?(v16, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSg_ADtMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSg_ADtMR);
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of Any?(v16, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
LABEL_10:
  v24 = v44[6];
  v25 = (v45 + v24);
  v26 = *(v45 + v24 + 4);
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

  v29 = v44[7];
  v30 = (v45 + v29);
  v31 = *(v45 + v29 + 4);
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

  v34 = v44[8];
  v35 = (v45 + v34);
  v36 = *(v45 + v34 + 4);
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

  v39 = v44[9];
  v40 = *(v45 + v39);
  v41 = *(a2 + v39);
  if (v40 == 5)
  {
    if (v41 == 5)
    {
      goto LABEL_32;
    }
  }

  else if (v40 == v41)
  {
LABEL_32:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v20 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v20 & 1;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_UtranGpsTimeMeasured.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v3 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v3);
  v44 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v43 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSg_ADtMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSg_ADtMR);
  v9 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = &v43 - v10;
  v11 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v43 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSg_ADtMd, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSg_ADtMR);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v43 - v23;
  v46 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  v25 = *(v46 + 20);
  v26 = *(v21 + 56);
  v51 = a1;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v25, v24, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v52 + v25, &v24[v26], &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMR);
  v27 = *(v12 + 48);
  if (v27(v24, 1, v11) != 1)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v24, v19, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMR);
    if (v27(&v24[v26], 1, v11) != 1)
    {
      outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v24[v26], v15, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime);
      v31 = specialized static Proto_Gnss_Emergency_ClsUtranCellTime.== infix(_:_:)(v19, v15);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v15, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v19, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime);
      outlined destroy of Any?(v24, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMR);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v19, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime);
LABEL_6:
    v28 = &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSg_ADtMd;
    v29 = &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSg_ADtMR;
    v30 = v24;
LABEL_14:
    outlined destroy of Any?(v30, v28, v29);
    goto LABEL_15;
  }

  if (v27(&v24[v26], 1, v11) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of Any?(v24, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMR);
LABEL_8:
  v32 = *(v46 + 24);
  v33 = *(v47 + 48);
  v34 = v50;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v51 + v32, v50, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v52 + v32, v34 + v33, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
  v35 = v49;
  v36 = *(v48 + 48);
  if (v36(v34, 1, v49) == 1)
  {
    if (v36(v34 + v33, 1, v35) == 1)
    {
      outlined destroy of Any?(v34, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
LABEL_18:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v38 & 1;
    }

    goto LABEL_13;
  }

  v37 = v45;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v34, v45, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
  if (v36(v34 + v33, 1, v35) == 1)
  {
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v37, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
LABEL_13:
    v28 = &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSg_ADtMd;
    v29 = &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSg_ADtMR;
    v30 = v34;
    goto LABEL_14;
  }

  v40 = v34 + v33;
  v41 = v44;
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v40, v44, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  v42 = specialized static Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted.== infix(_:_:)(v37, v41, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v41, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v37, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  outlined destroy of Any?(v34, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
  if (v42)
  {
    goto LABEL_18;
  }

LABEL_15:
  v38 = 0;
  return v38 & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_GpsTimeMeasured.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v80 = a2;
  v3 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
  v70 = *(v3 - 8);
  v71 = v3;
  v4 = *(v70 + 64);
  MEMORY[0x28223BE20](v3);
  v66 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v67 = &v65 - v8;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSg_ADtMd, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSg_ADtMR);
  v9 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v72 = &v65 - v10;
  v11 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
  v76 = *(v11 - 8);
  v77 = v11;
  v12 = *(v76 + 64);
  MEMORY[0x28223BE20](v11);
  v68 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v73 = &v65 - v16;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSg_ADtMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSg_ADtMR);
  v17 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v78 = &v65 - v18;
  v19 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v65 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSg_ADtMd, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSg_ADtMR);
  v29 = v28 - 8;
  v30 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v65 - v31;
  v75 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  v33 = *(v75 + 20);
  v34 = *(v29 + 56);
  v79 = a1;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v33, v32, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v80 + v33, &v32[v34], &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMR);
  v35 = *(v20 + 48);
  if (v35(v32, 1, v19) == 1)
  {
    if (v35(&v32[v34], 1, v19) == 1)
    {
      outlined destroy of Any?(v32, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v36 = &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSg_ADtMd;
    v37 = &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSg_ADtMR;
    v38 = v32;
LABEL_21:
    outlined destroy of Any?(v38, v36, v37);
    goto LABEL_22;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v32, v27, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMR);
  if (v35(&v32[v34], 1, v19) == 1)
  {
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v27, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);
    goto LABEL_6;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v32[v34], v23, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);
  v39 = specialized static Proto_Gnss_Emergency_UtranGpsTimeMeasured.== infix(_:_:)(v27, v23);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v23, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v27, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);
  outlined destroy of Any?(v32, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMR);
  if ((v39 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v40 = v75;
  v41 = *(v75 + 24);
  v42 = *(v74 + 48);
  v44 = v78;
  v43 = v79;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v79 + v41, v78, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMR);
  v45 = v80;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v80 + v41, v44 + v42, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMR);
  v46 = v77;
  v47 = *(v76 + 48);
  if (v47(v44, 1, v77) != 1)
  {
    v48 = v73;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v44, v73, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMR);
    if (v47(v44 + v42, 1, v46) != 1)
    {
      v49 = v44 + v42;
      v50 = v68;
      outlined init with take of Proto_Gnss_Emergency_SLPAddress(v49, v68, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);
      v51 = specialized static Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted.== infix(_:_:)(v48, v50, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v50, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v48, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);
      outlined destroy of Any?(v44, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMR);
      if ((v51 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v48, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);
    goto LABEL_13;
  }

  if (v47(v44 + v42, 1, v46) != 1)
  {
LABEL_13:
    v36 = &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSg_ADtMd;
    v37 = &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSg_ADtMR;
    v38 = v44;
    goto LABEL_21;
  }

  outlined destroy of Any?(v44, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMR);
LABEL_15:
  v52 = *(v40 + 28);
  v53 = *(v69 + 48);
  v54 = v72;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v43 + v52, v72, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMR);
  v55 = v45 + v52;
  v56 = v54;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v55, v54 + v53, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMR);
  v57 = v71;
  v58 = *(v70 + 48);
  if (v58(v54, 1, v71) == 1)
  {
    if (v58(v54 + v53, 1, v57) == 1)
    {
      outlined destroy of Any?(v54, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMR);
LABEL_25:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v60 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v60 & 1;
    }

    goto LABEL_20;
  }

  v59 = v67;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v56, v67, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMR);
  if (v58(v56 + v53, 1, v57) == 1)
  {
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v59, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);
LABEL_20:
    v36 = &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSg_ADtMd;
    v37 = &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSg_ADtMR;
    v38 = v56;
    goto LABEL_21;
  }

  v62 = v56 + v53;
  v63 = v66;
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v62, v66, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);
  v64 = specialized static Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted.== infix(_:_:)(v59, v63, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v63, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v59, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);
  outlined destroy of Any?(v56, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMR);
  if (v64)
  {
    goto LABEL_25;
  }

LABEL_22:
  v60 = 0;
  return v60 & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_GpsMeasurementElement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
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

  v35 = v4[11];
  v36 = *(a1 + v35);
  v37 = *(a2 + v35);
  if (v36 == 6)
  {
    if (v37 != 6)
    {
      return 0;
    }
  }

  else if (v36 != v37)
  {
    return 0;
  }

  v38 = v4[12];
  v39 = (a1 + v38);
  v40 = *(a1 + v38 + 4);
  v41 = (a2 + v38);
  v42 = *(a2 + v38 + 4);
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
  v45 = *(a1 + v43 + 4);
  v46 = (a2 + v43);
  v47 = *(a2 + v43 + 4);
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
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_CtsCdmaCellTime.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSg_ADtMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v36 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
  v37 = a1;
  v17 = v36[5];
  v18 = *(v13 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v17, v16, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v17, &v16[v18], &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16, v11, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMR);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v22 = v35;
      outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v16[v18], v35, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);
      v23 = specialized static Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted.== infix(_:_:)(v11, v22, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v22, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);
      outlined destroy of Any?(v16, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMR);
      if ((v23 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);
LABEL_6:
    outlined destroy of Any?(v16, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSg_ADtMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSg_ADtMR);
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of Any?(v16, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMR);
LABEL_10:
  v24 = v36[6];
  v25 = (v37 + v24);
  v26 = *(v37 + v24 + 4);
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

  v29 = v36[7];
  v30 = (v37 + v29);
  v31 = *(v37 + v29 + 4);
  v32 = (a2 + v29);
  v33 = *(a2 + v29 + 4);
  if (v31)
  {
    if (v33)
    {
LABEL_22:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }
  }

  else
  {
    if (*v30 != *v32)
    {
      LOBYTE(v33) = 1;
    }

    if ((v33 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_GanssLocationInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 6)
  {
    if (v7 != 6)
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

  v23 = v4[9];
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24 != 4)
  {
    if (v24 == v25)
    {
      goto LABEL_27;
    }

    return 0;
  }

  if (v25 != 4)
  {
    return 0;
  }

LABEL_27:
  v26 = v4[10];
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

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_EutranCellTime.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_EutranCellTime(0);
  v5 = *(v4 + 24);
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

  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf34Proto_Gnss_Emergency_GpsAcqElementV_Tt1g5Tm(*a1, *a2, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell, specialized static Proto_Gnss_Emergency_ClsEutranCell.== infix(_:_:)))
  {
    v10 = *(v4 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static Proto_Gnss_Emergency_WcdmaCellInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0);
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

  v23 = v4[9];
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

  v28 = v4[10];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 4);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 4);
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
  v34 = *(a1 + v33);
  v35 = *(a2 + v33);
  if (v34 == 4)
  {
    if (v35 != 4)
    {
      return 0;
    }
  }

  else if (v34 != v35)
  {
    return 0;
  }

  v36 = v4[12];
  v37 = (a1 + v36);
  v38 = *(a1 + v36 + 4);
  v39 = (a2 + v36);
  v40 = *(a2 + v36 + 4);
  if (v38)
  {
    if (!v40)
    {
      return 0;
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
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_NetworkReferenceLocation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
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

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_GpsAcqElement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
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

  v50 = v4[14];
  v51 = (a1 + v50);
  v52 = *(a1 + v50 + 4);
  v53 = (a2 + v50);
  v54 = *(a2 + v50 + 4);
  if (v52)
  {
    if (!v54)
    {
      return 0;
    }
  }

  else
  {
    if (*v51 != *v53)
    {
      LOBYTE(v54) = 1;
    }

    if (v54)
    {
      return 0;
    }
  }

  v55 = v4[15];
  v56 = (a1 + v55);
  v57 = *(a1 + v55 + 4);
  v58 = (a2 + v55);
  v59 = *(a2 + v55 + 4);
  if (v57)
  {
    if (!v59)
    {
      return 0;
    }
  }

  else
  {
    if (*v56 != *v58)
    {
      LOBYTE(v59) = 1;
    }

    if (v59)
    {
      return 0;
    }
  }

  v60 = v4[16];
  v61 = (a1 + v60);
  v62 = *(a1 + v60 + 4);
  v63 = (a2 + v60);
  v64 = *(a2 + v60 + 4);
  if (v62)
  {
    if (!v64)
    {
      return 0;
    }
  }

  else
  {
    if (*v61 != *v63)
    {
      LOBYTE(v64) = 1;
    }

    if (v64)
    {
      return 0;
    }
  }

  v65 = v4[17];
  v66 = *(a1 + v65);
  v67 = *(a2 + v65);
  if (v66 == 7)
  {
    if (v67 != 7)
    {
      return 0;
    }
  }

  else if (v66 != v67)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_CplaneContext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v3 = type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0);
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v3);
  v44 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v43 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSg_ADtMd, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSg_ADtMR);
  v9 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = &v43 - v10;
  v11 = type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v43 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSg_ADtMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSg_ADtMR);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v43 - v23;
  v46 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
  v25 = *(v46 + 20);
  v26 = *(v21 + 56);
  v51 = a1;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v25, v24, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v52 + v25, &v24[v26], &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
  v27 = *(v12 + 48);
  if (v27(v24, 1, v11) != 1)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v24, v19, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
    if (v27(&v24[v26], 1, v11) != 1)
    {
      outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v24[v26], v15, type metadata accessor for Proto_Gnss_Emergency_Configuration);
      v31 = specialized static Proto_Gnss_Emergency_Configuration.== infix(_:_:)(v19, v15);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v15, type metadata accessor for Proto_Gnss_Emergency_Configuration);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v19, type metadata accessor for Proto_Gnss_Emergency_Configuration);
      outlined destroy of Any?(v24, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v19, type metadata accessor for Proto_Gnss_Emergency_Configuration);
LABEL_6:
    v28 = &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSg_ADtMd;
    v29 = &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSg_ADtMR;
    v30 = v24;
LABEL_14:
    outlined destroy of Any?(v30, v28, v29);
    goto LABEL_15;
  }

  if (v27(&v24[v26], 1, v11) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of Any?(v24, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
LABEL_8:
  v32 = *(v46 + 24);
  v33 = *(v47 + 48);
  v34 = v50;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v51 + v32, v50, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v52 + v32, v34 + v33, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMR);
  v35 = v49;
  v36 = *(v48 + 48);
  if (v36(v34, 1, v49) == 1)
  {
    if (v36(v34 + v33, 1, v35) == 1)
    {
      outlined destroy of Any?(v34, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMR);
LABEL_18:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v38 & 1;
    }

    goto LABEL_13;
  }

  v37 = v45;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v34, v45, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMR);
  if (v36(v34 + v33, 1, v35) == 1)
  {
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v37, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext);
LABEL_13:
    v28 = &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSg_ADtMd;
    v29 = &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSg_ADtMR;
    v30 = v34;
    goto LABEL_14;
  }

  v40 = v34 + v33;
  v41 = v44;
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v40, v44, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext);
  v42 = specialized static Proto_Gnss_Emergency_Cdma1xContext.== infix(_:_:)(v37, v41);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v41, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v37, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext);
  outlined destroy of Any?(v34, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMR);
  if (v42)
  {
    goto LABEL_18;
  }

LABEL_15:
  v38 = 0;
  return v38 & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_ClsEutranCell.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v76 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSg_ADtMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v76 - v15;
  v17 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v18 = v17[5];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 4);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 4);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_31;
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
      goto LABEL_31;
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
      goto LABEL_31;
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
      goto LABEL_31;
    }
  }

  v28 = v17[7];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 4);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 4);
  if (v30)
  {
    if (!v32)
    {
      goto LABEL_31;
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
      goto LABEL_31;
    }
  }

  v33 = v17[8];
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 4);
  v36 = (a2 + v33);
  v37 = *(a2 + v33 + 4);
  if (v35)
  {
    if (!v37)
    {
      goto LABEL_31;
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
      goto LABEL_31;
    }
  }

  v77 = v17;
  v38 = v17[9];
  v39 = *(v13 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v38, v16, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  v40 = a2 + v38;
  v41 = v39;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v40, &v16[v39], &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  v42 = *(v5 + 48);
  if (v42(v16, 1, v4) != 1)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16, v12, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
    if (v42(&v16[v41], 1, v4) != 1)
    {
      outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v16[v41], v8, type metadata accessor for Proto_Gnss_Emergency_Plmn);
      v45 = specialized static Proto_Gnss_Emergency_HorizWithUncertaintyVelocity.== infix(_:_:)(v12, v8, type metadata accessor for Proto_Gnss_Emergency_Plmn);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v8, type metadata accessor for Proto_Gnss_Emergency_Plmn);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v12, type metadata accessor for Proto_Gnss_Emergency_Plmn);
      outlined destroy of Any?(v16, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
      if ((v45 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_34;
    }

    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v12, type metadata accessor for Proto_Gnss_Emergency_Plmn);
LABEL_30:
    outlined destroy of Any?(v16, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSg_ADtMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSg_ADtMR);
    goto LABEL_31;
  }

  if (v42(&v16[v41], 1, v4) != 1)
  {
    goto LABEL_30;
  }

  outlined destroy of Any?(v16, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
LABEL_34:
  v46 = v77[10];
  v47 = (a1 + v46);
  v48 = *(a1 + v46 + 4);
  v49 = (a2 + v46);
  v50 = *(a2 + v46 + 4);
  if (v48)
  {
    if (!v50)
    {
      goto LABEL_31;
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
      goto LABEL_31;
    }
  }

  v51 = v77[11];
  v52 = (a1 + v51);
  v53 = *(a1 + v51 + 4);
  v54 = (a2 + v51);
  v55 = *(a2 + v51 + 4);
  if (v53)
  {
    if (!v55)
    {
      goto LABEL_31;
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
      goto LABEL_31;
    }
  }

  v56 = v77[12];
  v57 = (a1 + v56);
  v58 = *(a1 + v56 + 4);
  v59 = (a2 + v56);
  v60 = *(a2 + v56 + 4);
  if (v58)
  {
    if (!v60)
    {
      goto LABEL_31;
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
      goto LABEL_31;
    }
  }

  v61 = v77[13];
  v62 = (a1 + v61);
  v63 = *(a1 + v61 + 4);
  v64 = (a2 + v61);
  v65 = *(a2 + v61 + 4);
  if (v63)
  {
    if (!v65)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (*v62 != *v64)
    {
      LOBYTE(v65) = 1;
    }

    if (v65)
    {
      goto LABEL_31;
    }
  }

  v66 = v77[14];
  v67 = (a1 + v66);
  v68 = *(a1 + v66 + 4);
  v69 = (a2 + v66);
  v70 = *(a2 + v66 + 4);
  if (v68)
  {
    if (!v70)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (*v67 != *v69)
    {
      LOBYTE(v70) = 1;
    }

    if (v70)
    {
      goto LABEL_31;
    }
  }

  v71 = v77[15];
  v72 = (a1 + v71);
  v73 = *(a1 + v71 + 4);
  v74 = (a2 + v71);
  v75 = *(a2 + v71 + 4);
  if ((v73 & 1) == 0)
  {
    if (*v72 != *v74)
    {
      LOBYTE(v75) = 1;
    }

    if (v75)
    {
      goto LABEL_31;
    }

LABEL_70:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v43 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v43 & 1;
  }

  if (v75)
  {
    goto LABEL_70;
  }

LABEL_31:
  v43 = 0;
  return v43 & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_Cdma1xContext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0);
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

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_VelocityInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v102 = a2;
  v103 = a1;
  v2 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v88 = *(v2 - 8);
  v89 = v2;
  v3 = *(v88 + 64);
  MEMORY[0x28223BE20](v2);
  v84 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMd, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v85 = &v83 - v7;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSg_ADtMd, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSg_ADtMR);
  v8 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v90 = &v83 - v9;
  v10 = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  v94 = *(v10 - 8);
  v95 = v10;
  v11 = *(v94 + 64);
  MEMORY[0x28223BE20](v10);
  v86 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v91 = &v83 - v15;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSg_ADtMd, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSg_ADtMR);
  v16 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v96 = &v83 - v17;
  v18 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  v99 = *(v18 - 8);
  v100 = v18;
  v19 = *(v99 + 64);
  MEMORY[0x28223BE20](v18);
  v92 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v97 = &v83 - v23;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSg_ADtMd, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSg_ADtMR);
  v24 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v26 = &v83 - v25;
  v27 = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMR);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v35 = &v83 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSg_ADtMd, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSg_ADtMR);
  v37 = v36 - 8;
  v38 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v40 = &v83 - v39;
  v101 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  v41 = *(v101 + 20);
  v42 = *(v37 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v103 + v41, v40, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMR);
  v43 = v102 + v41;
  v44 = v102;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v43, &v40[v42], &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMR);
  v45 = *(v28 + 48);
  if (v45(v40, 1, v27) == 1)
  {
    if (v45(&v40[v42], 1, v27) == 1)
    {
      outlined destroy of Any?(v40, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v46 = &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSg_ADtMd;
    v47 = &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSg_ADtMR;
    v48 = v40;
LABEL_29:
    outlined destroy of Any?(v48, v46, v47);
    goto LABEL_30;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v40, v35, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMR);
  if (v45(&v40[v42], 1, v27) == 1)
  {
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v35, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);
    goto LABEL_6;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v40[v42], v31, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);
  v49 = specialized static Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted.== infix(_:_:)(v35, v31, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v31, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v35, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);
  outlined destroy of Any?(v40, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMR);
  if ((v49 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_8:
  v50 = v101;
  v51 = *(v101 + 24);
  v52 = *(v98 + 48);
  v53 = v103;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v103 + v51, v26, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v44 + v51, &v26[v52], &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMR);
  v54 = v100;
  v55 = *(v99 + 48);
  if (v55(v26, 1, v100) == 1)
  {
    if (v55(&v26[v52], 1, v54) == 1)
    {
      outlined destroy of Any?(v26, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMR);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v56 = v97;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v26, v97, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMR);
  if (v55(&v26[v52], 1, v54) == 1)
  {
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v56, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);
LABEL_13:
    v46 = &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSg_ADtMd;
    v47 = &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSg_ADtMR;
    v48 = v26;
    goto LABEL_29;
  }

  v57 = &v26[v52];
  v58 = v92;
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v57, v92, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);
  v59 = specialized static Proto_Gnss_Emergency_GanssAddAssistDataChoices.== infix(_:_:)(v56, v58, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v58, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v56, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);
  outlined destroy of Any?(v26, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMR);
  if ((v59 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  v60 = *(v50 + 28);
  v61 = *(v93 + 48);
  v62 = v96;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v53 + v60, v96, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMR);
  v63 = v44 + v60;
  v64 = v62;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v63, v62 + v61, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMR);
  v65 = v95;
  v66 = *(v94 + 48);
  if (v66(v62, 1, v95) != 1)
  {
    v67 = v91;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v64, v91, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMR);
    if (v66(v64 + v61, 1, v65) != 1)
    {
      v68 = v64 + v61;
      v69 = v86;
      outlined init with take of Proto_Gnss_Emergency_SLPAddress(v68, v86, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);
      v70 = specialized static Proto_Gnss_Emergency_HorizWithUncertaintyVelocity.== infix(_:_:)(v67, v69, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v69, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v67, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);
      outlined destroy of Any?(v64, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMR);
      if ((v70 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v67, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);
LABEL_20:
    v46 = &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSg_ADtMd;
    v47 = &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSg_ADtMR;
LABEL_28:
    v48 = v64;
    goto LABEL_29;
  }

  if (v66(v62 + v61, 1, v65) != 1)
  {
    goto LABEL_20;
  }

  outlined destroy of Any?(v62, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMR);
LABEL_22:
  v71 = *(v50 + 32);
  v72 = *(v87 + 48);
  v73 = v90;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v53 + v71, v90, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMd, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMR);
  v74 = v44 + v71;
  v64 = v73;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v74, v73 + v72, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMd, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMR);
  v75 = v89;
  v76 = *(v88 + 48);
  if (v76(v73, 1, v89) == 1)
  {
    if (v76(v73 + v72, 1, v75) == 1)
    {
      outlined destroy of Any?(v73, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMd, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMR);
LABEL_33:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v78 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v78 & 1;
    }

    goto LABEL_27;
  }

  v77 = v85;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v64, v85, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMd, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMR);
  if (v76(v64 + v72, 1, v75) == 1)
  {
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v77, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);
LABEL_27:
    v46 = &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSg_ADtMd;
    v47 = &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSg_ADtMR;
    goto LABEL_28;
  }

  v80 = v64 + v72;
  v81 = v84;
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v80, v84, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);
  v82 = specialized static Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.== infix(_:_:)(v77, v81);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v81, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v77, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);
  outlined destroy of Any?(v64, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMd, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMR);
  if (v82)
  {
    goto LABEL_33;
  }

LABEL_30:
  v78 = 0;
  return v78 & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_Notification.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_Notification(0);
  v5 = *(v4 + 20);
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

  v8 = *(v4 + 24);
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

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_LocationInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v49 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSg_ADtMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v49 - v15;
  v17 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v18 = v17[5];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 4);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 4);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_35;
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
      goto LABEL_35;
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
      goto LABEL_35;
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
      goto LABEL_35;
    }
  }

  v28 = v17[7];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 4);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 4);
  if (v30)
  {
    if (!v32)
    {
      goto LABEL_35;
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
      goto LABEL_35;
    }
  }

  v33 = v17[8];
  v34 = *(a1 + v33);
  v35 = *(a2 + v33);
  if (v34 == 4)
  {
    if (v35 != 4)
    {
      goto LABEL_35;
    }
  }

  else if (v34 != v35)
  {
    goto LABEL_35;
  }

  v36 = v17[9];
  v37 = (a1 + v36);
  v38 = *(a1 + v36 + 4);
  v39 = (a2 + v36);
  v40 = *(a2 + v36 + 4);
  if (v38)
  {
    if (!v40)
    {
      goto LABEL_35;
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
      goto LABEL_35;
    }
  }

  v41 = v17[10];
  v42 = *(v13 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v41, v16, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  v43 = a2 + v41;
  v44 = v42;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v43, &v16[v42], &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  v45 = *(v5 + 48);
  if (v45(v16, 1, v4) == 1)
  {
    if (v45(&v16[v44], 1, v4) == 1)
    {
      outlined destroy of Any?(v16, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
LABEL_38:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v46 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v46 & 1;
    }

    goto LABEL_34;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16, v12, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  if (v45(&v16[v44], 1, v4) == 1)
  {
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v12, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
LABEL_34:
    outlined destroy of Any?(v16, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSg_ADtMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSg_ADtMR);
    goto LABEL_35;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v16[v44], v8, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  v48 = specialized static Proto_Gnss_Emergency_HorizWithUncertaintyVelocity.== infix(_:_:)(v12, v8, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v8, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v12, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  outlined destroy of Any?(v16, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  if (v48)
  {
    goto LABEL_38;
  }

LABEL_35:
  v46 = 0;
  return v46 & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_EllipsoidArc.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v49 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSg_ADtMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v49 - v15;
  v51 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v52 = a1;
  v17 = v51[5];
  v18 = *(v13 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v17, v16, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v17, &v16[v18], &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16, v11, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v22 = v50;
      outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v16[v18], v50, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
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
  v24 = v51[6];
  v25 = (v52 + v24);
  v26 = *(v52 + v24 + 4);
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

  v29 = v51[7];
  v30 = (v52 + v29);
  v31 = *(v52 + v29 + 4);
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

  v34 = v51[8];
  v35 = (v52 + v34);
  v36 = *(v52 + v34 + 4);
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

  v39 = v51[9];
  v40 = (v52 + v39);
  v41 = *(v52 + v39 + 4);
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

  v44 = v51[10];
  v45 = (v52 + v44);
  v46 = *(v52 + v44 + 4);
  v47 = (a2 + v44);
  v48 = *(a2 + v44 + 4);
  if (v46)
  {
    if (v48)
    {
LABEL_40:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }
  }

  else
  {
    if (*v45 != *v47)
    {
      LOBYTE(v48) = 1;
    }

    if ((v48 & 1) == 0)
    {
      goto LABEL_40;
    }
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_CplaneConfig.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != 2)
  {
    if (v6 != 2 && ((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (v6 != 2)
  {
    return 0;
  }

LABEL_7:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_CellTimeData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v3 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v3);
  v44 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v43 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSg_ADtMd, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSg_ADtMR);
  v9 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = &v43 - v10;
  v11 = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v43 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSg_ADtMd, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSg_ADtMR);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v43 - v23;
  v46 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  v25 = *(v46 + 20);
  v26 = *(v21 + 56);
  v51 = a1;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v25, v24, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v52 + v25, &v24[v26], &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMR);
  v27 = *(v12 + 48);
  if (v27(v24, 1, v11) != 1)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v24, v19, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMR);
    if (v27(&v24[v26], 1, v11) != 1)
    {
      outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v24[v26], v15, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime);
      v31 = specialized static Proto_Gnss_Emergency_HorizWithUncertaintyVelocity.== infix(_:_:)(v19, v15, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v15, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v19, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime);
      outlined destroy of Any?(v24, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMR);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v19, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime);
LABEL_6:
    v28 = &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSg_ADtMd;
    v29 = &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSg_ADtMR;
    v30 = v24;
LABEL_14:
    outlined destroy of Any?(v30, v28, v29);
    goto LABEL_15;
  }

  if (v27(&v24[v26], 1, v11) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of Any?(v24, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMR);
LABEL_8:
  v32 = *(v46 + 24);
  v33 = *(v47 + 48);
  v34 = v50;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v51 + v32, v50, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v52 + v32, v34 + v33, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMR);
  v35 = v49;
  v36 = *(v48 + 48);
  if (v36(v34, 1, v49) == 1)
  {
    if (v36(v34 + v33, 1, v35) == 1)
    {
      outlined destroy of Any?(v34, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMR);
LABEL_18:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v38 & 1;
    }

    goto LABEL_13;
  }

  v37 = v45;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v34, v45, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMR);
  if (v36(v34 + v33, 1, v35) == 1)
  {
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v37, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime);
LABEL_13:
    v28 = &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSg_ADtMd;
    v29 = &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSg_ADtMR;
    v30 = v34;
    goto LABEL_14;
  }

  v40 = v34 + v33;
  v41 = v44;
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v40, v44, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime);
  v42 = specialized static Proto_Gnss_Emergency_CtsCdmaCellTime.== infix(_:_:)(v37, v41);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v41, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v37, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime);
  outlined destroy of Any?(v34, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMR);
  if (v42)
  {
    goto LABEL_18;
  }

LABEL_15:
  v38 = 0;
  return v38 & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_SuplContext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v64 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSg_ADtMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v64 - v15;
  v17 = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  v18 = v17[5];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 4);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 4);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_32;
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
      goto LABEL_32;
    }
  }

  v23 = v17[6];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = v26[1];
  if (v25)
  {
    if (!v27)
    {
      goto LABEL_32;
    }

    if (*v24 != *v26 || v25 != v27)
    {
      v28 = v17;
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v17 = v28;
      if ((v29 & 1) == 0)
      {
        goto LABEL_32;
      }
    }
  }

  else if (v27)
  {
    goto LABEL_32;
  }

  v30 = v17[7];
  v31 = *(a1 + v30);
  v32 = *(a2 + v30);
  if (v31 == 2)
  {
    if (v32 != 2)
    {
      goto LABEL_32;
    }
  }

  else if (v32 == 2 || ((v31 ^ v32) & 1) != 0)
  {
    goto LABEL_32;
  }

  v33 = v17[8];
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 8);
  v36 = (a2 + v33);
  v37 = v36[1];
  if (v35)
  {
    if (!v37)
    {
      goto LABEL_32;
    }

    if (*v34 != *v36 || v35 != v37)
    {
      v38 = v17;
      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v17 = v38;
      if ((v39 & 1) == 0)
      {
        goto LABEL_32;
      }
    }
  }

  else if (v37)
  {
    goto LABEL_32;
  }

  v65 = v17;
  v40 = v17[9];
  v41 = *(v13 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v40, v16, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
  v42 = a2 + v40;
  v43 = v41;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v42, &v16[v41], &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
  v44 = *(v5 + 48);
  if (v44(v16, 1, v4) != 1)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16, v12, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
    if (v44(&v16[v43], 1, v4) != 1)
    {
      outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v16[v43], v8, type metadata accessor for Proto_Gnss_Emergency_Configuration);
      v47 = specialized static Proto_Gnss_Emergency_Configuration.== infix(_:_:)(v12, v8);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v8, type metadata accessor for Proto_Gnss_Emergency_Configuration);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v12, type metadata accessor for Proto_Gnss_Emergency_Configuration);
      outlined destroy of Any?(v16, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
      if ((v47 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_35;
    }

    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v12, type metadata accessor for Proto_Gnss_Emergency_Configuration);
LABEL_31:
    outlined destroy of Any?(v16, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSg_ADtMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSg_ADtMR);
    goto LABEL_32;
  }

  if (v44(&v16[v43], 1, v4) != 1)
  {
    goto LABEL_31;
  }

  outlined destroy of Any?(v16, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
LABEL_35:
  v48 = v65;
  v49 = v65[10];
  v50 = (a1 + v49);
  v51 = *(a1 + v49 + 8);
  v52 = (a2 + v49);
  v53 = v52[1];
  if (v51)
  {
    if (!v53)
    {
      goto LABEL_32;
    }

    if (*v50 != *v52 || v51 != v53)
    {
      v54 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v48 = v65;
      if ((v54 & 1) == 0)
      {
        goto LABEL_32;
      }
    }
  }

  else if (v53)
  {
    goto LABEL_32;
  }

  v55 = v48[11];
  v56 = *(a1 + v55);
  v57 = *(a2 + v55);
  if (v56 == 2)
  {
    if (v57 != 2)
    {
      goto LABEL_32;
    }
  }

  else if (v57 == 2 || ((v56 ^ v57) & 1) != 0)
  {
    goto LABEL_32;
  }

  v58 = v48[12];
  v59 = *(a1 + v58);
  v60 = *(a2 + v58);
  if (v59 == 2)
  {
    if (v60 != 2)
    {
      goto LABEL_32;
    }
  }

  else if (v60 == 2 || ((v59 ^ v60) & 1) != 0)
  {
    goto LABEL_32;
  }

  v61 = v48[13];
  v62 = *(a1 + v61);
  v63 = *(a2 + v61);
  if (v62 != 2)
  {
    if (v63 == 2 || ((v62 ^ v63) & 1) != 0)
    {
      goto LABEL_32;
    }

LABEL_57:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v45 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v45 & 1;
  }

  if (v63 == 2)
  {
    goto LABEL_57;
  }

LABEL_32:
  v45 = 0;
  return v45 & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_SessionInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 6)
  {
    if (v7 != 6)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 != 7)
  {
    if (v9 == v10)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v10 != 7)
  {
    return 0;
  }

LABEL_9:
  v11 = v4[7];
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

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_LocEstimate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMd, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSg_ADtMd, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v35 - v15;
  v17 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  v18 = *(v17 + 20);
  v36 = a1;
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 9)
  {
    if (v20 != 9)
    {
      goto LABEL_12;
    }
  }

  else if (v19 != v20)
  {
    goto LABEL_12;
  }

  v21 = a2;
  v22 = *(v17 + 24);
  v23 = *(v13 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v36 + v22, v16, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMd, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v21 + v22, &v16[v23], &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMd, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMR);
  v24 = *(v5 + 48);
  if (v24(v16, 1, v4) == 1)
  {
    if (v24(&v16[v23], 1, v4) == 1)
    {
      outlined destroy of Any?(v16, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMd, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMR);
LABEL_17:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v27 & 1;
    }

    goto LABEL_10;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16, v12, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMd, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMR);
  if (v24(&v16[v23], 1, v4) == 1)
  {
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v12, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
LABEL_10:
    v25 = &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSg_ADtMd;
    v26 = &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSg_ADtMR;
LABEL_11:
    outlined destroy of Any?(v16, v25, v26);
    goto LABEL_12;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v16[v23], v8, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
  v29 = *(v4 + 20);
  v30 = *&v12[v29];
  v31 = *&v8[v29];
  if (v30 != v31)
  {
    v32 = *&v12[v29];

    v33 = closure #1 in static Proto_Gnss_Emergency_ShapeInfo.== infix(_:_:)(v30, v31);

    if ((v33 & 1) == 0)
    {
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v8, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v12, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
      v25 = &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMd;
      v26 = &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMR;
      goto LABEL_11;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v34 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v8, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v12, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
  outlined destroy of Any?(v16, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMd, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMR);
  if (v34)
  {
    goto LABEL_17;
  }

LABEL_12:
  v27 = 0;
  return v27 & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_EmergConfig.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
  v72 = *(v4 - 8);
  v73 = v4;
  v5 = *(v72 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v70 = &v65 - v10;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSg_ADtMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSg_ADtMR);
  v11 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v74 = &v65 - v12;
  v13 = type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v65 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSg_ADtMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSg_ADtMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v65 - v24;
  v26 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  v27 = v26;
  v28 = *(v26 + 20);
  v29 = *(a1 + v28);
  v30 = *(a2 + v28);
  if (v29 == 2)
  {
    if (v30 != 2)
    {
      goto LABEL_33;
    }
  }

  else if (v30 == 2 || ((v29 ^ v30) & 1) != 0)
  {
    goto LABEL_33;
  }

  v31 = *(v26 + 24);
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = v34[1];
  if (v33)
  {
    if (!v35 || (*v32 != *v34 || v33 != v35) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (v35)
  {
    goto LABEL_33;
  }

  v66 = v7;
  v67 = v17;
  v36 = v14;
  v37 = *(v27 + 28);
  v38 = *(v22 + 48);
  v68 = a1;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v37, v25, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMR);
  v39 = a2 + v37;
  v40 = a2;
  v69 = v38;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v39, &v25[v38], &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMR);
  v41 = *(v36 + 48);
  if (v41(v25, 1, v13) != 1)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v25, v21, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMR);
    v49 = v69;
    if (v41(&v25[v69], 1, v13) == 1)
    {
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v21, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);
      goto LABEL_21;
    }

    v52 = &v25[v49];
    v53 = v67;
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v52, v67, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);
    v54 = *(v13 + 20);
    v55 = v21[v54];
    v56 = *(v53 + v54);
    if (v55 == 2)
    {
      v42 = v68;
      if (v56 == 2)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v42 = v68;
      if (v56 != 2 && ((v55 ^ v56) & 1) == 0)
      {
LABEL_35:
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v61 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v53, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v21, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);
        outlined destroy of Any?(v25, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMR);
        if ((v61 & 1) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_16;
      }
    }

    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v53, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v21, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);
    v50 = &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMd;
    v51 = &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMR;
    goto LABEL_31;
  }

  if (v41(&v25[v69], 1, v13) != 1)
  {
LABEL_21:
    v50 = &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSg_ADtMd;
    v51 = &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSg_ADtMR;
LABEL_31:
    v58 = v25;
    goto LABEL_32;
  }

  outlined destroy of Any?(v25, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMR);
  v42 = v68;
LABEL_16:
  v43 = *(v27 + 32);
  v44 = v40;
  v45 = *(v71 + 48);
  v46 = v74;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v42 + v43, v74, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v44 + v43, v46 + v45, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMR);
  v47 = v73;
  v48 = *(v72 + 48);
  if (v48(v46, 1, v73) == 1)
  {
    if (v48(v46 + v45, 1, v47) == 1)
    {
      outlined destroy of Any?(v46, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMR);
LABEL_38:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v59 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v59 & 1;
    }

    goto LABEL_27;
  }

  v57 = v70;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v46, v70, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMR);
  if (v48(v46 + v45, 1, v47) == 1)
  {
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v57, type metadata accessor for Proto_Gnss_Emergency_SuplConfig);
LABEL_27:
    v50 = &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSg_ADtMd;
    v51 = &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSg_ADtMR;
    v58 = v46;
LABEL_32:
    outlined destroy of Any?(v58, v50, v51);
    goto LABEL_33;
  }

  v62 = v46 + v45;
  v63 = v66;
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v62, v66, type metadata accessor for Proto_Gnss_Emergency_SuplConfig);
  v64 = specialized static Proto_Gnss_Emergency_SuplConfig.== infix(_:_:)(v57, v63);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v63, type metadata accessor for Proto_Gnss_Emergency_SuplConfig);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v57, type metadata accessor for Proto_Gnss_Emergency_SuplConfig);
  outlined destroy of Any?(v46, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMR);
  if (v64)
  {
    goto LABEL_38;
  }

LABEL_33:
  v59 = 0;
  return v59 & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_SuplConfig.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
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
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }

    if (*v11 != *v13 || v12 != v14)
    {
      v16 = v4;
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v16;
      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v14)
  {
    return 0;
  }

  v18 = v4[7];
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

  v21 = v4[8];
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  if (v22 == 2)
  {
    if (v23 != 2)
    {
      return 0;
    }
  }

  else if (v23 == 2 || ((v22 ^ v23) & 1) != 0)
  {
    return 0;
  }

  v24 = v4[9];
  v25 = *(a1 + v24);
  v26 = *(a2 + v24);
  if (v25 == 2)
  {
    if (v26 != 2)
    {
      return 0;
    }
  }

  else if (v26 == 2 || ((v25 ^ v26) & 1) != 0)
  {
    return 0;
  }

  v27 = v4[10];
  v28 = *(a1 + v27);
  v29 = *(a2 + v27);
  if (v28 == 2)
  {
    if (v29 == 2)
    {
      goto LABEL_37;
    }

    return 0;
  }

  if (v29 == 2 || ((v28 ^ v29) & 1) != 0)
  {
    return 0;
  }

LABEL_37:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_LteCellInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0);
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

  v23 = v4[9];
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

  v28 = v4[10];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 4);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 4);
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
  v35 = *(a1 + v33 + 4);
  v36 = (a2 + v33);
  v37 = *(a2 + v33 + 4);
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
  v40 = *(a1 + v38 + 4);
  v41 = (a2 + v38);
  v42 = *(a2 + v38 + 4);
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
  v45 = *(a1 + v43 + 4);
  v46 = (a2 + v43);
  v47 = *(a2 + v43 + 4);
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

  v48 = v4[14];
  v49 = (a1 + v48);
  v50 = *(a1 + v48 + 4);
  v51 = (a2 + v48);
  v52 = *(a2 + v48 + 4);
  if (v50)
  {
    if (!v52)
    {
      return 0;
    }
  }

  else
  {
    if (*v49 != *v51)
    {
      LOBYTE(v52) = 1;
    }

    if (v52)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_LocationId.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_LocationId(0);
  v5 = *(v4 + 32);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 7)
  {
    if (v7 != 7)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf43Proto_Gnss_Emergency_WlanMeasurementElementV_Tt1g5Tm(*a1, *a2, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo, specialized static Proto_Gnss_Emergency_LteCellInfo.== infix(_:_:)) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf32Proto_Gnss_Emergency_GsmCellInfoV_Tt1g5(a1[1], a2[1]) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf34Proto_Gnss_Emergency_GpsAcqElementV_Tt1g5Tm(a1[2], a2[2], type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo, type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo, specialized static Proto_Gnss_Emergency_WcdmaCellInfo.== infix(_:_:)))
  {
    v8 = *(v4 + 28);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static Proto_Gnss_Emergency_TowAssist.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
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
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = *(v5 + 20);
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

  v11 = *(v5 + 24);
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

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_PointAltitude.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v32 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSg_ADtMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSg_ADtMR);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v33 = a3(0);
  v34 = a1;
  v19 = *(v33 + 20);
  v20 = *(v15 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v19, v18, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v19, &v18[v20], &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v21 = *(v7 + 48);
  if (v21(v18, 1, v6) != 1)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v18, v13, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
    if (v21(&v18[v20], 1, v6) != 1)
    {
      v24 = v32;
      outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v18[v20], v32, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
      v25 = specialized static Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted.== infix(_:_:)(v13, v24, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v24, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
      outlined destroy of Any?(v18, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
      if ((v25 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
LABEL_6:
    outlined destroy of Any?(v18, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSg_ADtMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSg_ADtMR);
    goto LABEL_7;
  }

  if (v21(&v18[v20], 1, v6) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of Any?(v18, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
LABEL_10:
  v26 = *(v33 + 24);
  v27 = (v34 + v26);
  v28 = *(v34 + v26 + 4);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 4);
  if (v28)
  {
    if (v30)
    {
LABEL_16:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v22 & 1;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if ((v30 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  v22 = 0;
  return v22 & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_CellInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSg_ADtMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - v15;
  v17 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v18 = v17[5];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 4);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 4);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_25;
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
      goto LABEL_25;
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
      goto LABEL_25;
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
      goto LABEL_25;
    }
  }

  v28 = v17[7];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 4);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 4);
  if (v30)
  {
    if (!v32)
    {
      goto LABEL_25;
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
      goto LABEL_25;
    }
  }

  v33 = v17[8];
  v34 = *(v13 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v33, v16, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  v35 = a2 + v33;
  v36 = v34;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v35, &v16[v34], &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  v37 = *(v5 + 48);
  if (v37(v16, 1, v4) == 1)
  {
    if (v37(&v16[v36], 1, v4) == 1)
    {
      outlined destroy of Any?(v16, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
LABEL_28:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v38 & 1;
    }

    goto LABEL_24;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16, v12, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  if (v37(&v16[v36], 1, v4) == 1)
  {
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v12, type metadata accessor for Proto_Gnss_Emergency_Plmn);
LABEL_24:
    outlined destroy of Any?(v16, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSg_ADtMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSg_ADtMR);
    goto LABEL_25;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v16[v36], v8, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  v40 = specialized static Proto_Gnss_Emergency_HorizWithUncertaintyVelocity.== infix(_:_:)(v12, v8, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v8, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v12, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  outlined destroy of Any?(v16, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  if (v40)
  {
    goto LABEL_28;
  }

LABEL_25:
  v38 = 0;
  return v38 & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_Polygon.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
  v5 = *(v4 + 24);
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

  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf43Proto_Gnss_Emergency_GanssStoredSatDataElemV_Tt1g5Tm(*a1, *a2, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint))
  {
    v10 = *(v4 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static Proto_Gnss_Emergency_HorizWithUncertaintyVelocity.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_SLPAddress.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
  v5 = v4[6];
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

  v8 = v4[7];
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 == 5)
  {
    if (v10 != 5)
    {
      return 0;
    }
  }

  else if (v9 != v10)
  {
    return 0;
  }

  v11 = v4[8];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v14[1];
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }

    if (*v12 != *v14 || v13 != v15)
    {
      v17 = v4;
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v17;
      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  v19 = v4;
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZs5Int32V_Tt1g5(*a1, *a2))
  {
    v20 = v19[5];
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static Proto_Gnss_Emergency_GsmCellInfo.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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
  v10 = (a1 + v9);
  v11 = *(a1 + v9 + 4);
  v12 = (a2 + v9);
  v13 = *(a2 + v9 + 4);
  if (v11)
  {
    if (!v13)
    {
      return 0;
    }
  }

  else
  {
    if (*v10 != *v12)
    {
      LOBYTE(v13) = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  v14 = v5[7];
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 4);
  v17 = (a2 + v14);
  v18 = *(a2 + v14 + 4);
  if (v16)
  {
    if (!v18)
    {
      return 0;
    }
  }

  else
  {
    if (*v15 != *v17)
    {
      LOBYTE(v18) = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  v19 = v5[8];
  v20 = (a1 + v19);
  v21 = *(a1 + v19 + 4);
  v22 = (a2 + v19);
  v23 = *(a2 + v19 + 4);
  if (v21)
  {
    if (!v23)
    {
      return 0;
    }
  }

  else
  {
    if (*v20 != *v22)
    {
      LOBYTE(v23) = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  v24 = v5[9];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 4);
  v27 = (a2 + v24);
  v28 = *(a2 + v24 + 4);
  if (v26)
  {
    if (!v28)
    {
      return 0;
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
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_GanssMeasurementElement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
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
  if (v26 == 6)
  {
    if (v27 != 6)
    {
      return 0;
    }
  }

  else if (v26 != v27)
  {
    return 0;
  }

  v28 = v4[10];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 4);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 4);
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
  v35 = *(a1 + v33 + 4);
  v36 = (a2 + v33);
  v37 = *(a2 + v33 + 4);
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
  v40 = *(a1 + v38 + 4);
  v41 = (a2 + v38);
  v42 = *(a2 + v38 + 4);
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
  v45 = *(a1 + v43 + 4);
  v46 = (a2 + v43);
  v47 = *(a2 + v43 + 4);
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
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_GanssSignalMeasurementInfo.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
  v5 = v4[6];
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

  v10 = v4[7];
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

  v15 = v4[8];
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

  v20 = v4;
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf43Proto_Gnss_Emergency_WlanMeasurementElementV_Tt1g5Tm(*a1, *a2, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement, specialized static Proto_Gnss_Emergency_GanssMeasurementElement.== infix(_:_:)))
  {
    v21 = v20[5];
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMd, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v28 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSg_ADtMd, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - v15;
  v17 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  v18 = *(v17 + 20);
  v29 = a1;
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 7)
  {
    if (v20 != 7)
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
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v29 + v22, v16, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMd, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v21 + v22, &v16[v23], &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMd, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMR);
  v24 = *(v5 + 48);
  if (v24(v16, 1, v4) == 1)
  {
    if (v24(&v16[v23], 1, v4) == 1)
    {
      outlined destroy of Any?(v16, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMd, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMR);
LABEL_14:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v25 & 1;
    }

    goto LABEL_10;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16, v12, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMd, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMR);
  if (v24(&v16[v23], 1, v4) == 1)
  {
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v12, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);
LABEL_10:
    outlined destroy of Any?(v16, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSg_ADtMd, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSg_ADtMR);
    goto LABEL_11;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v16[v23], v8, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);
  v27 = specialized static Proto_Gnss_Emergency_GanssSignalMeasurementInfo.== infix(_:_:)(v12, v8);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v8, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v12, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);
  outlined destroy of Any?(v16, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMd, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMR);
  if (v27)
  {
    goto LABEL_14;
  }

LABEL_11:
  v25 = 0;
  return v25 & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_MeasurementReportWithEstimate.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
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
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_Configuration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
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

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_LcsGanssId and conformance Proto_Gnss_Emergency_LcsGanssId()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LcsGanssId and conformance Proto_Gnss_Emergency_LcsGanssId;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LcsGanssId and conformance Proto_Gnss_Emergency_LcsGanssId)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LcsGanssId and conformance Proto_Gnss_Emergency_LcsGanssId);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LcsGanssId and conformance Proto_Gnss_Emergency_LcsGanssId;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LcsGanssId and conformance Proto_Gnss_Emergency_LcsGanssId)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LcsGanssId and conformance Proto_Gnss_Emergency_LcsGanssId);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LcsGanssId and conformance Proto_Gnss_Emergency_LcsGanssId;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LcsGanssId and conformance Proto_Gnss_Emergency_LcsGanssId)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LcsGanssId and conformance Proto_Gnss_Emergency_LcsGanssId);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LcsGanssId and conformance Proto_Gnss_Emergency_LcsGanssId;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LcsGanssId and conformance Proto_Gnss_Emergency_LcsGanssId)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LcsGanssId and conformance Proto_Gnss_Emergency_LcsGanssId);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_PositionMethod and conformance Proto_Gnss_Emergency_PositionMethod()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionMethod and conformance Proto_Gnss_Emergency_PositionMethod;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionMethod and conformance Proto_Gnss_Emergency_PositionMethod)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionMethod and conformance Proto_Gnss_Emergency_PositionMethod);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionMethod and conformance Proto_Gnss_Emergency_PositionMethod;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionMethod and conformance Proto_Gnss_Emergency_PositionMethod)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionMethod and conformance Proto_Gnss_Emergency_PositionMethod);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionMethod and conformance Proto_Gnss_Emergency_PositionMethod;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionMethod and conformance Proto_Gnss_Emergency_PositionMethod)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionMethod and conformance Proto_Gnss_Emergency_PositionMethod);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionMethod and conformance Proto_Gnss_Emergency_PositionMethod;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionMethod and conformance Proto_Gnss_Emergency_PositionMethod)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionMethod and conformance Proto_Gnss_Emergency_PositionMethod);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_PositionReqType and conformance Proto_Gnss_Emergency_PositionReqType()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionReqType and conformance Proto_Gnss_Emergency_PositionReqType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionReqType and conformance Proto_Gnss_Emergency_PositionReqType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionReqType and conformance Proto_Gnss_Emergency_PositionReqType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionReqType and conformance Proto_Gnss_Emergency_PositionReqType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionReqType and conformance Proto_Gnss_Emergency_PositionReqType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionReqType and conformance Proto_Gnss_Emergency_PositionReqType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionReqType and conformance Proto_Gnss_Emergency_PositionReqType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionReqType and conformance Proto_Gnss_Emergency_PositionReqType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionReqType and conformance Proto_Gnss_Emergency_PositionReqType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionReqType and conformance Proto_Gnss_Emergency_PositionReqType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionReqType and conformance Proto_Gnss_Emergency_PositionReqType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionReqType and conformance Proto_Gnss_Emergency_PositionReqType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_PositionSession and conformance Proto_Gnss_Emergency_PositionSession()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionSession and conformance Proto_Gnss_Emergency_PositionSession;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionSession and conformance Proto_Gnss_Emergency_PositionSession)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionSession and conformance Proto_Gnss_Emergency_PositionSession);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionSession and conformance Proto_Gnss_Emergency_PositionSession;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionSession and conformance Proto_Gnss_Emergency_PositionSession)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionSession and conformance Proto_Gnss_Emergency_PositionSession);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionSession and conformance Proto_Gnss_Emergency_PositionSession;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionSession and conformance Proto_Gnss_Emergency_PositionSession)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionSession and conformance Proto_Gnss_Emergency_PositionSession);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionSession and conformance Proto_Gnss_Emergency_PositionSession;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionSession and conformance Proto_Gnss_Emergency_PositionSession)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionSession and conformance Proto_Gnss_Emergency_PositionSession);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_PositionProtocol and conformance Proto_Gnss_Emergency_PositionProtocol()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionProtocol and conformance Proto_Gnss_Emergency_PositionProtocol;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionProtocol and conformance Proto_Gnss_Emergency_PositionProtocol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionProtocol and conformance Proto_Gnss_Emergency_PositionProtocol);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionProtocol and conformance Proto_Gnss_Emergency_PositionProtocol;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionProtocol and conformance Proto_Gnss_Emergency_PositionProtocol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionProtocol and conformance Proto_Gnss_Emergency_PositionProtocol);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionProtocol and conformance Proto_Gnss_Emergency_PositionProtocol;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionProtocol and conformance Proto_Gnss_Emergency_PositionProtocol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionProtocol and conformance Proto_Gnss_Emergency_PositionProtocol);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionProtocol and conformance Proto_Gnss_Emergency_PositionProtocol;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionProtocol and conformance Proto_Gnss_Emergency_PositionProtocol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionProtocol and conformance Proto_Gnss_Emergency_PositionProtocol);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_SessionErrorCode and conformance Proto_Gnss_Emergency_SessionErrorCode()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionErrorCode and conformance Proto_Gnss_Emergency_SessionErrorCode;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionErrorCode and conformance Proto_Gnss_Emergency_SessionErrorCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionErrorCode and conformance Proto_Gnss_Emergency_SessionErrorCode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionErrorCode and conformance Proto_Gnss_Emergency_SessionErrorCode;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionErrorCode and conformance Proto_Gnss_Emergency_SessionErrorCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionErrorCode and conformance Proto_Gnss_Emergency_SessionErrorCode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionErrorCode and conformance Proto_Gnss_Emergency_SessionErrorCode;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionErrorCode and conformance Proto_Gnss_Emergency_SessionErrorCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionErrorCode and conformance Proto_Gnss_Emergency_SessionErrorCode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionErrorCode and conformance Proto_Gnss_Emergency_SessionErrorCode;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionErrorCode and conformance Proto_Gnss_Emergency_SessionErrorCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionErrorCode and conformance Proto_Gnss_Emergency_SessionErrorCode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_TriggerType and conformance Proto_Gnss_Emergency_TriggerType()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_TriggerType and conformance Proto_Gnss_Emergency_TriggerType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_TriggerType and conformance Proto_Gnss_Emergency_TriggerType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_TriggerType and conformance Proto_Gnss_Emergency_TriggerType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_TriggerType and conformance Proto_Gnss_Emergency_TriggerType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_TriggerType and conformance Proto_Gnss_Emergency_TriggerType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_TriggerType and conformance Proto_Gnss_Emergency_TriggerType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_TriggerType and conformance Proto_Gnss_Emergency_TriggerType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_TriggerType and conformance Proto_Gnss_Emergency_TriggerType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_TriggerType and conformance Proto_Gnss_Emergency_TriggerType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_TriggerType and conformance Proto_Gnss_Emergency_TriggerType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_TriggerType and conformance Proto_Gnss_Emergency_TriggerType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_TriggerType and conformance Proto_Gnss_Emergency_TriggerType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_Status and conformance Proto_Gnss_Emergency_Status()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Status and conformance Proto_Gnss_Emergency_Status;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Status and conformance Proto_Gnss_Emergency_Status)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Status and conformance Proto_Gnss_Emergency_Status);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Status and conformance Proto_Gnss_Emergency_Status;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Status and conformance Proto_Gnss_Emergency_Status)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Status and conformance Proto_Gnss_Emergency_Status);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Status and conformance Proto_Gnss_Emergency_Status;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Status and conformance Proto_Gnss_Emergency_Status)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Status and conformance Proto_Gnss_Emergency_Status);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Status and conformance Proto_Gnss_Emergency_Status;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Status and conformance Proto_Gnss_Emergency_Status)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Status and conformance Proto_Gnss_Emergency_Status);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_EndCause and conformance Proto_Gnss_Emergency_EndCause()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EndCause and conformance Proto_Gnss_Emergency_EndCause;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EndCause and conformance Proto_Gnss_Emergency_EndCause)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EndCause and conformance Proto_Gnss_Emergency_EndCause);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EndCause and conformance Proto_Gnss_Emergency_EndCause;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EndCause and conformance Proto_Gnss_Emergency_EndCause)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EndCause and conformance Proto_Gnss_Emergency_EndCause);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EndCause and conformance Proto_Gnss_Emergency_EndCause;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EndCause and conformance Proto_Gnss_Emergency_EndCause)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EndCause and conformance Proto_Gnss_Emergency_EndCause);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EndCause and conformance Proto_Gnss_Emergency_EndCause;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EndCause and conformance Proto_Gnss_Emergency_EndCause)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EndCause and conformance Proto_Gnss_Emergency_EndCause);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_ConnectionStatus and conformance Proto_Gnss_Emergency_ConnectionStatus()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ConnectionStatus and conformance Proto_Gnss_Emergency_ConnectionStatus;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ConnectionStatus and conformance Proto_Gnss_Emergency_ConnectionStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ConnectionStatus and conformance Proto_Gnss_Emergency_ConnectionStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ConnectionStatus and conformance Proto_Gnss_Emergency_ConnectionStatus;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ConnectionStatus and conformance Proto_Gnss_Emergency_ConnectionStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ConnectionStatus and conformance Proto_Gnss_Emergency_ConnectionStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ConnectionStatus and conformance Proto_Gnss_Emergency_ConnectionStatus;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ConnectionStatus and conformance Proto_Gnss_Emergency_ConnectionStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ConnectionStatus and conformance Proto_Gnss_Emergency_ConnectionStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ConnectionStatus and conformance Proto_Gnss_Emergency_ConnectionStatus;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ConnectionStatus and conformance Proto_Gnss_Emergency_ConnectionStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ConnectionStatus and conformance Proto_Gnss_Emergency_ConnectionStatus);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_CellType and conformance Proto_Gnss_Emergency_CellType()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellType and conformance Proto_Gnss_Emergency_CellType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellType and conformance Proto_Gnss_Emergency_CellType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellType and conformance Proto_Gnss_Emergency_CellType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellType and conformance Proto_Gnss_Emergency_CellType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellType and conformance Proto_Gnss_Emergency_CellType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellType and conformance Proto_Gnss_Emergency_CellType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellType and conformance Proto_Gnss_Emergency_CellType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellType and conformance Proto_Gnss_Emergency_CellType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellType and conformance Proto_Gnss_Emergency_CellType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellType and conformance Proto_Gnss_Emergency_CellType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellType and conformance Proto_Gnss_Emergency_CellType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellType and conformance Proto_Gnss_Emergency_CellType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_FreqMode and conformance Proto_Gnss_Emergency_FreqMode()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FreqMode and conformance Proto_Gnss_Emergency_FreqMode;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FreqMode and conformance Proto_Gnss_Emergency_FreqMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FreqMode and conformance Proto_Gnss_Emergency_FreqMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FreqMode and conformance Proto_Gnss_Emergency_FreqMode;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FreqMode and conformance Proto_Gnss_Emergency_FreqMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FreqMode and conformance Proto_Gnss_Emergency_FreqMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FreqMode and conformance Proto_Gnss_Emergency_FreqMode;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FreqMode and conformance Proto_Gnss_Emergency_FreqMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FreqMode and conformance Proto_Gnss_Emergency_FreqMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FreqMode and conformance Proto_Gnss_Emergency_FreqMode;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FreqMode and conformance Proto_Gnss_Emergency_FreqMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FreqMode and conformance Proto_Gnss_Emergency_FreqMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_SLPAddressType and conformance Proto_Gnss_Emergency_SLPAddressType()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SLPAddressType and conformance Proto_Gnss_Emergency_SLPAddressType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SLPAddressType and conformance Proto_Gnss_Emergency_SLPAddressType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SLPAddressType and conformance Proto_Gnss_Emergency_SLPAddressType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SLPAddressType and conformance Proto_Gnss_Emergency_SLPAddressType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SLPAddressType and conformance Proto_Gnss_Emergency_SLPAddressType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SLPAddressType and conformance Proto_Gnss_Emergency_SLPAddressType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SLPAddressType and conformance Proto_Gnss_Emergency_SLPAddressType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SLPAddressType and conformance Proto_Gnss_Emergency_SLPAddressType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SLPAddressType and conformance Proto_Gnss_Emergency_SLPAddressType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SLPAddressType and conformance Proto_Gnss_Emergency_SLPAddressType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SLPAddressType and conformance Proto_Gnss_Emergency_SLPAddressType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SLPAddressType and conformance Proto_Gnss_Emergency_SLPAddressType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_ErrorCodes and conformance Proto_Gnss_Emergency_ErrorCodes()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ErrorCodes and conformance Proto_Gnss_Emergency_ErrorCodes;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ErrorCodes and conformance Proto_Gnss_Emergency_ErrorCodes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ErrorCodes and conformance Proto_Gnss_Emergency_ErrorCodes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ErrorCodes and conformance Proto_Gnss_Emergency_ErrorCodes;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ErrorCodes and conformance Proto_Gnss_Emergency_ErrorCodes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ErrorCodes and conformance Proto_Gnss_Emergency_ErrorCodes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ErrorCodes and conformance Proto_Gnss_Emergency_ErrorCodes;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ErrorCodes and conformance Proto_Gnss_Emergency_ErrorCodes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ErrorCodes and conformance Proto_Gnss_Emergency_ErrorCodes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ErrorCodes and conformance Proto_Gnss_Emergency_ErrorCodes;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ErrorCodes and conformance Proto_Gnss_Emergency_ErrorCodes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ErrorCodes and conformance Proto_Gnss_Emergency_ErrorCodes);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_ClsModemState and conformance Proto_Gnss_Emergency_ClsModemState()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsModemState and conformance Proto_Gnss_Emergency_ClsModemState;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsModemState and conformance Proto_Gnss_Emergency_ClsModemState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsModemState and conformance Proto_Gnss_Emergency_ClsModemState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsModemState and conformance Proto_Gnss_Emergency_ClsModemState;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsModemState and conformance Proto_Gnss_Emergency_ClsModemState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsModemState and conformance Proto_Gnss_Emergency_ClsModemState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsModemState and conformance Proto_Gnss_Emergency_ClsModemState;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsModemState and conformance Proto_Gnss_Emergency_ClsModemState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsModemState and conformance Proto_Gnss_Emergency_ClsModemState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsModemState and conformance Proto_Gnss_Emergency_ClsModemState;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsModemState and conformance Proto_Gnss_Emergency_ClsModemState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsModemState and conformance Proto_Gnss_Emergency_ClsModemState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_MethodType and conformance Proto_Gnss_Emergency_MethodType()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MethodType and conformance Proto_Gnss_Emergency_MethodType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MethodType and conformance Proto_Gnss_Emergency_MethodType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MethodType and conformance Proto_Gnss_Emergency_MethodType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MethodType and conformance Proto_Gnss_Emergency_MethodType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MethodType and conformance Proto_Gnss_Emergency_MethodType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MethodType and conformance Proto_Gnss_Emergency_MethodType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MethodType and conformance Proto_Gnss_Emergency_MethodType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MethodType and conformance Proto_Gnss_Emergency_MethodType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MethodType and conformance Proto_Gnss_Emergency_MethodType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MethodType and conformance Proto_Gnss_Emergency_MethodType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MethodType and conformance Proto_Gnss_Emergency_MethodType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MethodType and conformance Proto_Gnss_Emergency_MethodType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_Environment and conformance Proto_Gnss_Emergency_Environment()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Environment and conformance Proto_Gnss_Emergency_Environment;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Environment and conformance Proto_Gnss_Emergency_Environment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Environment and conformance Proto_Gnss_Emergency_Environment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Environment and conformance Proto_Gnss_Emergency_Environment;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Environment and conformance Proto_Gnss_Emergency_Environment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Environment and conformance Proto_Gnss_Emergency_Environment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Environment and conformance Proto_Gnss_Emergency_Environment;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Environment and conformance Proto_Gnss_Emergency_Environment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Environment and conformance Proto_Gnss_Emergency_Environment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Environment and conformance Proto_Gnss_Emergency_Environment;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Environment and conformance Proto_Gnss_Emergency_Environment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Environment and conformance Proto_Gnss_Emergency_Environment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_AdditionalInfo and conformance Proto_Gnss_Emergency_AdditionalInfo()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AdditionalInfo and conformance Proto_Gnss_Emergency_AdditionalInfo;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AdditionalInfo and conformance Proto_Gnss_Emergency_AdditionalInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AdditionalInfo and conformance Proto_Gnss_Emergency_AdditionalInfo);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AdditionalInfo and conformance Proto_Gnss_Emergency_AdditionalInfo;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AdditionalInfo and conformance Proto_Gnss_Emergency_AdditionalInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AdditionalInfo and conformance Proto_Gnss_Emergency_AdditionalInfo);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AdditionalInfo and conformance Proto_Gnss_Emergency_AdditionalInfo;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AdditionalInfo and conformance Proto_Gnss_Emergency_AdditionalInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AdditionalInfo and conformance Proto_Gnss_Emergency_AdditionalInfo);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AdditionalInfo and conformance Proto_Gnss_Emergency_AdditionalInfo;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AdditionalInfo and conformance Proto_Gnss_Emergency_AdditionalInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AdditionalInfo and conformance Proto_Gnss_Emergency_AdditionalInfo);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_GnssId and conformance Proto_Gnss_Emergency_GnssId()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssId and conformance Proto_Gnss_Emergency_GnssId;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssId and conformance Proto_Gnss_Emergency_GnssId)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssId and conformance Proto_Gnss_Emergency_GnssId);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssId and conformance Proto_Gnss_Emergency_GnssId;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssId and conformance Proto_Gnss_Emergency_GnssId)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssId and conformance Proto_Gnss_Emergency_GnssId);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssId and conformance Proto_Gnss_Emergency_GnssId;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssId and conformance Proto_Gnss_Emergency_GnssId)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssId and conformance Proto_Gnss_Emergency_GnssId);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssId and conformance Proto_Gnss_Emergency_GnssId;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssId and conformance Proto_Gnss_Emergency_GnssId)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssId and conformance Proto_Gnss_Emergency_GnssId);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_SupportedGADShapes and conformance Proto_Gnss_Emergency_SupportedGADShapes()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SupportedGADShapes and conformance Proto_Gnss_Emergency_SupportedGADShapes;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SupportedGADShapes and conformance Proto_Gnss_Emergency_SupportedGADShapes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SupportedGADShapes and conformance Proto_Gnss_Emergency_SupportedGADShapes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SupportedGADShapes and conformance Proto_Gnss_Emergency_SupportedGADShapes;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SupportedGADShapes and conformance Proto_Gnss_Emergency_SupportedGADShapes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SupportedGADShapes and conformance Proto_Gnss_Emergency_SupportedGADShapes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SupportedGADShapes and conformance Proto_Gnss_Emergency_SupportedGADShapes;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SupportedGADShapes and conformance Proto_Gnss_Emergency_SupportedGADShapes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SupportedGADShapes and conformance Proto_Gnss_Emergency_SupportedGADShapes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SupportedGADShapes and conformance Proto_Gnss_Emergency_SupportedGADShapes;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SupportedGADShapes and conformance Proto_Gnss_Emergency_SupportedGADShapes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SupportedGADShapes and conformance Proto_Gnss_Emergency_SupportedGADShapes);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_FixType and conformance Proto_Gnss_Emergency_FixType()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FixType and conformance Proto_Gnss_Emergency_FixType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FixType and conformance Proto_Gnss_Emergency_FixType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FixType and conformance Proto_Gnss_Emergency_FixType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FixType and conformance Proto_Gnss_Emergency_FixType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FixType and conformance Proto_Gnss_Emergency_FixType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FixType and conformance Proto_Gnss_Emergency_FixType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FixType and conformance Proto_Gnss_Emergency_FixType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FixType and conformance Proto_Gnss_Emergency_FixType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FixType and conformance Proto_Gnss_Emergency_FixType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FixType and conformance Proto_Gnss_Emergency_FixType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FixType and conformance Proto_Gnss_Emergency_FixType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FixType and conformance Proto_Gnss_Emergency_FixType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_ClsNetworkType and conformance Proto_Gnss_Emergency_ClsNetworkType()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsNetworkType and conformance Proto_Gnss_Emergency_ClsNetworkType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsNetworkType and conformance Proto_Gnss_Emergency_ClsNetworkType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsNetworkType and conformance Proto_Gnss_Emergency_ClsNetworkType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsNetworkType and conformance Proto_Gnss_Emergency_ClsNetworkType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsNetworkType and conformance Proto_Gnss_Emergency_ClsNetworkType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsNetworkType and conformance Proto_Gnss_Emergency_ClsNetworkType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsNetworkType and conformance Proto_Gnss_Emergency_ClsNetworkType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsNetworkType and conformance Proto_Gnss_Emergency_ClsNetworkType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsNetworkType and conformance Proto_Gnss_Emergency_ClsNetworkType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsNetworkType and conformance Proto_Gnss_Emergency_ClsNetworkType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsNetworkType and conformance Proto_Gnss_Emergency_ClsNetworkType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsNetworkType and conformance Proto_Gnss_Emergency_ClsNetworkType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_GnssTimeId and conformance Proto_Gnss_Emergency_GnssTimeId()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssTimeId and conformance Proto_Gnss_Emergency_GnssTimeId;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssTimeId and conformance Proto_Gnss_Emergency_GnssTimeId)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssTimeId and conformance Proto_Gnss_Emergency_GnssTimeId);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssTimeId and conformance Proto_Gnss_Emergency_GnssTimeId;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssTimeId and conformance Proto_Gnss_Emergency_GnssTimeId)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssTimeId and conformance Proto_Gnss_Emergency_GnssTimeId);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssTimeId and conformance Proto_Gnss_Emergency_GnssTimeId;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssTimeId and conformance Proto_Gnss_Emergency_GnssTimeId)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssTimeId and conformance Proto_Gnss_Emergency_GnssTimeId);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssTimeId and conformance Proto_Gnss_Emergency_GnssTimeId;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssTimeId and conformance Proto_Gnss_Emergency_GnssTimeId)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssTimeId and conformance Proto_Gnss_Emergency_GnssTimeId);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_ShapeType and conformance Proto_Gnss_Emergency_ShapeType()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ShapeType and conformance Proto_Gnss_Emergency_ShapeType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ShapeType and conformance Proto_Gnss_Emergency_ShapeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ShapeType and conformance Proto_Gnss_Emergency_ShapeType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ShapeType and conformance Proto_Gnss_Emergency_ShapeType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ShapeType and conformance Proto_Gnss_Emergency_ShapeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ShapeType and conformance Proto_Gnss_Emergency_ShapeType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ShapeType and conformance Proto_Gnss_Emergency_ShapeType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ShapeType and conformance Proto_Gnss_Emergency_ShapeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ShapeType and conformance Proto_Gnss_Emergency_ShapeType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ShapeType and conformance Proto_Gnss_Emergency_ShapeType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ShapeType and conformance Proto_Gnss_Emergency_ShapeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ShapeType and conformance Proto_Gnss_Emergency_ShapeType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_VelocityType and conformance Proto_Gnss_Emergency_VelocityType()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityType and conformance Proto_Gnss_Emergency_VelocityType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityType and conformance Proto_Gnss_Emergency_VelocityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityType and conformance Proto_Gnss_Emergency_VelocityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityType and conformance Proto_Gnss_Emergency_VelocityType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityType and conformance Proto_Gnss_Emergency_VelocityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityType and conformance Proto_Gnss_Emergency_VelocityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityType and conformance Proto_Gnss_Emergency_VelocityType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityType and conformance Proto_Gnss_Emergency_VelocityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityType and conformance Proto_Gnss_Emergency_VelocityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityType and conformance Proto_Gnss_Emergency_VelocityType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityType and conformance Proto_Gnss_Emergency_VelocityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityType and conformance Proto_Gnss_Emergency_VelocityType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_MultipathIndicator and conformance Proto_Gnss_Emergency_MultipathIndicator()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MultipathIndicator and conformance Proto_Gnss_Emergency_MultipathIndicator;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MultipathIndicator and conformance Proto_Gnss_Emergency_MultipathIndicator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MultipathIndicator and conformance Proto_Gnss_Emergency_MultipathIndicator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MultipathIndicator and conformance Proto_Gnss_Emergency_MultipathIndicator;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MultipathIndicator and conformance Proto_Gnss_Emergency_MultipathIndicator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MultipathIndicator and conformance Proto_Gnss_Emergency_MultipathIndicator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MultipathIndicator and conformance Proto_Gnss_Emergency_MultipathIndicator;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MultipathIndicator and conformance Proto_Gnss_Emergency_MultipathIndicator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MultipathIndicator and conformance Proto_Gnss_Emergency_MultipathIndicator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MultipathIndicator and conformance Proto_Gnss_Emergency_MultipathIndicator;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MultipathIndicator and conformance Proto_Gnss_Emergency_MultipathIndicator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MultipathIndicator and conformance Proto_Gnss_Emergency_MultipathIndicator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_GanssId and conformance Proto_Gnss_Emergency_GanssId()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssId and conformance Proto_Gnss_Emergency_GanssId;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssId and conformance Proto_Gnss_Emergency_GanssId)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssId and conformance Proto_Gnss_Emergency_GanssId);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssId and conformance Proto_Gnss_Emergency_GanssId;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssId and conformance Proto_Gnss_Emergency_GanssId)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssId and conformance Proto_Gnss_Emergency_GanssId);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssId and conformance Proto_Gnss_Emergency_GanssId;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssId and conformance Proto_Gnss_Emergency_GanssId)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssId and conformance Proto_Gnss_Emergency_GanssId);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssId and conformance Proto_Gnss_Emergency_GanssId;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssId and conformance Proto_Gnss_Emergency_GanssId)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssId and conformance Proto_Gnss_Emergency_GanssId);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_MeasurementsResult and conformance Proto_Gnss_Emergency_MeasurementsResult()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementsResult and conformance Proto_Gnss_Emergency_MeasurementsResult;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementsResult and conformance Proto_Gnss_Emergency_MeasurementsResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementsResult and conformance Proto_Gnss_Emergency_MeasurementsResult);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementsResult and conformance Proto_Gnss_Emergency_MeasurementsResult;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementsResult and conformance Proto_Gnss_Emergency_MeasurementsResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementsResult and conformance Proto_Gnss_Emergency_MeasurementsResult);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementsResult and conformance Proto_Gnss_Emergency_MeasurementsResult;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementsResult and conformance Proto_Gnss_Emergency_MeasurementsResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementsResult and conformance Proto_Gnss_Emergency_MeasurementsResult);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementsResult and conformance Proto_Gnss_Emergency_MeasurementsResult;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementsResult and conformance Proto_Gnss_Emergency_MeasurementsResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementsResult and conformance Proto_Gnss_Emergency_MeasurementsResult);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_AidMask and conformance Proto_Gnss_Emergency_AidMask()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AidMask and conformance Proto_Gnss_Emergency_AidMask;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AidMask and conformance Proto_Gnss_Emergency_AidMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AidMask and conformance Proto_Gnss_Emergency_AidMask);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AidMask and conformance Proto_Gnss_Emergency_AidMask;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AidMask and conformance Proto_Gnss_Emergency_AidMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AidMask and conformance Proto_Gnss_Emergency_AidMask);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AidMask and conformance Proto_Gnss_Emergency_AidMask;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AidMask and conformance Proto_Gnss_Emergency_AidMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AidMask and conformance Proto_Gnss_Emergency_AidMask);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AidMask and conformance Proto_Gnss_Emergency_AidMask;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AidMask and conformance Proto_Gnss_Emergency_AidMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AidMask and conformance Proto_Gnss_Emergency_AidMask);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_GanssCommonAidMask and conformance Proto_Gnss_Emergency_GanssCommonAidMask()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssCommonAidMask and conformance Proto_Gnss_Emergency_GanssCommonAidMask;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssCommonAidMask and conformance Proto_Gnss_Emergency_GanssCommonAidMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssCommonAidMask and conformance Proto_Gnss_Emergency_GanssCommonAidMask);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssCommonAidMask and conformance Proto_Gnss_Emergency_GanssCommonAidMask;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssCommonAidMask and conformance Proto_Gnss_Emergency_GanssCommonAidMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssCommonAidMask and conformance Proto_Gnss_Emergency_GanssCommonAidMask);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssCommonAidMask and conformance Proto_Gnss_Emergency_GanssCommonAidMask;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssCommonAidMask and conformance Proto_Gnss_Emergency_GanssCommonAidMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssCommonAidMask and conformance Proto_Gnss_Emergency_GanssCommonAidMask);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssCommonAidMask and conformance Proto_Gnss_Emergency_GanssCommonAidMask;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssCommonAidMask and conformance Proto_Gnss_Emergency_GanssCommonAidMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssCommonAidMask and conformance Proto_Gnss_Emergency_GanssCommonAidMask);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_GanssGenericAidMask and conformance Proto_Gnss_Emergency_GanssGenericAidMask()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssGenericAidMask and conformance Proto_Gnss_Emergency_GanssGenericAidMask;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssGenericAidMask and conformance Proto_Gnss_Emergency_GanssGenericAidMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssGenericAidMask and conformance Proto_Gnss_Emergency_GanssGenericAidMask);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssGenericAidMask and conformance Proto_Gnss_Emergency_GanssGenericAidMask;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssGenericAidMask and conformance Proto_Gnss_Emergency_GanssGenericAidMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssGenericAidMask and conformance Proto_Gnss_Emergency_GanssGenericAidMask);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssGenericAidMask and conformance Proto_Gnss_Emergency_GanssGenericAidMask;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssGenericAidMask and conformance Proto_Gnss_Emergency_GanssGenericAidMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssGenericAidMask and conformance Proto_Gnss_Emergency_GanssGenericAidMask);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssGenericAidMask and conformance Proto_Gnss_Emergency_GanssGenericAidMask;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssGenericAidMask and conformance Proto_Gnss_Emergency_GanssGenericAidMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssGenericAidMask and conformance Proto_Gnss_Emergency_GanssGenericAidMask);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_GanssSignalIdMask and conformance Proto_Gnss_Emergency_GanssSignalIdMask()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssSignalIdMask and conformance Proto_Gnss_Emergency_GanssSignalIdMask;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssSignalIdMask and conformance Proto_Gnss_Emergency_GanssSignalIdMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssSignalIdMask and conformance Proto_Gnss_Emergency_GanssSignalIdMask);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssSignalIdMask and conformance Proto_Gnss_Emergency_GanssSignalIdMask;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssSignalIdMask and conformance Proto_Gnss_Emergency_GanssSignalIdMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssSignalIdMask and conformance Proto_Gnss_Emergency_GanssSignalIdMask);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssSignalIdMask and conformance Proto_Gnss_Emergency_GanssSignalIdMask;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssSignalIdMask and conformance Proto_Gnss_Emergency_GanssSignalIdMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssSignalIdMask and conformance Proto_Gnss_Emergency_GanssSignalIdMask);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssSignalIdMask and conformance Proto_Gnss_Emergency_GanssSignalIdMask;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssSignalIdMask and conformance Proto_Gnss_Emergency_GanssSignalIdMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssSignalIdMask and conformance Proto_Gnss_Emergency_GanssSignalIdMask);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_AssistanceRequest and conformance Proto_Gnss_Emergency_AssistanceRequest()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AssistanceRequest and conformance Proto_Gnss_Emergency_AssistanceRequest;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AssistanceRequest and conformance Proto_Gnss_Emergency_AssistanceRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AssistanceRequest and conformance Proto_Gnss_Emergency_AssistanceRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AssistanceRequest and conformance Proto_Gnss_Emergency_AssistanceRequest;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AssistanceRequest and conformance Proto_Gnss_Emergency_AssistanceRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AssistanceRequest and conformance Proto_Gnss_Emergency_AssistanceRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AssistanceRequest and conformance Proto_Gnss_Emergency_AssistanceRequest;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AssistanceRequest and conformance Proto_Gnss_Emergency_AssistanceRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AssistanceRequest and conformance Proto_Gnss_Emergency_AssistanceRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AssistanceRequest and conformance Proto_Gnss_Emergency_AssistanceRequest;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AssistanceRequest and conformance Proto_Gnss_Emergency_AssistanceRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AssistanceRequest and conformance Proto_Gnss_Emergency_AssistanceRequest);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_UtranSfnGpsUncertainty and conformance Proto_Gnss_Emergency_UtranSfnGpsUncertainty()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranSfnGpsUncertainty and conformance Proto_Gnss_Emergency_UtranSfnGpsUncertainty;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranSfnGpsUncertainty and conformance Proto_Gnss_Emergency_UtranSfnGpsUncertainty)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranSfnGpsUncertainty and conformance Proto_Gnss_Emergency_UtranSfnGpsUncertainty);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranSfnGpsUncertainty and conformance Proto_Gnss_Emergency_UtranSfnGpsUncertainty;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranSfnGpsUncertainty and conformance Proto_Gnss_Emergency_UtranSfnGpsUncertainty)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranSfnGpsUncertainty and conformance Proto_Gnss_Emergency_UtranSfnGpsUncertainty);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranSfnGpsUncertainty and conformance Proto_Gnss_Emergency_UtranSfnGpsUncertainty;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranSfnGpsUncertainty and conformance Proto_Gnss_Emergency_UtranSfnGpsUncertainty)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranSfnGpsUncertainty and conformance Proto_Gnss_Emergency_UtranSfnGpsUncertainty);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranSfnGpsUncertainty and conformance Proto_Gnss_Emergency_UtranSfnGpsUncertainty;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranSfnGpsUncertainty and conformance Proto_Gnss_Emergency_UtranSfnGpsUncertainty)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranSfnGpsUncertainty and conformance Proto_Gnss_Emergency_UtranSfnGpsUncertainty);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_GpsDopplerUncMpsExt and conformance Proto_Gnss_Emergency_GpsDopplerUncMpsExt()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsDopplerUncMpsExt and conformance Proto_Gnss_Emergency_GpsDopplerUncMpsExt;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsDopplerUncMpsExt and conformance Proto_Gnss_Emergency_GpsDopplerUncMpsExt)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsDopplerUncMpsExt and conformance Proto_Gnss_Emergency_GpsDopplerUncMpsExt);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsDopplerUncMpsExt and conformance Proto_Gnss_Emergency_GpsDopplerUncMpsExt;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsDopplerUncMpsExt and conformance Proto_Gnss_Emergency_GpsDopplerUncMpsExt)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsDopplerUncMpsExt and conformance Proto_Gnss_Emergency_GpsDopplerUncMpsExt);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsDopplerUncMpsExt and conformance Proto_Gnss_Emergency_GpsDopplerUncMpsExt;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsDopplerUncMpsExt and conformance Proto_Gnss_Emergency_GpsDopplerUncMpsExt)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsDopplerUncMpsExt and conformance Proto_Gnss_Emergency_GpsDopplerUncMpsExt);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsDopplerUncMpsExt and conformance Proto_Gnss_Emergency_GpsDopplerUncMpsExt;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsDopplerUncMpsExt and conformance Proto_Gnss_Emergency_GpsDopplerUncMpsExt)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsDopplerUncMpsExt and conformance Proto_Gnss_Emergency_GpsDopplerUncMpsExt);
  }

  return result;
}