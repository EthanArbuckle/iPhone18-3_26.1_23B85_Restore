uint64_t specialized static CLP_LogEntry_PrivateData_Baro.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v27 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  v26 = type metadata accessor for CLP_LogEntry_PrivateData_Baro(0);
  v17 = *(v26 + 24);
  v18 = *(v13 + 56);
  v28 = a1;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v17, v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v17, &v16[v18], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      outlined destroy of Any?(v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16, v11, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_6:
    outlined destroy of Any?(v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
LABEL_10:
    v23 = 0;
    return v23 & 1;
  }

  v20 = v27;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v16[v18], v27, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v21 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v11, v20, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v20, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf35CLP_LogEntry_PrivateData_BaroSampleV_Tt1g5(*v28, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  v22 = *(v26 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v23 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0);
  v5 = v4[6];
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

  v10 = v4[7];
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

  v15 = v4[8];
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

  v20 = v4[9];
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

  v25 = v4;
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DV_Tt1g5(*a1, *a2))
  {
    v26 = v25[5];
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v76 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0);
  v71 = *(v3 - 8);
  v72 = v3;
  v4 = *(v71 + 64);
  MEMORY[0x28223BE20](v3);
  v68 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMd, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v69 = &v67 - v8;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSg_AFtMd, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSg_AFtMR);
  v9 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v73 = &v67 - v10;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMd, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = (&v67 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSg_ADtMd, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSg_ADtMR);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v67 - v23;
  v74 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
  v75 = a1;
  v25 = v74[6];
  v26 = *(v21 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v25, v24, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMd, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMR);
  v27 = v76;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v76 + v25, &v24[v26], &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMd, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMR);
  v28 = *(v12 + 48);
  if (v28(v24, 1, v11) == 1)
  {
    if (v28(&v24[v26], 1, v11) == 1)
    {
      outlined destroy of Any?(v24, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMd, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMR);
      goto LABEL_9;
    }

LABEL_6:
    v29 = &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSg_ADtMd;
    v30 = &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSg_ADtMR;
    v31 = v24;
LABEL_7:
    outlined destroy of Any?(v31, v29, v30);
    goto LABEL_26;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v24, v19, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMd, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMR);
  if (v28(&v24[v26], 1, v11) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v19, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);
    goto LABEL_6;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v24[v26], v15, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);
  v32 = specialized static CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox.== infix(_:_:)(v19, v15);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v15, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v19, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);
  outlined destroy of Any?(v24, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMd, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMR);
  if ((v32 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_9:
  v33 = v75;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf59CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranchV_Tt1g5(*v75, *v27) & 1) == 0)
  {
    goto LABEL_26;
  }

  v34 = v74;
  v35 = v74[7];
  v36 = (v33 + v35);
  v37 = *(v33 + v35 + 8);
  v38 = (v27 + v35);
  v39 = *(v27 + v35 + 8);
  if (v37)
  {
    if (!v39)
    {
      goto LABEL_26;
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
      goto LABEL_26;
    }
  }

  v40 = v74[8];
  v41 = *(v33 + v40);
  v42 = *(v27 + v40);
  if (v41 == 4)
  {
    if (v42 != 4)
    {
      goto LABEL_26;
    }
  }

  else if (v41 != v42)
  {
    goto LABEL_26;
  }

  v43 = v74[9];
  v44 = (v33 + v43);
  v45 = *(v33 + v43 + 4);
  v46 = (v27 + v43);
  v47 = *(v27 + v43 + 4);
  if (v45)
  {
    if (!v47)
    {
      goto LABEL_26;
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
      goto LABEL_26;
    }
  }

  v50 = v74[10];
  v51 = *(v70 + 48);
  v52 = v73;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v33 + v50, v73, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMd, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMR);
  v53 = v27 + v50;
  v54 = v52;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v53, v52 + v51, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMd, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMR);
  v55 = v72;
  v56 = *(v71 + 48);
  if (v56(v52, 1, v72) != 1)
  {
    v57 = v69;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v54, v69, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMd, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMR);
    if (v56(v54 + v51, 1, v55) != 1)
    {
      v58 = v54 + v51;
      v59 = v68;
      outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v58, v68, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);
      v60 = specialized static CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures.== infix(_:_:)(v57, v59);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v59, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v57, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);
      outlined destroy of Any?(v54, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMd, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMR);
      if ((v60 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_35;
    }

    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v57, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);
    goto LABEL_33;
  }

  if (v56(v52 + v51, 1, v55) != 1)
  {
LABEL_33:
    v29 = &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSg_AFtMd;
    v30 = &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSg_AFtMR;
    v31 = v54;
    goto LABEL_7;
  }

  outlined destroy of Any?(v52, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMd, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMR);
LABEL_35:
  v61 = v34[11];
  v62 = (v33 + v61);
  v63 = *(v33 + v61 + 8);
  v64 = (v27 + v61);
  v65 = *(v27 + v61 + 8);
  if (v63)
  {
    if (v65)
    {
LABEL_41:
      v66 = v34[5];
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v48 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v48 & 1;
    }
  }

  else
  {
    if (*v62 != *v64)
    {
      LOBYTE(v65) = 1;
    }

    if ((v65 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

LABEL_26:
  v48 = 0;
  return v48 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v30 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData(0);
  v17 = v30[6];
  v18 = *(v13 + 56);
  v32 = a1;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v17, v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v17, &v16[v18], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      outlined destroy of Any?(v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
LABEL_8:
      v23 = v32;
      if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointV_Tt1g5Tm(*v32, *a2, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna, specialized static CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.== infix(_:_:)))
      {
        v24 = v30[7];
        v25 = *(v23 + v24);
        v26 = *(a2 + v24);
        if (v25 == 2)
        {
          if (v26 != 2)
          {
            goto LABEL_14;
          }
        }

        else if (v26 == 2 || ((v25 ^ v26) & 1) != 0)
        {
          goto LABEL_14;
        }

        v28 = v30[5];
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v20 = dispatch thunk of static Equatable.== infix(_:_:)();
        return v20 & 1;
      }

LABEL_14:
      v20 = 0;
      return v20 & 1;
    }
  }

  else
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16, v11, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v21 = v31;
      outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v16[v18], v31, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      v22 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v11, v21, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v21, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of Any?(v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      if ((v22 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  outlined destroy of Any?(v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_VehicleSpeed.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

  v21 = v5[8];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 8);
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
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v61 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v61 - v15;
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0);
  v18 = v17[5];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 8);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_49;
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
      goto LABEL_49;
    }
  }

  v23 = v17[6];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 8);
  if (v25)
  {
    if (!v27)
    {
      goto LABEL_49;
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
      goto LABEL_49;
    }
  }

  v28 = v17[7];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 8);
  if (v30)
  {
    if (!v32)
    {
      goto LABEL_49;
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
      goto LABEL_49;
    }
  }

  v33 = v17[8];
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 8);
  v36 = (a2 + v33);
  v37 = *(a2 + v33 + 8);
  if (v35)
  {
    if (!v37)
    {
      goto LABEL_49;
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
      goto LABEL_49;
    }
  }

  v38 = v17[9];
  v39 = (a1 + v38);
  v40 = *(a1 + v38 + 8);
  v41 = (a2 + v38);
  v42 = *(a2 + v38 + 8);
  if (v40)
  {
    if (!v42)
    {
      goto LABEL_49;
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
      goto LABEL_49;
    }
  }

  v43 = v17[10];
  v44 = (a1 + v43);
  v45 = *(a1 + v43 + 8);
  v46 = (a2 + v43);
  v47 = *(a2 + v43 + 8);
  if (v45)
  {
    if (!v47)
    {
      goto LABEL_49;
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
      goto LABEL_49;
    }
  }

  v48 = v17[11];
  v49 = (a1 + v48);
  v50 = *(a1 + v48 + 8);
  v51 = (a2 + v48);
  v52 = *(a2 + v48 + 8);
  if (v50)
  {
    if (!v52)
    {
      goto LABEL_49;
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
      goto LABEL_49;
    }
  }

  v53 = v17[12];
  v54 = *(v13 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v53, v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v55 = a2 + v53;
  v56 = v54;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v55, &v16[v54], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v57 = *(v5 + 48);
  if (v57(v16, 1, v4) == 1)
  {
    if (v57(&v16[v56], 1, v4) == 1)
    {
      outlined destroy of Any?(v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
LABEL_52:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v58 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v58 & 1;
    }

    goto LABEL_48;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16, v12, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v57(&v16[v56], 1, v4) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v12, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_48:
    outlined destroy of Any?(v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
    goto LABEL_49;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v16[v56], v8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v60 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v12, v8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v12, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v60)
  {
    goto LABEL_52;
  }

LABEL_49:
  v58 = 0;
  return v58 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_GeomagneticModelData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v24[0] = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMd, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSg_ADtMd, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v24 - v15;
  v17 = *(type metadata accessor for CLP_LogEntry_PrivateData_GeomagneticModelData(0) + 20);
  v18 = *(v13 + 56);
  v24[1] = a1;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v17, v16, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMd, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v17, &v16[v18], &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMd, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      outlined destroy of Any?(v16, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMd, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMR);
LABEL_9:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16, v11, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMd, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMR);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
LABEL_6:
    outlined destroy of Any?(v16, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSg_ADtMd, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSg_ADtMR);
    goto LABEL_7;
  }

  v21 = v24[0];
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v16[v18], v24[0], type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
  v22 = specialized static CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData.== infix(_:_:)(v11, v21);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v21, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
  outlined destroy of Any?(v16, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMd, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMR);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0);
  v5 = v4[6];
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

  v10 = v4[7];
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

  v15 = v4[8];
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

  v18 = v4[9];
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

  v23 = v4[10];
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

  v28 = v4[11];
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

  v33 = v4[12];
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

  v39 = v4[5];
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_GEOMapBuildingData.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v56 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  MEMORY[0x28223BE20](v3);
  v48 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v49 = &v47 - v8;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSg_ADtMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSg_ADtMR);
  v9 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v54 = &v47 - v10;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v47 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v47 - v23;
  v51 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData(0);
  v25 = *(v51 + 28);
  v26 = *(v21 + 56);
  v55 = a1;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v25, v24, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v27 = v56;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v56 + v25, &v24[v26], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v28 = *(v12 + 48);
  if (v28(v24, 1, v11) == 1)
  {
    if (v28(&v24[v26], 1, v11) == 1)
    {
      outlined destroy of Any?(v24, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_9;
    }

LABEL_6:
    v29 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd;
    v30 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR;
    v31 = v24;
LABEL_7:
    outlined destroy of Any?(v31, v29, v30);
    goto LABEL_19;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v24, v19, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v28(&v24[v26], 1, v11) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v24[v26], v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v32 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v19, v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v24, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v32 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_9:
  v33 = v55;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf46CLP_LogEntry_PrivateData_GEOMapFeatureBuildingV_Tt1g5(*v55, *v27) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(v33[1], v27[1]) & 1) == 0)
  {
    goto LABEL_19;
  }

  v34 = v51;
  v35 = *(v51 + 32);
  v36 = *(v50 + 48);
  v37 = v54;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v33 + v35, v54, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v27 + v35, v37 + v36, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMR);
  v38 = v53;
  v39 = *(v52 + 48);
  if (v39(v37, 1, v53) != 1)
  {
    v40 = v49;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v37, v49, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMR);
    if (v39(v37 + v36, 1, v38) != 1)
    {
      v41 = v37 + v36;
      v42 = v48;
      outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v41, v48, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
      v43 = specialized static CLP_LogEntry_PrivateData_GEOLocationCoordinate2D.== infix(_:_:)(v40, v42, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v42, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v40, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
      outlined destroy of Any?(v37, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMR);
      if (v43)
      {
        goto LABEL_18;
      }

LABEL_19:
      v45 = 0;
      return v45 & 1;
    }

    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v40, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
    goto LABEL_16;
  }

  if (v39(v37 + v36, 1, v38) != 1)
  {
LABEL_16:
    v29 = &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSg_ADtMd;
    v30 = &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSg_ADtMR;
    v31 = v37;
    goto LABEL_7;
  }

  outlined destroy of Any?(v37, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMR);
LABEL_18:
  v44 = *(v34 + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v45 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v45 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_GEOLocationCoordinate2D.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = *(v5 + 20);
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

  v11 = *(v5 + 24);
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
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
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
  v21 = *(a1 + v20);
  v22 = *(a2 + v20);
  if (v21 == 4)
  {
    if (v22 != 4)
    {
      return 0;
    }
  }

  else if (v21 != v22)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_MapsRouteHintData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0);
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
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_MapMatcherData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
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
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_TunnelEndPointAssistance.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
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
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType and conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType and conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType and conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType and conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType and conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType and conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType and conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType and conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType and conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType and conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType and conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType and conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType and conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_LocationType and conformance CLP_LogEntry_PrivateData_LocationType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationType and conformance CLP_LogEntry_PrivateData_LocationType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationType and conformance CLP_LogEntry_PrivateData_LocationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationType and conformance CLP_LogEntry_PrivateData_LocationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationType and conformance CLP_LogEntry_PrivateData_LocationType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationType and conformance CLP_LogEntry_PrivateData_LocationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationType and conformance CLP_LogEntry_PrivateData_LocationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationType and conformance CLP_LogEntry_PrivateData_LocationType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationType and conformance CLP_LogEntry_PrivateData_LocationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationType and conformance CLP_LogEntry_PrivateData_LocationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationType and conformance CLP_LogEntry_PrivateData_LocationType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationType and conformance CLP_LogEntry_PrivateData_LocationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationType and conformance CLP_LogEntry_PrivateData_LocationType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_ClientSatelliteConstellation and conformance CLP_LogEntry_PrivateData_ClientSatelliteConstellation()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientSatelliteConstellation and conformance CLP_LogEntry_PrivateData_ClientSatelliteConstellation;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientSatelliteConstellation and conformance CLP_LogEntry_PrivateData_ClientSatelliteConstellation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientSatelliteConstellation and conformance CLP_LogEntry_PrivateData_ClientSatelliteConstellation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientSatelliteConstellation and conformance CLP_LogEntry_PrivateData_ClientSatelliteConstellation;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientSatelliteConstellation and conformance CLP_LogEntry_PrivateData_ClientSatelliteConstellation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientSatelliteConstellation and conformance CLP_LogEntry_PrivateData_ClientSatelliteConstellation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientSatelliteConstellation and conformance CLP_LogEntry_PrivateData_ClientSatelliteConstellation;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientSatelliteConstellation and conformance CLP_LogEntry_PrivateData_ClientSatelliteConstellation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientSatelliteConstellation and conformance CLP_LogEntry_PrivateData_ClientSatelliteConstellation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientSatelliteConstellation and conformance CLP_LogEntry_PrivateData_ClientSatelliteConstellation;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientSatelliteConstellation and conformance CLP_LogEntry_PrivateData_ClientSatelliteConstellation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientSatelliteConstellation and conformance CLP_LogEntry_PrivateData_ClientSatelliteConstellation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_BatchedLocationFixType and conformance CLP_LogEntry_PrivateData_BatchedLocationFixType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchedLocationFixType and conformance CLP_LogEntry_PrivateData_BatchedLocationFixType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchedLocationFixType and conformance CLP_LogEntry_PrivateData_BatchedLocationFixType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchedLocationFixType and conformance CLP_LogEntry_PrivateData_BatchedLocationFixType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchedLocationFixType and conformance CLP_LogEntry_PrivateData_BatchedLocationFixType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchedLocationFixType and conformance CLP_LogEntry_PrivateData_BatchedLocationFixType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchedLocationFixType and conformance CLP_LogEntry_PrivateData_BatchedLocationFixType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchedLocationFixType and conformance CLP_LogEntry_PrivateData_BatchedLocationFixType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchedLocationFixType and conformance CLP_LogEntry_PrivateData_BatchedLocationFixType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchedLocationFixType and conformance CLP_LogEntry_PrivateData_BatchedLocationFixType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchedLocationFixType and conformance CLP_LogEntry_PrivateData_BatchedLocationFixType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchedLocationFixType and conformance CLP_LogEntry_PrivateData_BatchedLocationFixType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchedLocationFixType and conformance CLP_LogEntry_PrivateData_BatchedLocationFixType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GnssModeOfOperation and conformance CLP_LogEntry_PrivateData_GnssModeOfOperation()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssModeOfOperation and conformance CLP_LogEntry_PrivateData_GnssModeOfOperation;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssModeOfOperation and conformance CLP_LogEntry_PrivateData_GnssModeOfOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssModeOfOperation and conformance CLP_LogEntry_PrivateData_GnssModeOfOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssModeOfOperation and conformance CLP_LogEntry_PrivateData_GnssModeOfOperation;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssModeOfOperation and conformance CLP_LogEntry_PrivateData_GnssModeOfOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssModeOfOperation and conformance CLP_LogEntry_PrivateData_GnssModeOfOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssModeOfOperation and conformance CLP_LogEntry_PrivateData_GnssModeOfOperation;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssModeOfOperation and conformance CLP_LogEntry_PrivateData_GnssModeOfOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssModeOfOperation and conformance CLP_LogEntry_PrivateData_GnssModeOfOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssModeOfOperation and conformance CLP_LogEntry_PrivateData_GnssModeOfOperation;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssModeOfOperation and conformance CLP_LogEntry_PrivateData_GnssModeOfOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssModeOfOperation and conformance CLP_LogEntry_PrivateData_GnssModeOfOperation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_RhythmicGnssWakeMode and conformance CLP_LogEntry_PrivateData_RhythmicGnssWakeMode()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RhythmicGnssWakeMode and conformance CLP_LogEntry_PrivateData_RhythmicGnssWakeMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RhythmicGnssWakeMode and conformance CLP_LogEntry_PrivateData_RhythmicGnssWakeMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RhythmicGnssWakeMode and conformance CLP_LogEntry_PrivateData_RhythmicGnssWakeMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RhythmicGnssWakeMode and conformance CLP_LogEntry_PrivateData_RhythmicGnssWakeMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RhythmicGnssWakeMode and conformance CLP_LogEntry_PrivateData_RhythmicGnssWakeMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RhythmicGnssWakeMode and conformance CLP_LogEntry_PrivateData_RhythmicGnssWakeMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RhythmicGnssWakeMode and conformance CLP_LogEntry_PrivateData_RhythmicGnssWakeMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RhythmicGnssWakeMode and conformance CLP_LogEntry_PrivateData_RhythmicGnssWakeMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RhythmicGnssWakeMode and conformance CLP_LogEntry_PrivateData_RhythmicGnssWakeMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RhythmicGnssWakeMode and conformance CLP_LogEntry_PrivateData_RhythmicGnssWakeMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RhythmicGnssWakeMode and conformance CLP_LogEntry_PrivateData_RhythmicGnssWakeMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RhythmicGnssWakeMode and conformance CLP_LogEntry_PrivateData_RhythmicGnssWakeMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_BatchMode and conformance CLP_LogEntry_PrivateData_BatchMode()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchMode and conformance CLP_LogEntry_PrivateData_BatchMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchMode and conformance CLP_LogEntry_PrivateData_BatchMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchMode and conformance CLP_LogEntry_PrivateData_BatchMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchMode and conformance CLP_LogEntry_PrivateData_BatchMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchMode and conformance CLP_LogEntry_PrivateData_BatchMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchMode and conformance CLP_LogEntry_PrivateData_BatchMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchMode and conformance CLP_LogEntry_PrivateData_BatchMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchMode and conformance CLP_LogEntry_PrivateData_BatchMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchMode and conformance CLP_LogEntry_PrivateData_BatchMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchMode and conformance CLP_LogEntry_PrivateData_BatchMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchMode and conformance CLP_LogEntry_PrivateData_BatchMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchMode and conformance CLP_LogEntry_PrivateData_BatchMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_OperatingMode and conformance CLP_LogEntry_PrivateData_OperatingMode()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_OperatingMode and conformance CLP_LogEntry_PrivateData_OperatingMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_OperatingMode and conformance CLP_LogEntry_PrivateData_OperatingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_OperatingMode and conformance CLP_LogEntry_PrivateData_OperatingMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_OperatingMode and conformance CLP_LogEntry_PrivateData_OperatingMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_OperatingMode and conformance CLP_LogEntry_PrivateData_OperatingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_OperatingMode and conformance CLP_LogEntry_PrivateData_OperatingMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_OperatingMode and conformance CLP_LogEntry_PrivateData_OperatingMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_OperatingMode and conformance CLP_LogEntry_PrivateData_OperatingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_OperatingMode and conformance CLP_LogEntry_PrivateData_OperatingMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_OperatingMode and conformance CLP_LogEntry_PrivateData_OperatingMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_OperatingMode and conformance CLP_LogEntry_PrivateData_OperatingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_OperatingMode and conformance CLP_LogEntry_PrivateData_OperatingMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_PipelineOperatingMode and conformance CLP_LogEntry_PrivateData_PipelineOperatingMode()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PipelineOperatingMode and conformance CLP_LogEntry_PrivateData_PipelineOperatingMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PipelineOperatingMode and conformance CLP_LogEntry_PrivateData_PipelineOperatingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PipelineOperatingMode and conformance CLP_LogEntry_PrivateData_PipelineOperatingMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PipelineOperatingMode and conformance CLP_LogEntry_PrivateData_PipelineOperatingMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PipelineOperatingMode and conformance CLP_LogEntry_PrivateData_PipelineOperatingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PipelineOperatingMode and conformance CLP_LogEntry_PrivateData_PipelineOperatingMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PipelineOperatingMode and conformance CLP_LogEntry_PrivateData_PipelineOperatingMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PipelineOperatingMode and conformance CLP_LogEntry_PrivateData_PipelineOperatingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PipelineOperatingMode and conformance CLP_LogEntry_PrivateData_PipelineOperatingMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PipelineOperatingMode and conformance CLP_LogEntry_PrivateData_PipelineOperatingMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PipelineOperatingMode and conformance CLP_LogEntry_PrivateData_PipelineOperatingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PipelineOperatingMode and conformance CLP_LogEntry_PrivateData_PipelineOperatingMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DominantMotionModeType and conformance CLP_LogEntry_PrivateData_DominantMotionModeType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DominantMotionModeType and conformance CLP_LogEntry_PrivateData_DominantMotionModeType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DominantMotionModeType and conformance CLP_LogEntry_PrivateData_DominantMotionModeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DominantMotionModeType and conformance CLP_LogEntry_PrivateData_DominantMotionModeType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DominantMotionModeType and conformance CLP_LogEntry_PrivateData_DominantMotionModeType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DominantMotionModeType and conformance CLP_LogEntry_PrivateData_DominantMotionModeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DominantMotionModeType and conformance CLP_LogEntry_PrivateData_DominantMotionModeType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DominantMotionModeType and conformance CLP_LogEntry_PrivateData_DominantMotionModeType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DominantMotionModeType and conformance CLP_LogEntry_PrivateData_DominantMotionModeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DominantMotionModeType and conformance CLP_LogEntry_PrivateData_DominantMotionModeType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DominantMotionModeType and conformance CLP_LogEntry_PrivateData_DominantMotionModeType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DominantMotionModeType and conformance CLP_LogEntry_PrivateData_DominantMotionModeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DominantMotionModeType and conformance CLP_LogEntry_PrivateData_DominantMotionModeType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_ReachabilityType and conformance CLP_LogEntry_PrivateData_ReachabilityType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReachabilityType and conformance CLP_LogEntry_PrivateData_ReachabilityType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReachabilityType and conformance CLP_LogEntry_PrivateData_ReachabilityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReachabilityType and conformance CLP_LogEntry_PrivateData_ReachabilityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReachabilityType and conformance CLP_LogEntry_PrivateData_ReachabilityType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReachabilityType and conformance CLP_LogEntry_PrivateData_ReachabilityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReachabilityType and conformance CLP_LogEntry_PrivateData_ReachabilityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReachabilityType and conformance CLP_LogEntry_PrivateData_ReachabilityType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReachabilityType and conformance CLP_LogEntry_PrivateData_ReachabilityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReachabilityType and conformance CLP_LogEntry_PrivateData_ReachabilityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReachabilityType and conformance CLP_LogEntry_PrivateData_ReachabilityType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReachabilityType and conformance CLP_LogEntry_PrivateData_ReachabilityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReachabilityType and conformance CLP_LogEntry_PrivateData_ReachabilityType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_BatteryChargerType and conformance CLP_LogEntry_PrivateData_BatteryChargerType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatteryChargerType and conformance CLP_LogEntry_PrivateData_BatteryChargerType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatteryChargerType and conformance CLP_LogEntry_PrivateData_BatteryChargerType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatteryChargerType and conformance CLP_LogEntry_PrivateData_BatteryChargerType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatteryChargerType and conformance CLP_LogEntry_PrivateData_BatteryChargerType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatteryChargerType and conformance CLP_LogEntry_PrivateData_BatteryChargerType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatteryChargerType and conformance CLP_LogEntry_PrivateData_BatteryChargerType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatteryChargerType and conformance CLP_LogEntry_PrivateData_BatteryChargerType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatteryChargerType and conformance CLP_LogEntry_PrivateData_BatteryChargerType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatteryChargerType and conformance CLP_LogEntry_PrivateData_BatteryChargerType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatteryChargerType and conformance CLP_LogEntry_PrivateData_BatteryChargerType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatteryChargerType and conformance CLP_LogEntry_PrivateData_BatteryChargerType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatteryChargerType and conformance CLP_LogEntry_PrivateData_BatteryChargerType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel and conformance CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel and conformance CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel and conformance CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel and conformance CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel and conformance CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel and conformance CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel and conformance CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel and conformance CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel and conformance CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel and conformance CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel and conformance CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel and conformance CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel and conformance CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel and conformance CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel and conformance CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel and conformance CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel and conformance CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel and conformance CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel and conformance CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel and conformance CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel and conformance CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel and conformance CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel and conformance CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel and conformance CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel and conformance CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel and conformance CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SensorFusionMode and conformance CLP_LogEntry_PrivateData_SensorFusionMode()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SensorFusionMode and conformance CLP_LogEntry_PrivateData_SensorFusionMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SensorFusionMode and conformance CLP_LogEntry_PrivateData_SensorFusionMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SensorFusionMode and conformance CLP_LogEntry_PrivateData_SensorFusionMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SensorFusionMode and conformance CLP_LogEntry_PrivateData_SensorFusionMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SensorFusionMode and conformance CLP_LogEntry_PrivateData_SensorFusionMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SensorFusionMode and conformance CLP_LogEntry_PrivateData_SensorFusionMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SensorFusionMode and conformance CLP_LogEntry_PrivateData_SensorFusionMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SensorFusionMode and conformance CLP_LogEntry_PrivateData_SensorFusionMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SensorFusionMode and conformance CLP_LogEntry_PrivateData_SensorFusionMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SensorFusionMode and conformance CLP_LogEntry_PrivateData_SensorFusionMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SensorFusionMode and conformance CLP_LogEntry_PrivateData_SensorFusionMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SensorFusionMode and conformance CLP_LogEntry_PrivateData_SensorFusionMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WifiAccessPointMode and conformance CLP_LogEntry_PrivateData_WifiAccessPointMode()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAccessPointMode and conformance CLP_LogEntry_PrivateData_WifiAccessPointMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAccessPointMode and conformance CLP_LogEntry_PrivateData_WifiAccessPointMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAccessPointMode and conformance CLP_LogEntry_PrivateData_WifiAccessPointMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAccessPointMode and conformance CLP_LogEntry_PrivateData_WifiAccessPointMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAccessPointMode and conformance CLP_LogEntry_PrivateData_WifiAccessPointMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAccessPointMode and conformance CLP_LogEntry_PrivateData_WifiAccessPointMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAccessPointMode and conformance CLP_LogEntry_PrivateData_WifiAccessPointMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAccessPointMode and conformance CLP_LogEntry_PrivateData_WifiAccessPointMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAccessPointMode and conformance CLP_LogEntry_PrivateData_WifiAccessPointMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAccessPointMode and conformance CLP_LogEntry_PrivateData_WifiAccessPointMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAccessPointMode and conformance CLP_LogEntry_PrivateData_WifiAccessPointMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAccessPointMode and conformance CLP_LogEntry_PrivateData_WifiAccessPointMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WifiScanType and conformance CLP_LogEntry_PrivateData_WifiScanType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiScanType and conformance CLP_LogEntry_PrivateData_WifiScanType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiScanType and conformance CLP_LogEntry_PrivateData_WifiScanType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiScanType and conformance CLP_LogEntry_PrivateData_WifiScanType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiScanType and conformance CLP_LogEntry_PrivateData_WifiScanType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiScanType and conformance CLP_LogEntry_PrivateData_WifiScanType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiScanType and conformance CLP_LogEntry_PrivateData_WifiScanType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiScanType and conformance CLP_LogEntry_PrivateData_WifiScanType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiScanType and conformance CLP_LogEntry_PrivateData_WifiScanType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiScanType and conformance CLP_LogEntry_PrivateData_WifiScanType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiScanType and conformance CLP_LogEntry_PrivateData_WifiScanType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiScanType and conformance CLP_LogEntry_PrivateData_WifiScanType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiScanType and conformance CLP_LogEntry_PrivateData_WifiScanType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_LocationServicesEnabled and conformance CLP_LogEntry_PrivateData_LocationServicesEnabled()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationServicesEnabled and conformance CLP_LogEntry_PrivateData_LocationServicesEnabled;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationServicesEnabled and conformance CLP_LogEntry_PrivateData_LocationServicesEnabled)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationServicesEnabled and conformance CLP_LogEntry_PrivateData_LocationServicesEnabled);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationServicesEnabled and conformance CLP_LogEntry_PrivateData_LocationServicesEnabled;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationServicesEnabled and conformance CLP_LogEntry_PrivateData_LocationServicesEnabled)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationServicesEnabled and conformance CLP_LogEntry_PrivateData_LocationServicesEnabled);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationServicesEnabled and conformance CLP_LogEntry_PrivateData_LocationServicesEnabled;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationServicesEnabled and conformance CLP_LogEntry_PrivateData_LocationServicesEnabled)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationServicesEnabled and conformance CLP_LogEntry_PrivateData_LocationServicesEnabled);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationServicesEnabled and conformance CLP_LogEntry_PrivateData_LocationServicesEnabled;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationServicesEnabled and conformance CLP_LogEntry_PrivateData_LocationServicesEnabled)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationServicesEnabled and conformance CLP_LogEntry_PrivateData_LocationServicesEnabled);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DataAvailability and conformance CLP_LogEntry_PrivateData_DataAvailability()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DataAvailability and conformance CLP_LogEntry_PrivateData_DataAvailability;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DataAvailability and conformance CLP_LogEntry_PrivateData_DataAvailability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DataAvailability and conformance CLP_LogEntry_PrivateData_DataAvailability);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DataAvailability and conformance CLP_LogEntry_PrivateData_DataAvailability;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DataAvailability and conformance CLP_LogEntry_PrivateData_DataAvailability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DataAvailability and conformance CLP_LogEntry_PrivateData_DataAvailability);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DataAvailability and conformance CLP_LogEntry_PrivateData_DataAvailability;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DataAvailability and conformance CLP_LogEntry_PrivateData_DataAvailability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DataAvailability and conformance CLP_LogEntry_PrivateData_DataAvailability);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DataAvailability and conformance CLP_LogEntry_PrivateData_DataAvailability;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DataAvailability and conformance CLP_LogEntry_PrivateData_DataAvailability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DataAvailability and conformance CLP_LogEntry_PrivateData_DataAvailability);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_IndoorOutdoorType and conformance CLP_LogEntry_PrivateData_IndoorOutdoorType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorType and conformance CLP_LogEntry_PrivateData_IndoorOutdoorType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorType and conformance CLP_LogEntry_PrivateData_IndoorOutdoorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorType and conformance CLP_LogEntry_PrivateData_IndoorOutdoorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorType and conformance CLP_LogEntry_PrivateData_IndoorOutdoorType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorType and conformance CLP_LogEntry_PrivateData_IndoorOutdoorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorType and conformance CLP_LogEntry_PrivateData_IndoorOutdoorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorType and conformance CLP_LogEntry_PrivateData_IndoorOutdoorType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorType and conformance CLP_LogEntry_PrivateData_IndoorOutdoorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorType and conformance CLP_LogEntry_PrivateData_IndoorOutdoorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorType and conformance CLP_LogEntry_PrivateData_IndoorOutdoorType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorType and conformance CLP_LogEntry_PrivateData_IndoorOutdoorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorType and conformance CLP_LogEntry_PrivateData_IndoorOutdoorType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_IndoorOutdoorConfidence and conformance CLP_LogEntry_PrivateData_IndoorOutdoorConfidence()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorConfidence and conformance CLP_LogEntry_PrivateData_IndoorOutdoorConfidence;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorConfidence and conformance CLP_LogEntry_PrivateData_IndoorOutdoorConfidence)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorConfidence and conformance CLP_LogEntry_PrivateData_IndoorOutdoorConfidence);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorConfidence and conformance CLP_LogEntry_PrivateData_IndoorOutdoorConfidence;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorConfidence and conformance CLP_LogEntry_PrivateData_IndoorOutdoorConfidence)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorConfidence and conformance CLP_LogEntry_PrivateData_IndoorOutdoorConfidence);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorConfidence and conformance CLP_LogEntry_PrivateData_IndoorOutdoorConfidence;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorConfidence and conformance CLP_LogEntry_PrivateData_IndoorOutdoorConfidence)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorConfidence and conformance CLP_LogEntry_PrivateData_IndoorOutdoorConfidence);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorConfidence and conformance CLP_LogEntry_PrivateData_IndoorOutdoorConfidence;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorConfidence and conformance CLP_LogEntry_PrivateData_IndoorOutdoorConfidence)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorConfidence and conformance CLP_LogEntry_PrivateData_IndoorOutdoorConfidence);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_Location.SignalQualityType and conformance CLP_LogEntry_PrivateData_Location.SignalQualityType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.SignalQualityType and conformance CLP_LogEntry_PrivateData_Location.SignalQualityType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.SignalQualityType and conformance CLP_LogEntry_PrivateData_Location.SignalQualityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.SignalQualityType and conformance CLP_LogEntry_PrivateData_Location.SignalQualityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.SignalQualityType and conformance CLP_LogEntry_PrivateData_Location.SignalQualityType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.SignalQualityType and conformance CLP_LogEntry_PrivateData_Location.SignalQualityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.SignalQualityType and conformance CLP_LogEntry_PrivateData_Location.SignalQualityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.SignalQualityType and conformance CLP_LogEntry_PrivateData_Location.SignalQualityType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.SignalQualityType and conformance CLP_LogEntry_PrivateData_Location.SignalQualityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.SignalQualityType and conformance CLP_LogEntry_PrivateData_Location.SignalQualityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.SignalQualityType and conformance CLP_LogEntry_PrivateData_Location.SignalQualityType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.SignalQualityType and conformance CLP_LogEntry_PrivateData_Location.SignalQualityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.SignalQualityType and conformance CLP_LogEntry_PrivateData_Location.SignalQualityType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_Location.MotionDetectedType and conformance CLP_LogEntry_PrivateData_Location.MotionDetectedType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.MotionDetectedType and conformance CLP_LogEntry_PrivateData_Location.MotionDetectedType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.MotionDetectedType and conformance CLP_LogEntry_PrivateData_Location.MotionDetectedType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.MotionDetectedType and conformance CLP_LogEntry_PrivateData_Location.MotionDetectedType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.MotionDetectedType and conformance CLP_LogEntry_PrivateData_Location.MotionDetectedType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.MotionDetectedType and conformance CLP_LogEntry_PrivateData_Location.MotionDetectedType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.MotionDetectedType and conformance CLP_LogEntry_PrivateData_Location.MotionDetectedType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.MotionDetectedType and conformance CLP_LogEntry_PrivateData_Location.MotionDetectedType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.MotionDetectedType and conformance CLP_LogEntry_PrivateData_Location.MotionDetectedType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.MotionDetectedType and conformance CLP_LogEntry_PrivateData_Location.MotionDetectedType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.MotionDetectedType and conformance CLP_LogEntry_PrivateData_Location.MotionDetectedType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.MotionDetectedType and conformance CLP_LogEntry_PrivateData_Location.MotionDetectedType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.MotionDetectedType and conformance CLP_LogEntry_PrivateData_Location.MotionDetectedType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionActivity.MountedStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.MountedStateType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.MountedStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.MountedStateType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.MountedStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.MountedStateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.MountedStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.MountedStateType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.MountedStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.MountedStateType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.MountedStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.MountedStateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.MountedStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.MountedStateType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.MountedStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.MountedStateType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.MountedStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.MountedStateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.MountedStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.MountedStateType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.MountedStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.MountedStateType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.MountedStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.MountedStateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.MountedStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.MountedStateType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WorkoutEvent.EventType and conformance CLP_LogEntry_PrivateData_WorkoutEvent.EventType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutEvent.EventType and conformance CLP_LogEntry_PrivateData_WorkoutEvent.EventType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutEvent.EventType and conformance CLP_LogEntry_PrivateData_WorkoutEvent.EventType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutEvent.EventType and conformance CLP_LogEntry_PrivateData_WorkoutEvent.EventType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutEvent.EventType and conformance CLP_LogEntry_PrivateData_WorkoutEvent.EventType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutEvent.EventType and conformance CLP_LogEntry_PrivateData_WorkoutEvent.EventType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutEvent.EventType and conformance CLP_LogEntry_PrivateData_WorkoutEvent.EventType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutEvent.EventType and conformance CLP_LogEntry_PrivateData_WorkoutEvent.EventType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutEvent.EventType and conformance CLP_LogEntry_PrivateData_WorkoutEvent.EventType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutEvent.EventType and conformance CLP_LogEntry_PrivateData_WorkoutEvent.EventType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutEvent.EventType and conformance CLP_LogEntry_PrivateData_WorkoutEvent.EventType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutEvent.EventType and conformance CLP_LogEntry_PrivateData_WorkoutEvent.EventType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutEvent.EventType and conformance CLP_LogEntry_PrivateData_WorkoutEvent.EventType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType and conformance CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType and conformance CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType and conformance CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType and conformance CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType and conformance CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType and conformance CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType and conformance CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType and conformance CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType and conformance CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType and conformance CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType and conformance CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType and conformance CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType and conformance CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType and conformance CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType and conformance CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType and conformance CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType and conformance CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType and conformance CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType and conformance CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType and conformance CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType and conformance CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType and conformance CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType and conformance CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType and conformance CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType and conformance CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType and conformance CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType and conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType and conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType and conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType and conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType and conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType and conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType and conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType and conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType and conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType and conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType and conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType and conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType and conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DeviceStatus.NotificationType and conformance CLP_LogEntry_PrivateData_DeviceStatus.NotificationType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceStatus.NotificationType and conformance CLP_LogEntry_PrivateData_DeviceStatus.NotificationType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceStatus.NotificationType and conformance CLP_LogEntry_PrivateData_DeviceStatus.NotificationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceStatus.NotificationType and conformance CLP_LogEntry_PrivateData_DeviceStatus.NotificationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceStatus.NotificationType and conformance CLP_LogEntry_PrivateData_DeviceStatus.NotificationType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceStatus.NotificationType and conformance CLP_LogEntry_PrivateData_DeviceStatus.NotificationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceStatus.NotificationType and conformance CLP_LogEntry_PrivateData_DeviceStatus.NotificationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceStatus.NotificationType and conformance CLP_LogEntry_PrivateData_DeviceStatus.NotificationType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceStatus.NotificationType and conformance CLP_LogEntry_PrivateData_DeviceStatus.NotificationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceStatus.NotificationType and conformance CLP_LogEntry_PrivateData_DeviceStatus.NotificationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceStatus.NotificationType and conformance CLP_LogEntry_PrivateData_DeviceStatus.NotificationType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceStatus.NotificationType and conformance CLP_LogEntry_PrivateData_DeviceStatus.NotificationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceStatus.NotificationType and conformance CLP_LogEntry_PrivateData_DeviceStatus.NotificationType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType and conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType and conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType and conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType and conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType and conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType and conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType and conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType and conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType and conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType and conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType and conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType and conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType and conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType and conformance CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType and conformance CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType and conformance CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType and conformance CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType and conformance CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType and conformance CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType and conformance CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType and conformance CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType and conformance CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType and conformance CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType and conformance CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType and conformance CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType and conformance CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.MeasurementSource and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.MeasurementSource()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.MeasurementSource and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.MeasurementSource;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.MeasurementSource and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.MeasurementSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.MeasurementSource and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.MeasurementSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.MeasurementSource and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.MeasurementSource;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.MeasurementSource and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.MeasurementSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.MeasurementSource and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.MeasurementSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.MeasurementSource and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.MeasurementSource;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.MeasurementSource and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.MeasurementSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.MeasurementSource and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.MeasurementSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.MeasurementSource and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.MeasurementSource;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.MeasurementSource and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.MeasurementSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.MeasurementSource and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.MeasurementSource);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.BranchType and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.BranchType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.BranchType and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.BranchType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.BranchType and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.BranchType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.BranchType and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.BranchType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.BranchType and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.BranchType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.BranchType and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.BranchType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.BranchType and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.BranchType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.BranchType and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.BranchType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.BranchType and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.BranchType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.BranchType and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.BranchType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.BranchType and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.BranchType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.BranchType and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.BranchType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.BranchType and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.BranchType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType and conformance CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType and conformance CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType and conformance CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType and conformance CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType and conformance CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType and conformance CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType and conformance CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType and conformance CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType and conformance CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType and conformance CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType and conformance CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType and conformance CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType and conformance CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType and conformance CLP_LogEntry_PrivateData_WatchOrientation.WatchOrientationType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WristState.WristStateType and conformance CLP_LogEntry_PrivateData_WristState.WristStateType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WristState.WristStateType and conformance CLP_LogEntry_PrivateData_WristState.WristStateType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WristState.WristStateType and conformance CLP_LogEntry_PrivateData_WristState.WristStateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WristState.WristStateType and conformance CLP_LogEntry_PrivateData_WristState.WristStateType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WristState.WristStateType and conformance CLP_LogEntry_PrivateData_WristState.WristStateType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WristState.WristStateType and conformance CLP_LogEntry_PrivateData_WristState.WristStateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WristState.WristStateType and conformance CLP_LogEntry_PrivateData_WristState.WristStateType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WristState.WristStateType and conformance CLP_LogEntry_PrivateData_WristState.WristStateType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WristState.WristStateType and conformance CLP_LogEntry_PrivateData_WristState.WristStateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WristState.WristStateType and conformance CLP_LogEntry_PrivateData_WristState.WristStateType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WristState.WristStateType and conformance CLP_LogEntry_PrivateData_WristState.WristStateType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WristState.WristStateType and conformance CLP_LogEntry_PrivateData_WristState.WristStateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WristState.WristStateType and conformance CLP_LogEntry_PrivateData_WristState.WristStateType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType and conformance CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType and conformance CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType and conformance CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType and conformance CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType and conformance CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType and conformance CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType and conformance CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType and conformance CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType and conformance CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType and conformance CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType and conformance CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType and conformance CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType and conformance CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType and conformance CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType and conformance CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType and conformance CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType and conformance CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType and conformance CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType and conformance CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType and conformance CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType and conformance CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType and conformance CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType and conformance CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType and conformance CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType and conformance CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType and conformance CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType and conformance CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType and conformance CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType and conformance CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType and conformance CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType and conformance CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType and conformance CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType and conformance CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType and conformance CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType and conformance CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType and conformance CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType and conformance CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType and conformance CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType and conformance CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_InertialOdometrySample.ReferenceFrame and conformance CLP_LogEntry_PrivateData_InertialOdometrySample.ReferenceFrame()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_InertialOdometrySample.ReferenceFrame and conformance CLP_LogEntry_PrivateData_InertialOdometrySample.ReferenceFrame;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_InertialOdometrySample.ReferenceFrame and conformance CLP_LogEntry_PrivateData_InertialOdometrySample.ReferenceFrame)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_InertialOdometrySample.ReferenceFrame and conformance CLP_LogEntry_PrivateData_InertialOdometrySample.ReferenceFrame);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_InertialOdometrySample.ReferenceFrame and conformance CLP_LogEntry_PrivateData_InertialOdometrySample.ReferenceFrame;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_InertialOdometrySample.ReferenceFrame and conformance CLP_LogEntry_PrivateData_InertialOdometrySample.ReferenceFrame)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_InertialOdometrySample.ReferenceFrame and conformance CLP_LogEntry_PrivateData_InertialOdometrySample.ReferenceFrame);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_InertialOdometrySample.ReferenceFrame and conformance CLP_LogEntry_PrivateData_InertialOdometrySample.ReferenceFrame;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_InertialOdometrySample.ReferenceFrame and conformance CLP_LogEntry_PrivateData_InertialOdometrySample.ReferenceFrame)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_InertialOdometrySample.ReferenceFrame and conformance CLP_LogEntry_PrivateData_InertialOdometrySample.ReferenceFrame);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_InertialOdometrySample.ReferenceFrame and conformance CLP_LogEntry_PrivateData_InertialOdometrySample.ReferenceFrame;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_InertialOdometrySample.ReferenceFrame and conformance CLP_LogEntry_PrivateData_InertialOdometrySample.ReferenceFrame)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_InertialOdometrySample.ReferenceFrame and conformance CLP_LogEntry_PrivateData_InertialOdometrySample.ReferenceFrame);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_InertialOdometrySample.StaticIndicator and conformance CLP_LogEntry_PrivateData_InertialOdometrySample.StaticIndicator()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_InertialOdometrySample.StaticIndicator and conformance CLP_LogEntry_PrivateData_InertialOdometrySample.StaticIndicator;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_InertialOdometrySample.StaticIndicator and conformance CLP_LogEntry_PrivateData_InertialOdometrySample.StaticIndicator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_InertialOdometrySample.StaticIndicator and conformance CLP_LogEntry_PrivateData_InertialOdometrySample.StaticIndicator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_InertialOdometrySample.StaticIndicator and conformance CLP_LogEntry_PrivateData_InertialOdometrySample.StaticIndicator;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_InertialOdometrySample.StaticIndicator and conformance CLP_LogEntry_PrivateData_InertialOdometrySample.StaticIndicator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_InertialOdometrySample.StaticIndicator and conformance CLP_LogEntry_PrivateData_InertialOdometrySample.StaticIndicator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_InertialOdometrySample.StaticIndicator and conformance CLP_LogEntry_PrivateData_InertialOdometrySample.StaticIndicator;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_InertialOdometrySample.StaticIndicator and conformance CLP_LogEntry_PrivateData_InertialOdometrySample.StaticIndicator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_InertialOdometrySample.StaticIndicator and conformance CLP_LogEntry_PrivateData_InertialOdometrySample.StaticIndicator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_InertialOdometrySample.StaticIndicator and conformance CLP_LogEntry_PrivateData_InertialOdometrySample.StaticIndicator;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_InertialOdometrySample.StaticIndicator and conformance CLP_LogEntry_PrivateData_InertialOdometrySample.StaticIndicator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_InertialOdometrySample.StaticIndicator and conformance CLP_LogEntry_PrivateData_InertialOdometrySample.StaticIndicator);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CLP_LogEntry_PrivateData_LocationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CLP_LogEntry_PrivateData_LocationType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CLP_LogEntry_PrivateData_DominantMotionModeType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xB9)
  {
    goto LABEL_17;
  }

  if (a2 + 71 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 71) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 71;
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

      return (*a1 | (v4 << 8)) - 71;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 71;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x48;
  v8 = v6 - 72;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CLP_LogEntry_PrivateData_DominantMotionModeType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 71 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 71) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xB9)
  {
    v4 = 0;
  }

  if (a2 > 0xB8)
  {
    v5 = ((a2 - 185) >> 8) + 1;
    *result = a2 + 71;
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
    *result = a2 + 71;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata completion function for CLP_LogEntry_PrivateData_BaroSample()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_TimeStamp?, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Float?, MEMORY[0x277D83A90], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_ClientLocationCoordinate(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    _sSdSgMaTm_0(319, a4, a5, MEMORY[0x277D83D88]);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_ClientSatelliteInfo()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    _sSdSgMaTm_0(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_ClientSatelliteConstellation?, &type metadata for CLP_LogEntry_PrivateData_ClientSatelliteConstellation, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Int32?, MEMORY[0x277D849A8], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Float?, MEMORY[0x277D83A90], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      _sSdSgMaTm_0(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType?, &type metadata for CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_SignalEnvironmentInfo(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6, uint64_t a7)
{
  type metadata accessor for UnknownStorage();
  if (v11 <= 0x3F)
  {
    _sSdSgMaTm_0(319, a4, a5, MEMORY[0x277D83D88]);
    if (v12 <= 0x3F)
    {
      _sSdSgMaTm_0(319, a6, a7, MEMORY[0x277D83D88]);
      if (v13 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_TimeStamp(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    _sSdSgMaTm_0(319, a4, a5, MEMORY[0x277D83D88]);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_BatchedLocations()
{
  type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for [CLP_LogEntry_PrivateData_DaemonLocation], type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for [CLP_LogEntry_PrivateData_DaemonLocationPrivate], type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    _sSdSgMaTm_0(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_GnssModeOfOperation?, &type metadata for CLP_LogEntry_PrivateData_GnssModeOfOperation, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        _sSdSgMaTm_0(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_RhythmicGnssWakeMode?, &type metadata for CLP_LogEntry_PrivateData_RhythmicGnssWakeMode, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          _sSdSgMaTm_0(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_SensorFusionStatus(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    _sSdSgMaTm_0(319, a4, a5, MEMORY[0x277D83D88]);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_WorkoutUpdate()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    _sSdSgMaTm_0(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_DominantMotionModeType?, &type metadata for CLP_LogEntry_PrivateData_DominantMotionModeType, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_TimeStamp?, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_WorkoutSettings()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    _sSdSgMaTm_0(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      _sSdSgMaTm_0(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType?, &type metadata for CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        _sSdSgMaTm_0(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType?, &type metadata for CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          _sSdSgMaTm_0(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode?, &type metadata for CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xBE)
  {
    goto LABEL_17;
  }

  if (a2 + 66 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 66) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 66;
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

      return (*a1 | (v4 << 8)) - 66;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 66;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x43;
  v8 = v6 - 67;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 66 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 66) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xBE)
  {
    v4 = 0;
  }

  if (a2 > 0xBD)
  {
    v5 = ((a2 - 190) >> 8) + 1;
    *result = a2 + 66;
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
    *result = a2 + 66;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void type metadata completion function for CLP_LogEntry_PrivateData_WorkoutEvent()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_TimeStamp?, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      _sSdSgMaTm_0(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_WorkoutEvent.EventType?, &type metadata for CLP_LogEntry_PrivateData_WorkoutEvent.EventType, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_WorkoutSettings?, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for CLP_LogEntry_PrivateData_WorkoutEvent.EventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CLP_LogEntry_PrivateData_WorkoutEvent.EventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void type metadata completion function for CLP_LogEntry_PrivateData_MediatedMotionActivity()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_MotionActivity?, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_BodyMetrics()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    _sSdSgMaTm_0(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType?, &type metadata for CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Float?, MEMORY[0x277D83A90], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        _sSdSgMaTm_0(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType?, &type metadata for CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_DigitalElevationModel()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_TimeStamp?, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Float?, MEMORY[0x277D83A90], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Int32?, MEMORY[0x277D849A8], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_DirectionOfTravel()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_TimeStamp?, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_TunnelBridgeAssistance()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_TimeStamp?, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_MapsRouteHintData()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Int64?, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_MapMatchingRouteHint()
{
  type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for [CLP_LogEntry_PrivateData_MapsRouteHintData], type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_TimeStamp?, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        _sSdSgMaTm_0(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType?, &type metadata for CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification()
{
  _sSdSgMaTm_0(319, &lazy cache variable for type metadata for [Double], MEMORY[0x277D839F8], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_TimeStamp?, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Int32?, MEMORY[0x277D849A8], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          _sSdSgMaTm_0(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType?, &type metadata for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              _sSdSgMaTm_0(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType?, &type metadata for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
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

uint64_t getEnumTagSinglePayload for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void type metadata completion function for CLP_LogEntry_PrivateData_MapMatcherData(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    _sSdSgMaTm_0(319, a4, a5, MEMORY[0x277D83D88]);
    if (v8 <= 0x3F)
    {
      _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_664Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 24));
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

uint64_t __swift_store_extra_inhabitant_index_665Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 24)) = a2 + 2;
  }

  return result;
}

void type metadata completion function for CLP_LogEntry_PrivateData_Battery()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        _sSdSgMaTm_0(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_BatteryChargerType?, &type metadata for CLP_LogEntry_PrivateData_BatteryChargerType, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Int32?, MEMORY[0x277D849A8], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for CLP_LogEntry_PrivateData_DeviceStatus.NotificationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CLP_LogEntry_PrivateData_DeviceStatus.NotificationType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void type metadata completion function for CLP_LogEntry_PrivateData_SignalEnvironment()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_TimeStamp?, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      _sSdSgMaTm_0(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType?, &type metadata for CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Int32?, MEMORY[0x277D849A8], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_AccelSample()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_TimeStamp?, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Float?, MEMORY[0x277D83A90], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_FalseStepDetectorState()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void type metadata completion function for CLP_LogEntry_PrivateData_PedometerPathStraightness()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_TimeStamp?, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_790Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v16 = *(v15 - 8);
  if (*(v16 + 84) == a2)
  {
    v12 = v15;
    v13 = *(v16 + 48);
    v14 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + *(a3 + 28);

  return v19(v20, a2, v18);
}

uint64_t __swift_store_extra_inhabitant_index_791Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
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

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v18 = *(v17 - 8);
  if (*(v18 + 84) == a3)
  {
    v14 = v17;
    v15 = *(v18 + 56);
    v16 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + *(a4 + 28);

  return v21(v22, a2, a2, v20);
}

void type metadata completion function for CLP_LogEntry_PrivateData_MotionState(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_TimeStamp?, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, MEMORY[0x277D83D88]);
    if (v8 <= 0x3F)
    {
      _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Int32?, MEMORY[0x277D849A8], MEMORY[0x277D83D88]);
      if (v9 <= 0x3F)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, a4, a5, MEMORY[0x277D83D88]);
        if (v10 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_VehicleSpeed()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_CompassTypeSample()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_TimeStamp?, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_MotionTypeCompass?, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Float?, MEMORY[0x277D83A90], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_DeviceMotionSample()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_TimeStamp?, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion?, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          _sSdSgMaTm_0(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            _sSdSgMaTm_0(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_SensorFusionMode?, &type metadata for CLP_LogEntry_PrivateData_SensorFusionMode, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_SensorFusionStatus?, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Float?, MEMORY[0x277D83A90], MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
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

void type metadata completion function for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_TimeStamp?, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_493Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
    v16 = a1 + *(a3 + 20);

    return v15(v16, a2, v14);
  }
}

uint64_t __swift_store_extra_inhabitant_index_494Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
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
    v18 = a1 + *(a4 + 20);

    return v17(v18, a2, a2, v16);
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_Timer(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, a4, a5, MEMORY[0x277D83D88]);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_WifiAccessPoint()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    _sSdSgMaTm_0(319, &lazy cache variable for type metadata for UInt64?, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      _sSdSgMaTm_0(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Int32?, MEMORY[0x277D849A8], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          _sSdSgMaTm_0(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_WifiAccessPointMode?, &type metadata for CLP_LogEntry_PrivateData_WifiAccessPointMode, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Float?, MEMORY[0x277D83A90], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                _sSdSgMaTm_0(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_WifiRfBand?, &type metadata for CLP_LogEntry_PrivateData_WifiRfBand, MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
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

void type metadata completion function for CLP_LogEntry_PrivateData_WifiAssociationState()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_WifiAccessPoint?, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_Accel(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, a4, a5, MEMORY[0x277D83940]);
  if (v5 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v6 <= 0x3F)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_TimeStamp?, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, MEMORY[0x277D83D88]);
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_TimeStamp?, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      _sSdSgMaTm_0(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability?, &type metadata for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          _sSdSgMaTm_0(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.MeasurementSource?, &type metadata for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.MeasurementSource, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection()
{
  type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for [CLP_LogEntry_PrivateData_GEOLocationCoordinate2D], type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding()
{
  type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for [CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection], type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      _sSdSgMaTm_0(319, &lazy cache variable for type metadata for UInt64?, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_GEOMapBuildingData()
{
  type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for [CLP_LogEntry_PrivateData_GEOMapFeatureBuilding], type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    _sSdSgMaTm_0(319, &lazy cache variable for type metadata for [UInt64], MEMORY[0x277D84D38], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v2 <= 0x3F)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_TimeStamp?, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D?, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch()
{
  type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for [CLP_LogEntry_PrivateData_GEOLocationCoordinate2D], type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      _sSdSgMaTm_0(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.BranchType?, &type metadata for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.BranchType, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        _sSdSgMaTm_0(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox()
{
  type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for [CLP_LogEntry_PrivateData_GEOLocationCoordinate2D], type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna()
{
  type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for [CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch], type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox?, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        _sSdSgMaTm_0(319, &lazy cache variable for type metadata for UInt64?, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          _sSdSgMaTm_0(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType?, &type metadata for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            _sSdSgMaTm_0(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures?, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
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

void type metadata completion function for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData()
{
  type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for [CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna], type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_TimeStamp?, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_943Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 36));
  if (v14 >= 2)
  {
    v15 = ((v14 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v15 = -2;
  }

  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t __swift_store_extra_inhabitant_index_944Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36)) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void type metadata completion function for CLP_LogEntry_PrivateData_WristState()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_TimeStamp?, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      _sSdSgMaTm_0(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_WristState.WristStateType?, &type metadata for CLP_LogEntry_PrivateData_WristState.WristStateType, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        _sSdSgMaTm_0(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType?, &type metadata for CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_WatchState()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_TimeStamp?, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Int32?, MEMORY[0x277D849A8], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_WatchOrientation?, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_WristState?, type metadata accessor for CLP_LogEntry_PrivateData_WristState, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_PlaceInference()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    _sSdSgMaTm_0(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType?, &type metadata for CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      _sSdSgMaTm_0(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType?, &type metadata for CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        _sSdSgMaTm_0(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata completion function for CLP_LogEntry_PrivateData_DaemonLocation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_595Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 44));
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

uint64_t __swift_store_extra_inhabitant_index_596Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 44)) = a2 + 2;
  }

  return result;
}

void type metadata completion function for CLP_LogEntry_PrivateData_OutdoorUpdate()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      _sSdSgMaTm_0(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_IndoorOutdoorType?, &type metadata for CLP_LogEntry_PrivateData_IndoorOutdoorType, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        _sSdSgMaTm_0(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_IndoorOutdoorConfidence?, &type metadata for CLP_LogEntry_PrivateData_IndoorOutdoorConfidence, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Float?, MEMORY[0x277D83A90], MEMORY[0x277D83D88]);
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

void _sSdSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata completion function for CLP_LogEntry_PrivateData_InertialOdometrySample()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for CLP_LogEntry_PrivateData_DaemonLocation._StorageClass()
{
  type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_ClientLocationCoordinate?, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass()
{
  type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_ClientLocationCoordinate?, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_PressureSample?, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample, MEMORY[0x277D83D88]);
    if (v4 <= 0x3F)
    {
      v9 = *(v3 - 8) + 64;
      type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_MapMatcherData?, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData, MEMORY[0x277D83D88]);
      if (v6 <= 0x3F)
      {
        v10 = *(v5 - 8) + 64;
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo?, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo, MEMORY[0x277D83D88]);
        if (v8 <= 0x3F)
        {
          v11 = *(v7 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_Location._StorageClass()
{
  type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_TimeStamp?, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v16 = *(v0 - 8) + 64;
    type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_DaemonLocation?, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v17 = *(v2 - 8) + 64;
      type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_DaemonLocationPrivate?, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate, MEMORY[0x277D83D88]);
      if (v5 <= 0x3F)
      {
        v18 = *(v4 - 8) + 64;
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_TechnologyStatus?, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus, MEMORY[0x277D83D88]);
        if (v7 <= 0x3F)
        {
          v19 = *(v6 - 8) + 64;
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_VehicleSpeed?, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed, MEMORY[0x277D83D88]);
          if (v9 <= 0x3F)
          {
            v20 = *(v8 - 8) + 64;
            type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_VehicleHeading?, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading, MEMORY[0x277D83D88]);
            if (v11 <= 0x3F)
            {
              v21 = *(v10 - 8) + 64;
              type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_XtraFileAvailable?, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable, MEMORY[0x277D83D88]);
              if (v13 <= 0x3F)
              {
                v22 = *(v12 - 8) + 64;
                type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_LocationDerivedSpeed?, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed, MEMORY[0x277D83D88]);
                if (v15 <= 0x3F)
                {
                  v23 = *(v14 - 8) + 64;
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

void type metadata completion function for CLP_LogEntry_PrivateData_MotionActivity._StorageClass()
{
  type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_TimeStamp?, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_TimeStamp?, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, MEMORY[0x277D83D88]);
  if (v8 <= 0x3F)
  {
    v11 = *(v7 - 8) + 64;
    type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, a4, a5, MEMORY[0x277D83D88]);
    if (v10 <= 0x3F)
    {
      v12 = *(v9 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_TunnelEndPointAssistance._StorageClass()
{
  type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_TimeStamp?, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass()
{
  type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_TimeStamp?, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_ReachabilityState?, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_Battery?, type metadata accessor for CLP_LogEntry_PrivateData_Battery, MEMORY[0x277D83D88]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_StepCountEntry._StorageClass()
{
  type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_TimeStamp?, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_AccelerometerPace?, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_FalseStepDetectorState?, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState, MEMORY[0x277D83D88]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_MotionTypeCompass._StorageClass()
{
  type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_MotionTypeVector3?, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4?, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion._StorageClass()
{
  type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4?, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_MotionTypeVector3?, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_WifiNotification._StorageClass()
{
  type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_TimeStamp?, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_WifiAssociationState?, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_WifiScanResult?, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult, MEMORY[0x277D83D88]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass()
{
  type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_TimeStamp?, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_PlaceInference?, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_ClientLocationCoordinate?, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate, MEMORY[0x277D83D88]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t ALProtoRequest.().init()()
{
  v1 = v0;
  v2 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = swift_beginAccess();
  if (static ALProtoRequest._sTransactionCount == -1)
  {
    __break(1u);
  }

  else
  {
    ++static ALProtoRequest._sTransactionCount;
    CLP_LogEntry_AONLoc_Request.init()(v5);
    outlined init with take of CLP_LogEntry_AONLoc_Request(v5, v1 + OBJC_IVAR____TtC10ALProtobuf14ALProtoRequest__pb);
    swift_beginAccess();
    CLP_LogEntry_AONLoc_Request.processID.setter(0);
    CLP_LogEntry_AONLoc_Request.transactionID.setter(static ALProtoRequest._sTransactionCount);
    swift_endAccess();
    v7 = mach_continuous_time();
    swift_beginAccess();
    CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.setter(v7);
    swift_endAccess();
    return v1;
  }

  return result;
}

uint64_t type metadata accessor for ALProtoRequest()
{
  result = type metadata singleton initialization cache for ALProtoRequest;
  if (!type metadata singleton initialization cache for ALProtoRequest)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ALProtoRequest.__allocating_init(wifiResultOptions:)(uint64_t a1, char a2)
{
  v4 = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for ALProtoRequest();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  ALProtoRequest.().init()();
  swift_beginAccess();

  CLP_LogEntry_AONLoc_Request.type.setter(a2);
  swift_endAccess();
  ALResultOptions.toPb()(v7);
  swift_beginAccess();
  CLP_LogEntry_AONLoc_Request.resultOptions.setter(v7);
  swift_endAccess();

  v12 = type metadata accessor for ALResultOptions();
  (*(*(v12 - 8) + 8))(a1, v12);
  return v11;
}

uint64_t ALProtoRequest.__allocating_init(kappaConfigResultOptions:)(uint64_t a1)
{
  v2 = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  corelog.getter(v10);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_23CEAD000, v11, v12, "ALProtoRequest Kappa callback", v13, 2u);
    MEMORY[0x23EEDAF70](v13, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v14 = type metadata accessor for ALProtoRequest();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  ALProtoRequest.().init()();
  swift_beginAccess();

  CLP_LogEntry_AONLoc_Request.type.setter(5);
  swift_endAccess();
  ALResultOptions.toPb()(v5);
  swift_beginAccess();
  CLP_LogEntry_AONLoc_Request.resultOptions.setter(v5);
  swift_endAccess();

  v18 = type metadata accessor for ALResultOptions();
  (*(*(v18 - 8) + 8))(a1, v18);
  return v17;
}

uint64_t ALProtoRequest.__allocating_init(data:)(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  ALProtoRequest.init(data:)(a1, a2);
  return v7;
}

uint64_t ALProtoRequest.init(data:)(uint64_t a1, unint64_t a2)
{
  v6 = type metadata accessor for BinaryDecodingOptions();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  v18 = a2;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request();
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  outlined consume of Data._Representation(a1, a2);
  if (v3)
  {
    type metadata accessor for ALProtoRequest();
    v12 = *(*v2 + 48);
    v13 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    outlined init with take of CLP_LogEntry_AONLoc_Request(v11, v2 + OBJC_IVAR____TtC10ALProtobuf14ALProtoRequest__pb);
  }

  return v2;
}

uint64_t ALProtoRequest.serializedData()()
{
  v1 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 136))(v3);
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request();
  v6 = Message.serializedData(partial:)();
  outlined destroy of CLP_LogEntry_AONLoc_Request(v5);
  return v6;
}

BOOL ALProtoRequest.isWiFiResult()(char a1)
{
  v3 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v16 - v9;
  v11 = *(*v1 + 136);
  v11(v8);
  v12 = CLP_LogEntry_AONLoc_Request.hasType.getter();
  v13 = outlined destroy of CLP_LogEntry_AONLoc_Request(v10);
  if (!v12)
  {
    return 0;
  }

  v11(v13);
  v14 = CLP_LogEntry_AONLoc_Request.type.getter();
  outlined destroy of CLP_LogEntry_AONLoc_Request(v7);
  v18 = v14;
  v17 = a1;
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request.TypeEnum and conformance CLP_LogEntry_AONLoc_Request.TypeEnum();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  return v16[2] == v16[1];
}

uint64_t ALProtoRequest._pb.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10ALProtobuf14ALProtoRequest__pb;
  swift_beginAccess();
  return outlined init with copy of CLP_LogEntry_AONLoc_Request(v1 + v3, a1);
}

uint64_t ALProtoRequest._pb.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10ALProtobuf14ALProtoRequest__pb;
  swift_beginAccess();
  outlined assign with take of CLP_LogEntry_AONLoc_Request(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t static ALProtoRequest._sTransactionCount.setter(int a1)
{
  result = swift_beginAccess();
  static ALProtoRequest._sTransactionCount = a1;
  return result;
}

uint64_t ALProtoRequest.__deallocating_deinit()
{
  outlined destroy of CLP_LogEntry_AONLoc_Request(v0 + OBJC_IVAR____TtC10ALProtobuf14ALProtoRequest__pb);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_Request(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request);
  }

  return result;
}

uint64_t outlined init with take of CLP_LogEntry_AONLoc_Request(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CLP_LogEntry_AONLoc_Request(uint64_t a1)
{
  v2 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of CLP_LogEntry_AONLoc_Request(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of CLP_LogEntry_AONLoc_Request(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata completion function for ALProtoRequest()
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Request(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_PositionMethod(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_PositionMethod and conformance Proto_Gnss_Emergency_PositionMethod();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance Proto_Gnss_Emergency_PositionMethod@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Proto_Gnss_Emergency_PositionMethod.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Proto_Gnss_Emergency_PositionMethod@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Proto_Gnss_Emergency_PositionMethod.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_PositionReqType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_PositionReqType and conformance Proto_Gnss_Emergency_PositionReqType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_PositionSession(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_PositionSession and conformance Proto_Gnss_Emergency_PositionSession();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_PositionProtocol(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_PositionProtocol and conformance Proto_Gnss_Emergency_PositionProtocol();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_SessionErrorCode(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_SessionErrorCode and conformance Proto_Gnss_Emergency_SessionErrorCode();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance Proto_Gnss_Emergency_SessionErrorCode@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Proto_Gnss_Emergency_SessionErrorCode.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Proto_Gnss_Emergency_SessionErrorCode@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Proto_Gnss_Emergency_SessionErrorCode.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_TriggerType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_TriggerType and conformance Proto_Gnss_Emergency_TriggerType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_Status(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Status and conformance Proto_Gnss_Emergency_Status();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance Proto_Gnss_Emergency_Status@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Proto_Gnss_Emergency_Status.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Proto_Gnss_Emergency_Status@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Proto_Gnss_Emergency_Status.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_EndCause(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_EndCause and conformance Proto_Gnss_Emergency_EndCause();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance Proto_Gnss_Emergency_EndCause@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Proto_Gnss_Emergency_EndCause.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Proto_Gnss_Emergency_EndCause@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Proto_Gnss_Emergency_EndCause.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_ConnectionStatus(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_ConnectionStatus and conformance Proto_Gnss_Emergency_ConnectionStatus();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_CellType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_CellType and conformance Proto_Gnss_Emergency_CellType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_FreqMode(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_FreqMode and conformance Proto_Gnss_Emergency_FreqMode();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_SLPAddressType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_SLPAddressType and conformance Proto_Gnss_Emergency_SLPAddressType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_ErrorCodes(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_ErrorCodes and conformance Proto_Gnss_Emergency_ErrorCodes();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_ClsModemState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_ClsModemState and conformance Proto_Gnss_Emergency_ClsModemState();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_SessionProtocol(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_PosProtocol(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_MethodType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_MethodType and conformance Proto_Gnss_Emergency_MethodType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_Environment(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Environment and conformance Proto_Gnss_Emergency_Environment();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_AdditionalInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_AdditionalInfo and conformance Proto_Gnss_Emergency_AdditionalInfo();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GnssId(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_GnssId and conformance Proto_Gnss_Emergency_GnssId();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Enum.init(rawValue:) in conformance Proto_Gnss_Emergency_GnssId@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Proto_Gnss_Emergency_GnssId.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Proto_Gnss_Emergency_GnssId@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Proto_Gnss_Emergency_GnssId.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_SupportedGADShapes(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_SupportedGADShapes and conformance Proto_Gnss_Emergency_SupportedGADShapes();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_FixType(uint64_t a1, uint64_t a2)
{
  fixed = lazy protocol witness table accessor for type Proto_Gnss_Emergency_FixType and conformance Proto_Gnss_Emergency_FixType();

  return MEMORY[0x28217E238](a1, a2, fixed);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_ClsNetworkType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_ClsNetworkType and conformance Proto_Gnss_Emergency_ClsNetworkType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GnssTimeId(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_GnssTimeId and conformance Proto_Gnss_Emergency_GnssTimeId();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_ShapeType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_ShapeType and conformance Proto_Gnss_Emergency_ShapeType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance Proto_Gnss_Emergency_ShapeType@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s10ALProtobuf30Proto_Gnss_Emergency_ShapeTypeO8rawValueACSgSi_tcfC_0(a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Proto_Gnss_Emergency_ShapeType@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s10ALProtobuf30Proto_Gnss_Emergency_ShapeTypeO8rawValueACSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_VelocityType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_VelocityType and conformance Proto_Gnss_Emergency_VelocityType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_MultipathIndicator(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_MultipathIndicator and conformance Proto_Gnss_Emergency_MultipathIndicator();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GanssId(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_GanssId and conformance Proto_Gnss_Emergency_GanssId();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_MeasurementsResult(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_MeasurementsResult and conformance Proto_Gnss_Emergency_MeasurementsResult();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_LcsGanssId(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_LcsGanssId and conformance Proto_Gnss_Emergency_LcsGanssId();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_AidMask(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_AidMask and conformance Proto_Gnss_Emergency_AidMask();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Enum.init(rawValue:) in conformance Proto_Gnss_Emergency_AidMask@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s10ALProtobuf28Proto_Gnss_Emergency_AidMaskO8rawValueACSgSi_tcfC_0(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Proto_Gnss_Emergency_AidMask@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s10ALProtobuf28Proto_Gnss_Emergency_AidMaskO8rawValueACSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GanssCommonAidMask(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_GanssCommonAidMask and conformance Proto_Gnss_Emergency_GanssCommonAidMask();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GanssGenericAidMask(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_GanssGenericAidMask and conformance Proto_Gnss_Emergency_GanssGenericAidMask();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GanssSignalIdMask(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_GanssSignalIdMask and conformance Proto_Gnss_Emergency_GanssSignalIdMask();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Enum.init(rawValue:) in conformance Proto_Gnss_Emergency_GanssSignalIdMask@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Proto_Gpsd_SuplInitDecodeResult.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Proto_Gnss_Emergency_GanssSignalIdMask@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Proto_Gpsd_SuplInitDecodeResult.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_AssistanceRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_AssistanceRequest and conformance Proto_Gnss_Emergency_AssistanceRequest();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_UtranSfnGpsUncertainty(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_UtranSfnGpsUncertainty and conformance Proto_Gnss_Emergency_UtranSfnGpsUncertainty();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GpsDopplerUncMpsExt(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_GpsDopplerUncMpsExt and conformance Proto_Gnss_Emergency_GpsDopplerUncMpsExt();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_MeasurementAndEstimateResponseType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_MeasurementAndEstimateResponseType and conformance Proto_Gnss_Emergency_MeasurementAndEstimateResponseType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_AfltAction(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_AfltAction and conformance Proto_Gnss_Emergency_AfltAction();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_WlanMeasurementResult(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_WlanMeasurementResult and conformance Proto_Gnss_Emergency_WlanMeasurementResult();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_Configuration.heloEnabled.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Configuration.heloEnabled.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Configuration(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_Configuration.earlyReturnEnabled.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Configuration.earlyReturnEnabled.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Configuration(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_Configuration.targetVerticalUncertaintyM.setter(double a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Configuration.targetVerticalUncertaintyM.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Configuration(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_Configuration.clearTargetVerticalUncertaintyM()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_Configuration(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

int *Proto_Gnss_Emergency_Configuration.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
  *(a1 + result[5]) = 2;
  *(a1 + result[6]) = 2;
  v3 = a1 + result[7];
  *v3 = 0;
  *(v3 + 8) = 1;
  return result;
}

double Proto_Gnss_Emergency_SummaryReport.latitudeDegrees.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20));
  swift_beginAccess();
  result = *(v1 + 16);
  if (*(v1 + 24))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_SummaryReport.latitudeDegrees.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 16) = a1;
  *(v7 + 24) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_SummaryReport.latitudeDegrees.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (*(v6 + 24))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Proto_Gnss_Emergency_SummaryReport.latitudeDegrees.modify;
}

void Proto_Gnss_Emergency_SummaryReport.latitudeDegrees.modify(uint64_t *a1)
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
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 16) = v2;
  *(v7 + 24) = 0;

  free(v1);
}

BOOL Proto_Gnss_Emergency_SummaryReport.hasLatitudeDegrees.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20));
  swift_beginAccess();
  return (*(v1 + 24) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SummaryReport.clearLatitudeDegrees()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v6 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 16) = 0;
  *(v5 + 24) = 1;
}

double Proto_Gnss_Emergency_SummaryReport.longitudeDegrees.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20));
  swift_beginAccess();
  result = *(v1 + 32);
  if (*(v1 + 40))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_SummaryReport.longitudeDegrees.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 32) = a1;
  *(v7 + 40) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_SummaryReport.longitudeDegrees.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 32);
  if (*(v6 + 40))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Proto_Gnss_Emergency_SummaryReport.longitudeDegrees.modify;
}

void Proto_Gnss_Emergency_SummaryReport.longitudeDegrees.modify(uint64_t *a1)
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
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 32) = v2;
  *(v7 + 40) = 0;

  free(v1);
}

BOOL Proto_Gnss_Emergency_SummaryReport.hasLongitudeDegrees.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20));
  swift_beginAccess();
  return (*(v1 + 40) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SummaryReport.clearLongitudeDegrees()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v6 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 32) = 0;
  *(v5 + 40) = 1;
}

double Proto_Gnss_Emergency_SummaryReport.altitudeMeters.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20));
  swift_beginAccess();
  result = *(v1 + 48);
  if (*(v1 + 56))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_SummaryReport.altitudeMeters.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 48) = a1;
  *(v7 + 56) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_SummaryReport.altitudeMeters.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 48);
  if (*(v6 + 56))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Proto_Gnss_Emergency_SummaryReport.altitudeMeters.modify;
}

void Proto_Gnss_Emergency_SummaryReport.altitudeMeters.modify(uint64_t *a1)
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
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 48) = v2;
  *(v7 + 56) = 0;

  free(v1);
}

BOOL Proto_Gnss_Emergency_SummaryReport.hasAltitudeMeters.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20));
  swift_beginAccess();
  return (*(v1 + 56) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SummaryReport.clearAltitudeMeters()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v6 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 48) = 0;
  *(v5 + 56) = 1;
}

double Proto_Gnss_Emergency_SummaryReport.achievedHorizontalUncertaintyMeters.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20));
  swift_beginAccess();
  result = *(v1 + 64);
  if (*(v1 + 72))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_SummaryReport.achievedHorizontalUncertaintyMeters.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 64) = a1;
  *(v7 + 72) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_SummaryReport.achievedHorizontalUncertaintyMeters.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 64);
  if (*(v6 + 72))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Proto_Gnss_Emergency_SummaryReport.achievedHorizontalUncertaintyMeters.modify;
}

void Proto_Gnss_Emergency_SummaryReport.achievedHorizontalUncertaintyMeters.modify(uint64_t *a1)
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
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 64) = v2;
  *(v7 + 72) = 0;

  free(v1);
}

BOOL Proto_Gnss_Emergency_SummaryReport.hasAchievedHorizontalUncertaintyMeters.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20));
  swift_beginAccess();
  return (*(v1 + 72) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SummaryReport.clearAchievedHorizontalUncertaintyMeters()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v6 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 64) = 0;
  *(v5 + 72) = 1;
}

double Proto_Gnss_Emergency_SummaryReport.achievedVerticalUncertaintyMeters.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20));
  swift_beginAccess();
  result = *(v1 + 80);
  if (*(v1 + 88))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_SummaryReport.achievedVerticalUncertaintyMeters.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 80) = a1;
  *(v7 + 88) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_SummaryReport.achievedVerticalUncertaintyMeters.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 80);
  if (*(v6 + 88))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Proto_Gnss_Emergency_SummaryReport.achievedVerticalUncertaintyMeters.modify;
}

void Proto_Gnss_Emergency_SummaryReport.achievedVerticalUncertaintyMeters.modify(uint64_t *a1)
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
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 80) = v2;
  *(v7 + 88) = 0;

  free(v1);
}

BOOL Proto_Gnss_Emergency_SummaryReport.hasAchievedVerticalUncertaintyMeters.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20));
  swift_beginAccess();
  return (*(v1 + 88) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SummaryReport.clearAchievedVerticalUncertaintyMeters()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v6 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 80) = 0;
  *(v5 + 88) = 1;
}

double Proto_Gnss_Emergency_SummaryReport.ttffSeconds.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20));
  swift_beginAccess();
  result = *(v1 + 96);
  if (*(v1 + 104))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_SummaryReport.ttffSeconds.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 96) = a1;
  *(v7 + 104) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_SummaryReport.ttffSeconds.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 96);
  if (*(v6 + 104))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Proto_Gnss_Emergency_SummaryReport.ttffSeconds.modify;
}

void Proto_Gnss_Emergency_SummaryReport.ttffSeconds.modify(uint64_t *a1)
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
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 96) = v2;
  *(v7 + 104) = 0;

  free(v1);
}

BOOL Proto_Gnss_Emergency_SummaryReport.hasTtffSeconds.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20));
  swift_beginAccess();
  return (*(v1 + 104) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SummaryReport.clearTtffSeconds()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v6 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 96) = 0;
  *(v5 + 104) = 1;
}

uint64_t Proto_Gnss_Emergency_SummaryReport.technologySource.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20));
  swift_beginAccess();
  if (*(v1 + 112))
  {
    return 0;
  }

  else
  {
    return *(v1 + 108);
  }
}

uint64_t Proto_Gnss_Emergency_SummaryReport.technologySource.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 108) = a1;
  *(v7 + 112) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_SummaryReport.technologySource.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 108);
  if (*(v6 + 112))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_SummaryReport.technologySource.modify;
}

void Proto_Gnss_Emergency_SummaryReport.technologySource.modify(uint64_t *a1)
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
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 108) = v2;
  *(v7 + 112) = 0;

  free(v1);
}

BOOL Proto_Gnss_Emergency_SummaryReport.hasTechnologySource.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20));
  swift_beginAccess();
  return (*(v1 + 112) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SummaryReport.clearTechnologySource()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v6 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 108) = 0;
  *(v5 + 112) = 1;
}

uint64_t Proto_Gnss_Emergency_SummaryReport.methodType.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20));
  swift_beginAccess();
  if (*(v1 + 113) == 18)
  {
    return 0;
  }

  else
  {
    return *(v1 + 113);
  }
}

uint64_t Proto_Gnss_Emergency_SummaryReport.methodType.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 113) = a1;
  return result;
}

void (*Proto_Gnss_Emergency_SummaryReport.methodType.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 113);
  if (v7 == 18)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return Proto_Gnss_Emergency_SummaryReport.methodType.modify;
}

void Proto_Gnss_Emergency_SummaryReport.methodType.modify(uint64_t *a1)
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
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 113) = v2;

  free(v1);
}

BOOL Proto_Gnss_Emergency_SummaryReport.hasMethodType.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20));
  swift_beginAccess();
  return *(v1 + 113) != 18;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SummaryReport.clearMethodType()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v6 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 113) = 18;
}

uint64_t Proto_Gnss_Emergency_SummaryReport.sessionType.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20));
  swift_beginAccess();
  if (*(v1 + 114) == 4)
  {
    return 0;
  }

  else
  {
    return *(v1 + 114);
  }
}

uint64_t Proto_Gnss_Emergency_SummaryReport.sessionType.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 114) = a1;
  return result;
}

void (*Proto_Gnss_Emergency_SummaryReport.sessionType.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 114);
  if (v7 == 4)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return Proto_Gnss_Emergency_SummaryReport.sessionType.modify;
}

void Proto_Gnss_Emergency_SummaryReport.sessionType.modify(uint64_t *a1)
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
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 114) = v2;

  free(v1);
}

BOOL Proto_Gnss_Emergency_SummaryReport.hasSessionType.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20));
  swift_beginAccess();
  return *(v1 + 114) != 4;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SummaryReport.clearSessionType()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v6 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 114) = 4;
}

uint64_t Proto_Gnss_Emergency_SummaryReport.protocolType.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20));
  swift_beginAccess();
  if (*(v1 + 115) == 7)
  {
    return 0;
  }

  else
  {
    return *(v1 + 115);
  }
}

uint64_t Proto_Gnss_Emergency_SummaryReport.protocolType.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 115) = a1;
  return result;
}

void (*Proto_Gnss_Emergency_SummaryReport.protocolType.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 115);
  if (v7 == 7)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return Proto_Gnss_Emergency_SummaryReport.protocolType.modify;
}

void Proto_Gnss_Emergency_SummaryReport.protocolType.modify(uint64_t *a1)
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
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 115) = v2;

  free(v1);
}

BOOL Proto_Gnss_Emergency_SummaryReport.hasProtocolType.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20));
  swift_beginAccess();
  return *(v1 + 115) != 7;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SummaryReport.clearProtocolType()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v6 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 115) = 7;
}

uint64_t Proto_Gnss_Emergency_SummaryReport.requestedResponseTimeoutSeconds.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 120) = a1;
  *(v7 + 128) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_SummaryReport.requestedResponseTimeoutSeconds.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 120);
  if (*(v6 + 128))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Proto_Gnss_Emergency_SummaryReport.requestedResponseTimeoutSeconds.modify;
}

void Proto_Gnss_Emergency_SummaryReport.requestedResponseTimeoutSeconds.modify(uint64_t *a1)
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
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 120) = v2;
  *(v7 + 128) = 0;

  free(v1);
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SummaryReport.clearRequestedResponseTimeoutSeconds()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v6 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 120) = 0;
  *(v5 + 128) = 1;
}

double Proto_Gnss_Emergency_SummaryReport.requestedHorizontalAccuracyMeters.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20));
  swift_beginAccess();
  result = *(v1 + 136);
  if (*(v1 + 144))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_SummaryReport.requestedHorizontalAccuracyMeters.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 136) = a1;
  *(v7 + 144) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_SummaryReport.requestedHorizontalAccuracyMeters.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 136);
  if (*(v6 + 144))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Proto_Gnss_Emergency_SummaryReport.requestedHorizontalAccuracyMeters.modify;
}

void Proto_Gnss_Emergency_SummaryReport.requestedHorizontalAccuracyMeters.modify(uint64_t *a1)
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
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 136) = v2;
  *(v7 + 144) = 0;

  free(v1);
}

BOOL Proto_Gnss_Emergency_SummaryReport.hasRequestedHorizontalAccuracyMeters.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20));
  swift_beginAccess();
  return (*(v1 + 144) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SummaryReport.clearRequestedHorizontalAccuracyMeters()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v6 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 136) = 0;
  *(v5 + 144) = 1;
}

double Proto_Gnss_Emergency_SummaryReport.requestedVerticalAccuracyMeters.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20));
  swift_beginAccess();
  result = *(v1 + 152);
  if (*(v1 + 160))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_SummaryReport.requestedVerticalAccuracyMeters.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 152) = a1;
  *(v7 + 160) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_SummaryReport.requestedVerticalAccuracyMeters.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 152);
  if (*(v6 + 160))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Proto_Gnss_Emergency_SummaryReport.requestedVerticalAccuracyMeters.modify;
}

void Proto_Gnss_Emergency_SummaryReport.requestedVerticalAccuracyMeters.modify(uint64_t *a1)
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
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 152) = v2;
  *(v7 + 160) = 0;

  free(v1);
}

BOOL Proto_Gnss_Emergency_SummaryReport.hasRequestedVerticalAccuracyMeters.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20));
  swift_beginAccess();
  return (*(v1 + 160) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SummaryReport.clearRequestedVerticalAccuracyMeters()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v6 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 152) = 0;
  *(v5 + 160) = 1;
}

uint64_t Proto_Gnss_Emergency_SummaryReport.posReqType.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20));
  swift_beginAccess();
  if (*(v1 + 161) == 8)
  {
    return 0;
  }

  else
  {
    return *(v1 + 161);
  }
}

uint64_t Proto_Gnss_Emergency_SummaryReport.posReqType.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 161) = a1;
  return result;
}

void (*Proto_Gnss_Emergency_SummaryReport.posReqType.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 161);
  if (v7 == 8)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return Proto_Gnss_Emergency_SummaryReport.posReqType.modify;
}

void Proto_Gnss_Emergency_SummaryReport.posReqType.modify(uint64_t *a1)
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
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 161) = v2;

  free(v1);
}

BOOL Proto_Gnss_Emergency_SummaryReport.hasPosReqType.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20));
  swift_beginAccess();
  return *(v1 + 161) != 8;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SummaryReport.clearPosReqType()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v6 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 161) = 8;
}

uint64_t Proto_Gnss_Emergency_SummaryReport.errorCode.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20));
  swift_beginAccess();
  if (*(v1 + 162) == 17)
  {
    return 0;
  }

  else
  {
    return *(v1 + 162);
  }
}

uint64_t Proto_Gnss_Emergency_SummaryReport.errorCode.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 162) = a1;
  return result;
}

void (*Proto_Gnss_Emergency_SummaryReport.errorCode.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 162);
  if (v7 == 17)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return Proto_Gnss_Emergency_SummaryReport.errorCode.modify;
}

void Proto_Gnss_Emergency_SummaryReport.errorCode.modify(uint64_t *a1)
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
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 162) = v2;

  free(v1);
}

BOOL Proto_Gnss_Emergency_SummaryReport.hasErrorCode.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20));
  swift_beginAccess();
  return *(v1 + 162) != 17;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SummaryReport.clearErrorCode()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v6 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 162) = 17;
}

uint64_t Proto_Gnss_Emergency_SummaryReport.heloEnabled.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20));
  swift_beginAccess();
  return *(v1 + 163) & 1;
}

uint64_t Proto_Gnss_Emergency_SummaryReport.heloEnabled.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 163) = a1 & 1;
  return result;
}