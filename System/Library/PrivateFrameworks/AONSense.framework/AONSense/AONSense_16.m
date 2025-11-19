Swift::Void __swiftcall Proto_Gnss_Emergency_ClsEutranCell.clearCgiInfoPresent()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ClsEutranCell.plmn.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 36), v6, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_ClsEutranCell.plmn.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 36);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  v4 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Proto_Gnss_Emergency_ClsEutranCell.plmn.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 36);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  }

  return Proto_Gnss_Emergency_ClsEutranCell.plmn.modify;
}

BOOL Proto_Gnss_Emergency_SuplContext.hasConfig.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + *(v13 + 36), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  outlined destroy of Any?(v12, a1, a2);
  return v15;
}

uint64_t Proto_Gnss_Emergency_SuplContext.clearConfig()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 36);
  outlined destroy of Any?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Proto_Gnss_Emergency_ClsEutranCell.eutranCellID.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsEutranCell.eutranCellID.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 40);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsEutranCell.clearEutranCellID()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_LteCellInfo.rsrp.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 44));
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t Proto_Gnss_Emergency_ClsEutranCell.secFromFrameStart.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsEutranCell.secFromFrameStart.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 44);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsEutranCell.clearSecFromFrameStart()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 44);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ClsEutranCell.fracSecFromFrameStart.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsEutranCell.fracSecFromFrameStart.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 48);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsEutranCell.clearFracSecFromFrameStart()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 48);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_LteCellInfo.ta.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 52));
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t Proto_Gnss_Emergency_ClsEutranCell.frameDrift.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsEutranCell.frameDrift.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 52);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsEutranCell.clearFrameDrift()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 52);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_LteCellInfo.dlearfcn.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 56));
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t Proto_Gnss_Emergency_ClsEutranCell.refTimeUncertainty.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v4 = v1 + *(result + 56);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsEutranCell.refTimeUncertainty.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 56);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsEutranCell.clearRefTimeUncertainty()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 56);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ClsEutranCell.bsAlign.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v4 = v1 + *(result + 60);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsEutranCell.bsAlign.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 60);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsEutranCell.clearBsAlign()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 60);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ClsEutranCell.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + v2[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + v2[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1 + v2[8];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = v2[9];
  v8 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  result = (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  v10 = a1 + v2[10];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v2[11];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v2[12];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v2[13];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1 + v2[14];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a1 + v2[15];
  *v15 = 0;
  *(v15 + 4) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_GanssTimeMeasured.utranTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  v9 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
  }

  UnknownStorage.init()();
  v11 = a1 + v9[5];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v9[6];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v9[7];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = v9[8];
  v15 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GanssTimeMeasured.utranTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v7, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
  v17 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_GanssTimeMeasured.utranTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v14 + v9[6];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v14 + v9[7];
    *v21 = 0;
    *(v21 + 4) = 1;
    v22 = v9[8];
    v23 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
    (*(*(v23 - 8) + 56))(v14 + v22, 1, 1, v23);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
  }

  return Proto_Gnss_Emergency_GanssTimeMeasured.utranTime.modify;
}

void Proto_Gnss_Emergency_GanssTimeMeasured.utranTime.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v15, v19, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v14, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v14, v19, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gnss_Emergency_GanssTimeMeasured.hasUtranTime.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssTimeMeasured.clearUtranTime()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_GanssTimeMeasured.geranTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  v9 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
  }

  UnknownStorage.init()();
  v11 = a1 + v9[5];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v9[6];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = v9[7];
  v14 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GanssTimeMeasured.geranTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v7, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
  v17 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_GanssTimeMeasured.geranTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v14 + v9[6];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v9[7];
    v22 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
    (*(*(v22 - 8) + 56))(v14 + v21, 1, 1, v22);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
  }

  return Proto_Gnss_Emergency_GanssTimeMeasured.geranTime.modify;
}

void Proto_Gnss_Emergency_GanssTimeMeasured.geranTime.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v15, v19, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v14, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v14, v19, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gnss_Emergency_GanssTimeMeasured.hasGeranTime.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssTimeMeasured.clearGeranTime()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_GanssTimeMeasured.eutranTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  v9 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  }

  UnknownStorage.init()();
  v11 = a1 + v9[5];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v9[6];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v9[7];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1 + v9[8];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = v9[9];
  v16 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  (*(*(v16 - 8) + 56))(a1 + v15, 1, 1, v16);
  v17 = a1 + v9[10];
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = a1 + v9[11];
  *v18 = 0;
  *(v18 + 4) = 1;
  v19 = a1 + v9[12];
  *v19 = 0;
  *(v19 + 4) = 1;
  v20 = a1 + v9[13];
  *v20 = 0;
  *(v20 + 4) = 1;
  v21 = a1 + v9[14];
  *v21 = 0;
  *(v21 + 4) = 1;
  v22 = a1 + v9[15];
  *v22 = 0;
  *(v22 + 4) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GanssTimeMeasured.eutranTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v7, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  v17 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_GanssTimeMeasured.eutranTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v14 + v9[6];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v14 + v9[7];
    *v21 = 0;
    *(v21 + 4) = 1;
    v22 = v14 + v9[8];
    *v22 = 0;
    *(v22 + 4) = 1;
    v23 = v9[9];
    v24 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
    (*(*(v24 - 8) + 56))(v14 + v23, 1, 1, v24);
    v25 = v14 + v9[10];
    *v25 = 0;
    *(v25 + 4) = 1;
    v26 = v14 + v9[11];
    *v26 = 0;
    *(v26 + 4) = 1;
    v27 = v14 + v9[12];
    *v27 = 0;
    *(v27 + 4) = 1;
    v28 = v14 + v9[13];
    *v28 = 0;
    *(v28 + 4) = 1;
    v29 = v14 + v9[14];
    *v29 = 0;
    *(v29 + 4) = 1;
    v30 = v14 + v9[15];
    *v30 = 0;
    *(v30 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  }

  return Proto_Gnss_Emergency_GanssTimeMeasured.eutranTime.modify;
}

void Proto_Gnss_Emergency_GanssTimeMeasured.eutranTime.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v15, v19, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v14, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v14, v19, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gnss_Emergency_GanssTimeMeasured.hasEutranTime.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssTimeMeasured.clearEutranTime()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_GanssTimeMeasuredParams.ganssTimeMeasuredType.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0) + 20));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_GanssTimeMeasuredParams.ganssTimeMeasuredType.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssTimeMeasuredParams.ganssTimeMeasuredType.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_GanssTimeMeasuredParams.ganssTimeMeasured.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 24), v6, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v10) = static Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass.defaultInstance;
  v11 = v9(v6, 1, v8);

  if (v11 != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GanssTimeMeasuredParams.ganssTimeMeasured.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_GanssTimeMeasuredParams.ganssTimeMeasured.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = *(v9 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v14 + v17) = static Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass.defaultInstance;
    v18 = v16(v8, 1, v9);

    if (v18 != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
  }

  return Proto_Gnss_Emergency_GanssTimeMeasuredParams.ganssTimeMeasured.modify;
}

uint64_t Proto_Gnss_Emergency_GpsTimeMeasuredParams.init()@<X0>(uint64_t (*a1)(void)@<X0>, char a2@<W1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  UnknownStorage.init()();
  v8 = a1(0);
  *(a4 + *(v8 + 20)) = a2;
  v9 = *(v8 + 24);
  v10 = a3(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a4 + v9, 1, 1, v10);
}

uint64_t Proto_Gnss_Emergency_GanssLocationInfo.timeID.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 20));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_GanssLocationInfo.timeID.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssLocationInfo.timeID.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_GanssLocationInfo.ganssTod.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssLocationInfo.ganssTod.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssLocationInfo.clearGanssTod()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssLocationInfo.ganssTodFrac.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssLocationInfo.ganssTodFrac.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssLocationInfo.clearGanssTodFrac()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssLocationInfo.ganssTodUncertainty.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssLocationInfo.ganssTodUncertainty.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 32);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssLocationInfo.clearGanssTodUncertainty()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssLocationInfo.fixType.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 36));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_GanssLocationInfo.fixType.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssLocationInfo.fixType.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 36);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_GanssLocationInfo.referenceGnss.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssLocationInfo.referenceGnss.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 40);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssLocationInfo.clearReferenceGnss()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

int *Proto_Gnss_Emergency_GanssLocationInfo.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  *(a1 + result[5]) = 6;
  v3 = a1 + result[6];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + result[7];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + result[8];
  *v5 = 0;
  *(v5 + 4) = 1;
  *(a1 + result[9]) = 4;
  v6 = a1 + result[10];
  *v6 = 0;
  *(v6 + 4) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_EllipsoidPoint.latitude.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_EllipsoidPoint.latitude.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_EllipsoidPoint.clearLatitude()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_EllipsoidPoint.longitude.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_EllipsoidPoint.longitude.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_EllipsoidPoint.clearLongitude()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_PointUncertainCircle.point.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 20), v6, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + *(v8 + 24);
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_PointUncertainCircle.point.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0) + 20);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  v4 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Proto_Gnss_Emergency_PointUncertainCircle.point.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + *(v9 + 20);
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + *(v9 + 24);
    *v18 = 0;
    *(v18 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  return Proto_Gnss_Emergency_PointUncertainEllipse.point.modify;
}

uint64_t Proto_Gnss_Emergency_PointUncertainCircle.uncertainRadius.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_PointUncertainCircle.uncertainRadius.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_PointUncertainCircle.clearUncertainRadius()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_PointUncertainEllipse.point.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 20), v6, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + *(v8 + 24);
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_PointUncertainEllipse.point.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 20);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  v4 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Proto_Gnss_Emergency_PointUncertainEllipse.point.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + *(v9 + 20);
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + *(v9 + 24);
    *v18 = 0;
    *(v18 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  return Proto_Gnss_Emergency_PointUncertainEllipse.point.modify;
}

uint64_t Proto_Gnss_Emergency_PointUncertainEllipse.semiMajorAxis.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_PointUncertainEllipse.semiMajorAxis.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_PointUncertainEllipse.clearSemiMajorAxis()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_PointUncertainEllipse.semiMinorAxis.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_PointUncertainEllipse.semiMinorAxis.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_PointUncertainEllipse.clearSemiMinorAxis()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_PointUncertainEllipse.orientationAngle.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_PointUncertainEllipse.orientationAngle.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 32);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_PointUncertainEllipse.clearOrientationAngle()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_PointUncertainEllipse.confidence.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_PointUncertainEllipse.confidence.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 36);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_PointUncertainEllipse.clearConfidence()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_PointUncertainEllipse.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v3 = v2[5];
  v4 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v6 = a1 + v2[6];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1 + v2[7];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1 + v2[8];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a1 + v2[9];
  *v9 = 0;
  *(v9 + 4) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.point.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 20), v6, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + *(v8 + 24);
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.point.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 20);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  v4 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.point.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + *(v9 + 20);
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + *(v9 + 24);
    *v18 = 0;
    *(v18 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  return Proto_Gnss_Emergency_PointUncertainEllipse.point.modify;
}

uint64_t Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.altitude.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.altitude.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.clearAltitude()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.semiMajorAxis.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.semiMajorAxis.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.clearSemiMajorAxis()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.semiMinorAxis.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.semiMinorAxis.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 32);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.clearSemiMinorAxis()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.orientationAngle.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.orientationAngle.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 36);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.clearOrientationAngle()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.uncertainAltitude.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.uncertainAltitude.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 40);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.clearUncertainAltitude()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.confidence.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.confidence.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 44);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.clearConfidence()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 44);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v3 = v2[5];
  v4 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v6 = a1 + v2[6];
  *v6 = 0;
  *(v6 + 4) = 1;
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

uint64_t Proto_Gnss_Emergency_EllipsoidArc.point.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 20), v6, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + *(v8 + 24);
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_EllipsoidArc.point.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 20);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  v4 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_EllipsoidArc.point.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + *(v9 + 20);
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + *(v9 + 24);
    *v18 = 0;
    *(v18 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  return Proto_Gnss_Emergency_EllipsoidArc.point.modify;
}

uint64_t Proto_Gnss_Emergency_EllipsoidArc.innerRadius.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_EllipsoidArc.innerRadius.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_EllipsoidArc.clearInnerRadius()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_EllipsoidArc.uncertainRadius.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_EllipsoidArc.uncertainRadius.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_EllipsoidArc.clearUncertainRadius()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_EllipsoidArc.offsetAngle.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_EllipsoidArc.offsetAngle.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 32);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_EllipsoidArc.clearOffsetAngle()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_EllipsoidArc.includedAngle.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_EllipsoidArc.includedAngle.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 36);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_EllipsoidArc.clearIncludedAngle()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_EllipsoidArc.confidence.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_EllipsoidArc.confidence.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 40);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_EllipsoidArc.clearConfidence()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_EllipsoidArc.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v3 = v2[5];
  v4 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v6 = a1 + v2[6];
  *v6 = 0;
  *(v6 + 4) = 1;
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
  return result;
}

uint64_t Proto_Gnss_Emergency_PointAltitude.point.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 20), v6, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + *(v8 + 24);
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_PointAltitude.point.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0) + 20);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  v4 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Proto_Gnss_Emergency_PointAltitude.point.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + *(v9 + 20);
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + *(v9 + 24);
    *v18 = 0;
    *(v18 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  return Proto_Gnss_Emergency_PointUncertainEllipse.point.modify;
}

uint64_t Proto_Gnss_Emergency_PointAltitude.altitude.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_PointAltitude.altitude.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_PointAltitude.clearAltitude()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_PointUncertainCircle.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1(0);
  v5 = *(v4 + 20);
  v6 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  result = (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v8 = a2 + *(v4 + 24);
  *v8 = 0;
  *(v8 + 4) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_Polygon.noOfPoints.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Polygon.noOfPoints.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Polygon(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_Polygon.clearNoOfPoints()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_Polygon(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ShapeInfo.pointUncertainCircle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  v9 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
  }

  UnknownStorage.init()();
  v11 = *(v9 + 20);
  v12 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = a1 + *(v9 + 24);
  *v13 = 0;
  *(v13 + 4) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_ShapeInfo.pointUncertainCircle.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v7, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
  v16 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v17, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_ShapeInfo.pointUncertainCircle.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = *(v9 + 20);
    v20 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    v21 = v14 + *(v9 + 24);
    *v21 = 0;
    *(v21 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
  }

  return Proto_Gnss_Emergency_ShapeInfo.pointUncertainCircle.modify;
}

void Proto_Gnss_Emergency_ShapeInfo.pointUncertainCircle.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v15, v19, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v14, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v14, v19, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gnss_Emergency_ShapeInfo.hasPointUncertainCircle.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ShapeInfo.clearPointUncertainCircle()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v15, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_ShapeInfo.pointUncertainEllipse.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  v9 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
  }

  UnknownStorage.init()();
  v11 = v9[5];
  v12 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = a1 + v9[6];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1 + v9[7];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a1 + v9[8];
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a1 + v9[9];
  *v16 = 0;
  *(v16 + 4) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_ShapeInfo.pointUncertainEllipse.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v7, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
  v16 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v17, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_ShapeInfo.pointUncertainEllipse.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v9[5];
    v20 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    v21 = v14 + v9[6];
    *v21 = 0;
    *(v21 + 4) = 1;
    v22 = v14 + v9[7];
    *v22 = 0;
    *(v22 + 4) = 1;
    v23 = v14 + v9[8];
    *v23 = 0;
    *(v23 + 4) = 1;
    v24 = v14 + v9[9];
    *v24 = 0;
    *(v24 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
  }

  return Proto_Gnss_Emergency_ShapeInfo.pointUncertainEllipse.modify;
}

void Proto_Gnss_Emergency_ShapeInfo.pointUncertainEllipse.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v15, v19, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v14, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v14, v19, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gnss_Emergency_ShapeInfo.hasPointUncertainEllipse.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ShapeInfo.clearPointUncertainEllipse()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v15, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_ShapeInfo.pointAltitudeUncertainEllipsoid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  v9 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
  }

  UnknownStorage.init()();
  v11 = v9[5];
  v12 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = a1 + v9[6];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1 + v9[7];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a1 + v9[8];
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a1 + v9[9];
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = a1 + v9[10];
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = a1 + v9[11];
  *v18 = 0;
  *(v18 + 4) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_ShapeInfo.pointAltitudeUncertainEllipsoid.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v7, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
  v16 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v17, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_ShapeInfo.pointAltitudeUncertainEllipsoid.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v9[5];
    v20 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    v21 = v14 + v9[6];
    *v21 = 0;
    *(v21 + 4) = 1;
    v22 = v14 + v9[7];
    *v22 = 0;
    *(v22 + 4) = 1;
    v23 = v14 + v9[8];
    *v23 = 0;
    *(v23 + 4) = 1;
    v24 = v14 + v9[9];
    *v24 = 0;
    *(v24 + 4) = 1;
    v25 = v14 + v9[10];
    *v25 = 0;
    *(v25 + 4) = 1;
    v26 = v14 + v9[11];
    *v26 = 0;
    *(v26 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
  }

  return Proto_Gnss_Emergency_ShapeInfo.pointAltitudeUncertainEllipsoid.modify;
}

void Proto_Gnss_Emergency_ShapeInfo.pointAltitudeUncertainEllipsoid.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v15, v19, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v14, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v14, v19, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gnss_Emergency_ShapeInfo.hasPointAltitudeUncertainEllipsoid.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ShapeInfo.clearPointAltitudeUncertainEllipsoid()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v15, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_ShapeInfo.ellipsoidArc.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v19 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  v9 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
  }

  UnknownStorage.init()();
  v11 = v9[5];
  v12 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = a1 + v9[6];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1 + v9[7];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a1 + v9[8];
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a1 + v9[9];
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = a1 + v9[10];
  *v17 = 0;
  *(v17 + 4) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_ShapeInfo.ellipsoidArc.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v7, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
  v16 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v17, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_ShapeInfo.ellipsoidArc.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v9[5];
    v20 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    v21 = v14 + v9[6];
    *v21 = 0;
    *(v21 + 4) = 1;
    v22 = v14 + v9[7];
    *v22 = 0;
    *(v22 + 4) = 1;
    v23 = v14 + v9[8];
    *v23 = 0;
    *(v23 + 4) = 1;
    v24 = v14 + v9[9];
    *v24 = 0;
    *(v24 + 4) = 1;
    v25 = v14 + v9[10];
    *v25 = 0;
    *(v25 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
  }

  return Proto_Gnss_Emergency_ShapeInfo.ellipsoidArc.modify;
}

void Proto_Gnss_Emergency_ShapeInfo.ellipsoidArc.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v15, v19, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v14, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v14, v19, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gnss_Emergency_ShapeInfo.hasEllipsoidArc.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ShapeInfo.clearEllipsoidArc()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v15, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_ShapeInfo.ellipsoidPoint.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v9 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  UnknownStorage.init()();
  v11 = a1 + *(v9 + 20);
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + *(v9 + 24);
  *v12 = 0;
  *(v12 + 4) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_ShapeInfo.ellipsoidPoint.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v7, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  v16 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v17, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_ShapeInfo.ellipsoidPoint.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + *(v9 + 20);
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v14 + *(v9 + 24);
    *v20 = 0;
    *(v20 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  return Proto_Gnss_Emergency_ShapeInfo.ellipsoidPoint.modify;
}

void Proto_Gnss_Emergency_ShapeInfo.ellipsoidPoint.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v15, v19, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v14, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v14, v19, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gnss_Emergency_ShapeInfo.hasEllipsoidPoint.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ShapeInfo.clearEllipsoidPoint()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v15, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_ShapeInfo.pointAltitude.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  v9 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
  }

  UnknownStorage.init()();
  v11 = *(v9 + 20);
  v12 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = a1 + *(v9 + 24);
  *v13 = 0;
  *(v13 + 4) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_ShapeInfo.pointAltitude.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v7, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
  v16 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v17, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_ShapeInfo.pointAltitude.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = *(v9 + 20);
    v20 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    v21 = v14 + *(v9 + 24);
    *v21 = 0;
    *(v21 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
  }

  return Proto_Gnss_Emergency_ShapeInfo.pointAltitude.modify;
}

void Proto_Gnss_Emergency_ShapeInfo.pointAltitude.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v15, v19, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v14, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v14, v19, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gnss_Emergency_ShapeInfo.hasPointAltitude.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ShapeInfo.clearPointAltitude()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v15, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_ShapeInfo.polygon.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  v9 = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_Polygon);
  }

  *a1 = MEMORY[0x277D84F90];
  v11 = a1 + *(v9 + 20);
  UnknownStorage.init()();
  v12 = a1 + *(v9 + 24);
  *v12 = 0;
  v12[4] = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_ShapeInfo.polygon.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v7, type metadata accessor for Proto_Gnss_Emergency_Polygon);
  v16 = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v17, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_ShapeInfo.polygon.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    v19 = v14 + *(v9 + 20);
    UnknownStorage.init()();
    v20 = v14 + *(v9 + 24);
    *v20 = 0;
    v20[4] = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_Polygon);
  }

  return Proto_Gnss_Emergency_ShapeInfo.polygon.modify;
}

void Proto_Gnss_Emergency_ShapeInfo.polygon.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_Polygon);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v15, v19, type metadata accessor for Proto_Gnss_Emergency_Polygon);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v14, type metadata accessor for Proto_Gnss_Emergency_Polygon);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v14, v19, type metadata accessor for Proto_Gnss_Emergency_Polygon);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gnss_Emergency_ShapeInfo.hasPolygon.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ShapeInfo.clearPolygon()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v15, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  swift_endAccess();
}

void (*Proto_Gnss_Emergency_ShapeInfo.noLocation.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__noLocation;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_ShapeInfo.noLocation.modify;
}

uint64_t Proto_Gnss_Emergency_LocEstimate.shapeType.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0) + 20));
  if (v1 == 9)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_LocEstimate.shapeType.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_LocEstimate.shapeType.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 9)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_LocEstimate.shape.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMd, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 24), v6, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMd, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v10) = static Proto_Gnss_Emergency_ShapeInfo._StorageClass.defaultInstance;
  v11 = v9(v6, 1, v8);

  if (v11 != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMd, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_LocEstimate.shape.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMd, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
  v4 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_LocEstimate.shape.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMd, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMd, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = *(v9 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v14 + v17) = static Proto_Gnss_Emergency_ShapeInfo._StorageClass.defaultInstance;
    v18 = v16(v8, 1, v9);

    if (v18 != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMd, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
  }

  return Proto_Gnss_Emergency_LocEstimate.shape.modify;
}

uint64_t Proto_Gnss_Emergency_HorizontalVelocity.bearing.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_HorizontalVelocity.bearing.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_HorizontalVelocity.clearBearing()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_HorizontalVelocity.horizontalSpeed.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_HorizontalVelocity.horizontalSpeed.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_HorizontalVelocity.clearHorizontalSpeed()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_HorizWithVertVelocity.bearing.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_HorizWithVertVelocity.bearing.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_HorizWithVertVelocity.clearBearing()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_HorizWithVertVelocity.horizontalSpeed.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_HorizWithVertVelocity.horizontalSpeed.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_HorizWithVertVelocity.clearHorizontalSpeed()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_HorizWithVertVelocity.verticalSpeed.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_HorizWithVertVelocity.verticalSpeed.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_HorizWithVertVelocity.clearVerticalSpeed()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_HorizWithVertVelocity.verticalSpeedDirection.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_HorizWithVertVelocity.verticalSpeedDirection.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0) + 32);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_HorizWithVertVelocity.clearVerticalSpeedDirection()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_HorizWithUncertaintyVelocity.bearing.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_HorizWithUncertaintyVelocity.bearing.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_HorizWithUncertaintyVelocity.clearBearing()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_HorizWithUncertaintyVelocity.horizontalSpeed.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_HorizWithUncertaintyVelocity.horizontalSpeed.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_HorizWithUncertaintyVelocity.clearHorizontalSpeed()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_HorizWithUncertaintyVelocity.uncertaintySpeed.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_HorizWithUncertaintyVelocity.uncertaintySpeed.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_HorizWithUncertaintyVelocity.clearUncertaintySpeed()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.bearing.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.bearing.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.clearBearing()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.horizontalSpeed.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.horizontalSpeed.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.clearHorizontalSpeed()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.verticalSpeed.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.verticalSpeed.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.clearVerticalSpeed()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.verticalSpeedDirection.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.verticalSpeedDirection.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 32);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.clearVerticalSpeedDirection()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.horizUncertaintySpeed.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.horizUncertaintySpeed.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 36);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.clearHorizUncertaintySpeed()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.vertUncertaintySpeed.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.vertUncertaintySpeed.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 40);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.clearVertUncertaintySpeed()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

int *Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1 + result[8];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1 + result[9];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1 + result[10];
  *v8 = 0;
  *(v8 + 4) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_VelocityInfo.horizontal.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 20), v6, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + *(v8 + 24);
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_VelocityInfo.horizontal.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0) + 20);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);
  v4 = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_VelocityInfo.horizontal.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + *(v9 + 20);
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + *(v9 + 24);
    *v18 = 0;
    *(v18 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);
  }

  return Proto_Gnss_Emergency_VelocityInfo.horizontal.modify;
}

uint64_t Proto_Gnss_Emergency_VelocityInfo.horizWithVert.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 24), v6, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v8[8];
  *v13 = 0;
  *(v13 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_VelocityInfo.horizWithVert.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);
  v4 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_VelocityInfo.horizWithVert.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v14 + v9[8];
    *v20 = 0;
    *(v20 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);
  }

  return Proto_Gnss_Emergency_VelocityInfo.horizWithVert.modify;
}

uint64_t Proto_Gnss_Emergency_VelocityInfo.horizWithUncertainty.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 28), v6, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_VelocityInfo.horizWithUncertainty.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0) + 28);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);
  v4 = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_VelocityInfo.horizWithUncertainty.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);
  }

  return Proto_Gnss_Emergency_VelocityInfo.horizWithUncertainty.modify;
}

uint64_t Proto_Gnss_Emergency_VelocityInfo.horizWithVertUncertainty.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMd, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 32), v6, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMd, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v8[8];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1 + v8[9];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a1 + v8[10];
  *v15 = 0;
  *(v15 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMd, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_VelocityInfo.horizWithVertUncertainty.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0) + 32);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMd, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);
  v4 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_VelocityInfo.horizWithVertUncertainty.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMd, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMd, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v14 + v9[8];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v14 + v9[9];
    *v21 = 0;
    *(v21 + 4) = 1;
    v22 = v14 + v9[10];
    *v22 = 0;
    *(v22 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMd, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);
  }

  return Proto_Gnss_Emergency_VelocityInfo.horizWithVertUncertainty.modify;
}

uint64_t Proto_Gnss_Emergency_VelocityInfo.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  v3 = v2[5];
  v4 = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = v2[7];
  v8 = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  v9 = v2[8];
  v10 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a1 + v9, 1, 1, v10);
}

uint64_t Proto_Gnss_Emergency_VelocityEstimate.velocityType.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0) + 20));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_VelocityEstimate.velocityType.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_VelocityEstimate.velocityType.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_VelocityEstimate.velocity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 24), v6, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);
  }

  UnknownStorage.init()();
  v10 = v8[5];
  v11 = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = v8[6];
  v13 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  v14 = v8[7];
  v15 = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
  v16 = v8[8];
  v17 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  (*(*(v17 - 8) + 56))(a1 + v16, 1, 1, v17);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_VelocityEstimate.velocity.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);
  v4 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_VelocityEstimate.velocity.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v9[5];
    v18 = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    v19 = v9[6];
    v20 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    v21 = v9[7];
    v22 = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
    (*(*(v22 - 8) + 56))(v14 + v21, 1, 1, v22);
    v23 = v9[8];
    v24 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
    (*(*(v24 - 8) + 56))(v14 + v23, 1, 1, v24);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);
  }

  return Proto_Gnss_Emergency_VelocityEstimate.velocity.modify;
}

void (*Proto_Gnss_Emergency_PositionReport.result.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (v7 == 9)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return Proto_Gnss_Emergency_PositionReport.result.modify;
}

void (*Proto_Gnss_Emergency_PositionReport.responseType.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 20);
  if (*(v6 + 24))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_PositionReport.responseType.modify;
}

uint64_t Proto_Gnss_Emergency_PositionReport.sessionInfo.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v7, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  v16 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v17, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_PositionReport.sessionInfo.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + v9[5]) = 6;
    *(v14 + v9[6]) = 7;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  }

  return Proto_Gnss_Emergency_PositionReport.sessionInfo.modify;
}

void Proto_Gnss_Emergency_PositionReport.sessionInfo.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v15, v19, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v14, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v14, v19, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gnss_Emergency_PositionReport.hasSessionInfo.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_PositionReport.clearSessionInfo()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v15, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_PositionReport.locationInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
  v9 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
  }

  UnknownStorage.init()();
  v11 = a1 + v9[5];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v9[6];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v9[7];
  *v13 = 0;
  *(v13 + 4) = 1;
  *(a1 + v9[8]) = 4;
  v14 = a1 + v9[9];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = v9[10];
  v16 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  (*(*(v16 - 8) + 56))(a1 + v15, 1, 1, v16);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_PositionReport.locationInfo.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v7, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
  v16 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v17, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_PositionReport.locationInfo.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v14 + v9[6];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v14 + v9[7];
    *v21 = 0;
    *(v21 + 4) = 1;
    *(v14 + v9[8]) = 4;
    v22 = v14 + v9[9];
    *v22 = 0;
    *(v22 + 4) = 1;
    v23 = v9[10];
    v24 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
    (*(*(v24 - 8) + 56))(v14 + v23, 1, 1, v24);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
  }

  return Proto_Gnss_Emergency_PositionReport.locationInfo.modify;
}

void Proto_Gnss_Emergency_PositionReport.locationInfo.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v15, v19, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v14, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v14, v19, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gnss_Emergency_PositionReport.hasLocationInfo.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_PositionReport.clearLocationInfo()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v15, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_PositionReport.ganssLocationInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
  }

  UnknownStorage.init()();
  *(a1 + v9[5]) = 6;
  v11 = a1 + v9[6];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v9[7];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v9[8];
  *v13 = 0;
  *(v13 + 4) = 1;
  *(a1 + v9[9]) = 4;
  v14 = a1 + v9[10];
  *v14 = 0;
  *(v14 + 4) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_PositionReport.ganssLocationInfo.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v7, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
  v16 = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v17, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_PositionReport.ganssLocationInfo.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + v9[5]) = 6;
    v19 = v14 + v9[6];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v14 + v9[7];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v14 + v9[8];
    *v21 = 0;
    *(v21 + 4) = 1;
    *(v14 + v9[9]) = 4;
    v22 = v14 + v9[10];
    *v22 = 0;
    *(v22 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
  }

  return Proto_Gnss_Emergency_PositionReport.ganssLocationInfo.modify;
}

void Proto_Gnss_Emergency_PositionReport.ganssLocationInfo.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v15, v19, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v14, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v14, v19, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gnss_Emergency_PositionReport.hasGanssLocationInfo.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_PositionReport.clearGanssLocationInfo()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v15, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_PositionReport.locEstimate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
  v9 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
  }

  UnknownStorage.init()();
  *(a1 + *(v9 + 20)) = 9;
  v11 = *(v9 + 24);
  v12 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_PositionReport.locEstimate.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v7, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
  v16 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v17, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_PositionReport.locEstimate.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + *(v9 + 20)) = 9;
    v19 = *(v9 + 24);
    v20 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
  }

  return Proto_Gnss_Emergency_PositionReport.locEstimate.modify;
}

void Proto_Gnss_Emergency_PositionReport.locEstimate.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v15, v19, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v14, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v14, v19, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gnss_Emergency_PositionReport.hasLocEstimate.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_PositionReport.clearLocEstimate()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v15, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_PositionReport.velocityEstimate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
  v9 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
  }

  UnknownStorage.init()();
  *(a1 + *(v9 + 20)) = 6;
  v11 = *(v9 + 24);
  v12 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_PositionReport.velocityEstimate.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v7, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
  v16 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v17, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_PositionReport.velocityEstimate.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + *(v9 + 20)) = 6;
    v19 = *(v9 + 24);
    v20 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
  }

  return Proto_Gnss_Emergency_PositionReport.velocityEstimate.modify;
}

void Proto_Gnss_Emergency_PositionReport.velocityEstimate.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v15, v19, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v14, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v14, v19, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gnss_Emergency_PositionReport.hasVelocityEstimate.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_PositionReport.clearVelocityEstimate()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v15, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_ShapeInfo.noLocation.getter(uint64_t (*a1)(void), void *a2)
{
  v3 = (*(v2 + *(a1(0) + 20)) + *a2);
  swift_beginAccess();
  if (v3[4])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

uint64_t Proto_Gnss_Emergency_ShapeInfo.noLocation.setter(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t), void *a5)
{
  v9 = v5;
  v11 = *(a2(0) + 20);
  v12 = *(v5 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v5 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = a3(0);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    v18 = swift_allocObject();
    a4(v14);

    *(v9 + v11) = v18;
    v14 = v18;
  }

  v19 = v14 + *a5;
  result = swift_beginAccess();
  *v19 = a1;
  *(v19 + 4) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_PositionReport.technologySource.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__technologySource;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_PositionReport.technologySource.modify;
}

void Proto_Gnss_Emergency_ShapeInfo.noLocation.modify(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t), void *a5)
{
  v8 = *a1;
  v9 = *(*a1 + 80);
  v10 = *(*a1 + 84);
  v11 = *(*a1 + 72);
  v12 = *(v11 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v11 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = *(v8 + 84);
    v16 = *(v8 + 72);
    v17 = a3(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    v20 = swift_allocObject();
    a4(v14);

    *(v16 + v15) = v20;
    v14 = v20;
  }

  v21 = v14 + *a5;
  swift_beginAccess();
  *v21 = v9;
  *(v21 + 4) = 0;

  free(v8);
}

BOOL Proto_Gnss_Emergency_ShapeInfo.hasNoLocation.getter(uint64_t (*a1)(void), void *a2)
{
  v3 = *(v2 + *(a1(0) + 20)) + *a2;
  swift_beginAccess();
  return (*(v3 + 4) & 1) == 0;
}

uint64_t Proto_Gnss_Emergency_ShapeInfo.clearNoLocation()(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t), void *a4)
{
  v8 = v4;
  v9 = *(a1(0) + 20);
  v10 = *(v4 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v4 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = a2(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    v16 = swift_allocObject();
    a3(v12);

    *(v8 + v9) = v16;
    v12 = v16;
  }

  v17 = v12 + *a4;
  result = swift_beginAccess();
  *v17 = 0;
  *(v17 + 4) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurementElement.doppler.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssMeasurementElement.doppler.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssMeasurementElement.clearDoppler()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurementElement.satelliteID.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssMeasurementElement.satelliteID.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssMeasurementElement.clearSatelliteID()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurementElement.cnRatio.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssMeasurementElement.cnRatio.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssMeasurementElement.clearCnRatio()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurementElement.pseudoRangeRmsError.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssMeasurementElement.pseudoRangeRmsError.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 32);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssMeasurementElement.clearPseudoRangeRmsError()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurementElement.multiPath.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 36));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_GanssMeasurementElement.multiPath.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssMeasurementElement.multiPath.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 36);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurementElement.codePhase.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssMeasurementElement.codePhase.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 40);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssMeasurementElement.clearCodePhase()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurementElement.integerCodePhase.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssMeasurementElement.integerCodePhase.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 44);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssMeasurementElement.clearIntegerCodePhase()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 44);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurementElement.carrierQualityInd.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssMeasurementElement.carrierQualityInd.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 48);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssMeasurementElement.clearCarrierQualityInd()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 48);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurementElement.adr.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssMeasurementElement.adr.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 52);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssMeasurementElement.clearAdr()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 52);
  *v1 = 0;
  *(v1 + 4) = 1;
}

int *Proto_Gnss_Emergency_GanssMeasurementElement.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1 + result[8];
  *v6 = 0;
  *(v6 + 4) = 1;
  *(a1 + result[9]) = 6;
  v7 = a1 + result[10];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1 + result[11];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a1 + result[12];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + result[13];
  *v10 = 0;
  *(v10 + 4) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_GanssSignalMeasurementInfo.signalID.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssSignalMeasurementInfo.signalID.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssSignalMeasurementInfo.clearSignalID()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssSignalMeasurementInfo.codePhaseAmbiguity.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssSignalMeasurementInfo.codePhaseAmbiguity.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssSignalMeasurementInfo.clearCodePhaseAmbiguity()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssSignalMeasurementInfo.measurementCount.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssSignalMeasurementInfo.measurementCount.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0) + 32);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssSignalMeasurementInfo.clearMeasurementCount()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssSignalMeasurementInfo.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
  v3 = a1 + v2[5];
  result = UnknownStorage.init()();
  v5 = a1 + v2[6];
  *v5 = 0;
  v5[4] = 1;
  v6 = a1 + v2[7];
  *v6 = 0;
  v6[4] = 1;
  v7 = a1 + v2[8];
  *v7 = 0;
  v7[4] = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss.ganssID.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0) + 20));
  if (v1 == 7)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss.ganssID.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss.ganssID.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 7)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Request.type.modify;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss.signalMeasurementInfo.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMd, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 24), v6, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMd, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);
  }

  *a1 = MEMORY[0x277D84F90];
  v10 = a1 + v8[5];
  UnknownStorage.init()();
  v11 = a1 + v8[6];
  *v11 = 0;
  v11[4] = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  v12[4] = 1;
  v13 = a1 + v8[8];
  *v13 = 0;
  v13[4] = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMd, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss.signalMeasurementInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMd, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss.signalMeasurementInfo.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMd, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMd, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    v17 = v14 + v9[5];
    UnknownStorage.init()();
    v18 = v14 + v9[6];
    *v18 = 0;
    v18[4] = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    v19[4] = 1;
    v20 = v14 + v9[8];
    *v20 = 0;
    v20[4] = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMd, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);
  }

  return Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss.signalMeasurementInfo.modify;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurements.timeID.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 20));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_GanssMeasurements.timeID.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssMeasurements.timeID.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurements.ganssTod.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssMeasurements.ganssTod.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssMeasurements.clearGanssTod()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurements.ganssTodFrac.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssMeasurements.ganssTodFrac.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssMeasurements.clearGanssTodFrac()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurements.todDelta.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssMeasurements.todDelta.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 32);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssMeasurements.clearTodDelta()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurements.ganssTodUncertainity.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssMeasurements.ganssTodUncertainity.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 36);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssMeasurements.clearGanssTodUncertainity()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurements.measuredTimeParams.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMd, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 40), v6, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMd, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams);
  }

  UnknownStorage.init()();
  *(a1 + *(v8 + 20)) = 6;
  v10 = *(v8 + 24);
  v11 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMd, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurements.measuredTimeParams.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 40);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMd, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams);
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_GanssMeasurements.measuredTimeParams.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMd, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 40);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMd, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + *(v9 + 20)) = 6;
    v17 = *(v9 + 24);
    v18 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMd, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams);
  }

  return Proto_Gnss_Emergency_GanssMeasurements.measuredTimeParams.modify;
}

BOOL Proto_Gnss_Emergency_LocationInfo.hasGpsTod.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + *(v13 + 40), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  outlined destroy of Any?(v12, a1, a2);
  return v15;
}

uint64_t Proto_Gnss_Emergency_LocationInfo.clearGpsTod()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 40);
  outlined destroy of Any?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Proto_Gnss_Emergency_GanssMeasurements.ganssMeasurementsCount.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GanssMeasurements.ganssMeasurementsCount.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 44);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GanssMeasurements.clearGanssMeasurementsCount()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 44);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurements.ganssMeasurement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMd, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 48), v6, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMd, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss);
  }

  UnknownStorage.init()();
  *(a1 + *(v8 + 20)) = 7;
  v10 = *(v8 + 24);
  v11 = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMd, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurements.ganssMeasurement.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 48);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMd, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss);
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_GanssMeasurements.ganssMeasurement.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMd, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 48);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMd, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + *(v9 + 20)) = 7;
    v17 = *(v9 + 24);
    v18 = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMd, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss);
  }

  return Proto_Gnss_Emergency_GanssMeasurements.ganssMeasurement.modify;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurements.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  *(a1 + v2[5]) = 6;
  v3 = a1 + v2[6];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + v2[7];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + v2[8];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1 + v2[9];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = v2[10];
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
  (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  v9 = a1 + v2[11];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = v2[12];
  v11 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a1 + v10, 1, 1, v11);
}

uint64_t Proto_Gnss_Emergency_GpsMeasurementElement.doppler.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsMeasurementElement.doppler.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsMeasurementElement.clearDoppler()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsMeasurementElement.wholeChips.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsMeasurementElement.wholeChips.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsMeasurementElement.clearWholeChips()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsMeasurementElement.fracChips.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsMeasurementElement.fracChips.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsMeasurementElement.clearFracChips()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsMeasurementElement.satelliteID.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsMeasurementElement.satelliteID.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 32);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsMeasurementElement.clearSatelliteID()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsMeasurementElement.cnRatio.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsMeasurementElement.cnRatio.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 36);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsMeasurementElement.clearCnRatio()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsMeasurementElement.pseudoRangeRmsError.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsMeasurementElement.pseudoRangeRmsError.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 40);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsMeasurementElement.clearPseudoRangeRmsError()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsMeasurementElement.multiPath.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 44));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_GpsMeasurementElement.multiPath.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsMeasurementElement.multiPath.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 44);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_GpsMeasurementElement.codePhase.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsMeasurementElement.codePhase.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 48);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsMeasurementElement.clearCodePhase()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 48);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsMeasurementElement.integerCodePhase.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsMeasurementElement.integerCodePhase.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 52);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsMeasurementElement.clearIntegerCodePhase()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 52);
  *v1 = 0;
  *(v1 + 4) = 1;
}

int *Proto_Gnss_Emergency_GpsMeasurementElement.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1 + result[8];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1 + result[9];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1 + result[10];
  *v8 = 0;
  *(v8 + 4) = 1;
  *(a1 + result[11]) = 6;
  v9 = a1 + result[12];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + result[13];
  *v10 = 0;
  *(v10 + 4) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_SessionStatus.sessionID.setter(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v7 = v4;
  v9 = *(a2(0) + 20);
  v10 = *(v4 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v4 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = a3(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    v16 = swift_allocObject();
    v17 = v12;
    v12 = v16;
    a4(v17);
    *(v7 + v9) = v16;
  }

  result = swift_beginAccess();
  *(v12 + 16) = a1;
  *(v12 + 20) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsMeasurements.gpsTow.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (*(v6 + 20))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsMeasurements.gpsTow.modify;
}

void Proto_Gnss_Emergency_SessionStatus.sessionID.modify(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v6 = *a1;
  v7 = *(*a1 + 80);
  v8 = *(*a1 + 84);
  v9 = *(*a1 + 72);
  v10 = *(v9 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v9 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = *(v6 + 84);
    v14 = *(v6 + 72);
    v15 = a3(0);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    v18 = swift_allocObject();
    v19 = v12;
    v12 = v18;
    a4(v19);
    *(v14 + v13) = v18;
  }

  swift_beginAccess();
  *(v12 + 16) = v7;
  *(v12 + 20) = 0;

  free(v6);
}

uint64_t Proto_Gnss_Emergency_SessionStatus.clearSessionID()(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t))
{
  v6 = v3;
  v7 = *(a1(0) + 20);
  v8 = *(v3 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = a2(0);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    v14 = swift_allocObject();
    v15 = v10;
    v10 = v14;
    a3(v15);
    *(v6 + v7) = v14;
  }

  result = swift_beginAccess();
  *(v10 + 16) = 0;
  *(v10 + 20) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.responseTime.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  if (*(v2 + 28))
  {
    return 0;
  }

  else
  {
    return *(v2 + 24);
  }
}

uint64_t Proto_Gnss_Emergency_GpsMeasurements.gpsWeek.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 24) = a1;
  *(v7 + 28) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsMeasurements.gpsWeek.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  if (*(v6 + 28))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsMeasurements.gpsWeek.modify;
}

void Proto_Gnss_Emergency_GpsMeasurements.gpsWeek.modify(uint64_t *a1)
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
    v10 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 24) = v2;
  *(v7 + 28) = 0;

  free(v1);
}

BOOL Proto_Gnss_Emergency_PositionRequest.hasResponseTime.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 28) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsMeasurements.clearGpsWeek()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v5);
    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  *(v5 + 24) = 0;
  *(v5 + 28) = 1;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.horizontalAccuracy.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  if (*(v2 + 36))
  {
    return 0;
  }

  else
  {
    return *(v2 + 32);
  }
}

uint64_t Proto_Gnss_Emergency_GpsMeasurements.gpsTimeUncertainty.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 32) = a1;
  *(v7 + 36) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsMeasurements.gpsTimeUncertainty.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 32);
  if (*(v6 + 36))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsMeasurements.gpsTimeUncertainty.modify;
}