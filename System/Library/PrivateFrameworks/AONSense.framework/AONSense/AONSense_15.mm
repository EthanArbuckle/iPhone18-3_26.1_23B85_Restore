void (*Proto_Gnss_Emergency_SummaryReport.heloEnabled.modify(uint64_t *a1))(uint64_t *a1)
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
  *(v4 + 84) = *(v6 + 163) & 1;
  return Proto_Gnss_Emergency_SummaryReport.heloEnabled.modify;
}

void Proto_Gnss_Emergency_SummaryReport.heloEnabled.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
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
  *(v7 + 163) = v4;

  free(v1);
}

BOOL Proto_Gnss_Emergency_SummaryReport.hasHeloEnabled.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20));
  swift_beginAccess();
  return *(v1 + 163) != 2;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SummaryReport.clearHeloEnabled()()
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
  *(v5 + 163) = 2;
}

uint64_t Proto_Gnss_Emergency_SummaryReport.heloInjected.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20));
  swift_beginAccess();
  return *(v1 + 164) & 1;
}

uint64_t Proto_Gnss_Emergency_SummaryReport.heloInjected.setter(char a1)
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
  *(v7 + 164) = a1 & 1;
  return result;
}

void (*Proto_Gnss_Emergency_SummaryReport.heloInjected.modify(uint64_t *a1))(uint64_t *a1)
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
  *(v4 + 84) = *(v6 + 164) & 1;
  return Proto_Gnss_Emergency_SummaryReport.heloInjected.modify;
}

void Proto_Gnss_Emergency_SummaryReport.heloInjected.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
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
  *(v7 + 164) = v4;

  free(v1);
}

BOOL Proto_Gnss_Emergency_SummaryReport.hasHeloInjected.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20));
  swift_beginAccess();
  return *(v1 + 164) != 2;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SummaryReport.clearHeloInjected()()
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
  *(v5 + 164) = 2;
}

uint64_t Proto_Gnss_Emergency_SummaryReport.assistanceUsed.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20));
  swift_beginAccess();
  if (*(v1 + 176))
  {
    return 0;
  }

  else
  {
    return *(v1 + 168);
  }
}

uint64_t Proto_Gnss_Emergency_SummaryReport.assistanceUsed.setter(uint64_t a1)
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
  *(v7 + 168) = a1;
  *(v7 + 176) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_SummaryReport.assistanceUsed.modify(uint64_t *a1))(uint64_t *a1)
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
  v7 = *(v6 + 168);
  if (*(v6 + 176))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return Proto_Gnss_Emergency_SummaryReport.assistanceUsed.modify;
}

void Proto_Gnss_Emergency_SummaryReport.assistanceUsed.modify(uint64_t *a1)
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
  *(v7 + 168) = v2;
  *(v7 + 176) = 0;

  free(v1);
}

BOOL Proto_Gnss_Emergency_SummaryReport.hasAssistanceUsed.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20));
  swift_beginAccess();
  return (*(v1 + 176) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SummaryReport.clearAssistanceUsed()()
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
  *(v5 + 168) = 0;
  *(v5 + 176) = 1;
}

uint64_t Proto_Gnss_Emergency_SummaryReport.sessionID.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20));
  swift_beginAccess();
  if (*(v1 + 184))
  {
    return 0;
  }

  else
  {
    return *(v1 + 180);
  }
}

uint64_t Proto_Gnss_Emergency_SummaryReport.sessionID.setter(int a1)
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
  *(v7 + 180) = a1;
  *(v7 + 184) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_SummaryReport.sessionID.modify(uint64_t *a1))(uint64_t *a1)
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
  v7 = *(v6 + 180);
  if (*(v6 + 184))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_SummaryReport.sessionID.modify;
}

void Proto_Gnss_Emergency_SummaryReport.sessionID.modify(uint64_t *a1)
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
  *(v7 + 180) = v2;
  *(v7 + 184) = 0;

  free(v1);
}

BOOL Proto_Gnss_Emergency_SummaryReport.hasSessionID.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20));
  swift_beginAccess();
  return (*(v1 + 184) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SummaryReport.clearSessionID()()
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
  *(v5 + 180) = 0;
  *(v5 + 184) = 1;
}

uint64_t Proto_Gnss_Emergency_SuplConfig.suplPort.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_SuplConfig.suplPort.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_SuplConfig.clearSuplPort()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t (*Proto_Gnss_Emergency_SuplConfig.suplServer.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return CLP_LogEntry_PrivateData_XtraFileAvailable.where.modify;
}

uint64_t Proto_Gnss_Emergency_SuplConfig.enableMsa.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_SuplConfig.enableMsa.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_SuplConfig.enableLppRel13WlanMeas.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_SuplConfig.enableLppRel13WlanMeas.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_SuplConfig.supportsLppRel13WlanMeasTypeRssi.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_SuplConfig.supportsLppRel13WlanMeasTypeRssi.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_SuplConfig.supportsLppRel13LocationSource.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_SuplConfig.supportsLppRel13LocationSource.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0) + 40);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

int *Proto_Gnss_Emergency_SuplConfig.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = (a1 + result[6]);
  *v4 = 0;
  v4[1] = 0;
  *(a1 + result[7]) = 2;
  *(a1 + result[8]) = 2;
  *(a1 + result[9]) = 2;
  *(a1 + result[10]) = 2;
  return result;
}

uint64_t Proto_Gnss_Emergency_LteCellInfo.isServingCell.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_LteCellInfo.isServingCell.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_LteCellInfo.mcc.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_LteCellInfo.mcc.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_LteCellInfo.clearMcc()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_LteCellInfo.mnc.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_LteCellInfo.mnc.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_LteCellInfo.clearMnc()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_LteCellInfo.tac.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_LteCellInfo.tac.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0) + 32);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_LteCellInfo.clearTac()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_LteCellInfo.cellid.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_LteCellInfo.cellid.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0) + 36);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_LteCellInfo.clearCellid()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_LteCellInfo.pci.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_LteCellInfo.pci.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0) + 40);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_LteCellInfo.clearPci()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_LteCellInfo.rsrp.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_LteCellInfo.rsrp.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0) + 44);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_LteCellInfo.clearRsrp()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0) + 44);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_LteCellInfo.rsrq.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_LteCellInfo.rsrq.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0) + 48);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_LteCellInfo.clearRsrq()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0) + 48);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_LteCellInfo.ta.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_LteCellInfo.ta.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0) + 52);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_LteCellInfo.clearTa()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0) + 52);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_LteCellInfo.dlearfcn.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0);
  v4 = v1 + *(result + 56);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_LteCellInfo.dlearfcn.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0) + 56);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_LteCellInfo.clearDlearfcn()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0) + 56);
  *v1 = 0;
  *(v1 + 4) = 1;
}

int *Proto_Gnss_Emergency_LteCellInfo.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0);
  *(a1 + result[5]) = 2;
  v3 = a1 + result[6];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + result[7];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + result[8];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1 + result[9];
  *v6 = 0;
  *(v6 + 4) = 1;
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
  v11 = a1 + result[14];
  *v11 = 0;
  *(v11 + 4) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_GsmCellInfo.isServingCell.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GsmCellInfo.isServingCell.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_LteCellInfo.mcc.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t Proto_Gnss_Emergency_GsmCellInfo.mcc.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GsmCellInfo.mcc.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GsmCellInfo.clearMcc()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_LteCellInfo.mnc.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t Proto_Gnss_Emergency_GsmCellInfo.mnc.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GsmCellInfo.mnc.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GsmCellInfo.clearMnc()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_LteCellInfo.tac.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t Proto_Gnss_Emergency_GsmCellInfo.lac.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GsmCellInfo.lac.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo(0) + 32);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GsmCellInfo.clearLac()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_LteCellInfo.cellid.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 36));
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t Proto_Gnss_Emergency_GsmCellInfo.cellid.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GsmCellInfo.cellid.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo(0) + 36);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GsmCellInfo.clearCellid()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_WcdmaCellInfo.isServingCell.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_WcdmaCellInfo.isServingCell.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_WcdmaCellInfo.mcc.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_WcdmaCellInfo.mcc.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_WcdmaCellInfo.clearMcc()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_WcdmaCellInfo.mnc.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_WcdmaCellInfo.mnc.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_WcdmaCellInfo.clearMnc()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_WcdmaCellInfo.lac.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_WcdmaCellInfo.lac.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0) + 32);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_WcdmaCellInfo.clearLac()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_WcdmaCellInfo.cellid.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_WcdmaCellInfo.cellid.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0) + 36);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_WcdmaCellInfo.clearCellid()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_LteCellInfo.pci.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 40));
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t Proto_Gnss_Emergency_WcdmaCellInfo.psc.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_WcdmaCellInfo.psc.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0) + 40);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_WcdmaCellInfo.clearPsc()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_WcdmaCellInfo.freqMode.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0) + 44));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_WcdmaCellInfo.freqMode.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_WcdmaCellInfo.freqMode.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0) + 44);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_LteCellInfo.rsrq.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 48));
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t Proto_Gnss_Emergency_WcdmaCellInfo.dluarfcn.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_WcdmaCellInfo.dluarfcn.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0) + 48);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_WcdmaCellInfo.clearDluarfcn()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0) + 48);
  *v1 = 0;
  *(v1 + 4) = 1;
}

int *Proto_Gnss_Emergency_WcdmaCellInfo.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0);
  *(a1 + result[5]) = 2;
  v3 = a1 + result[6];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + result[7];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + result[8];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1 + result[9];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1 + result[10];
  *v7 = 0;
  *(v7 + 4) = 1;
  *(a1 + result[11]) = 4;
  v8 = a1 + result[12];
  *v8 = 0;
  *(v8 + 4) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_LocationId.cellType.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_LocationId(0) + 32));
  if (v1 == 7)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_LocationId.cellType.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_LocationId(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_LocationId.cellType.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LocationId(0) + 32);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 7)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_LocationId.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LocationId(0) + 28);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Proto_Gnss_Emergency_LocationId.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LocationId(0) + 28);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Proto_Gnss_Emergency_LocationId.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  a1[2] = v2;
  v3 = type metadata accessor for Proto_Gnss_Emergency_LocationId(0);
  v4 = a1 + *(v3 + 28);
  result = UnknownStorage.init()();
  *(a1 + *(v3 + 32)) = 7;
  return result;
}

uint64_t Proto_Gnss_Emergency_SuplConfig.suplPort.getter(uint64_t (*a1)(void))
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

uint64_t Proto_Gnss_Emergency_WlanMeasurementRequest.responseTimeSeconds.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_WlanMeasurementRequest.responseTimeSeconds.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_WlanMeasurementRequest.clearResponseTimeSeconds()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_WlanMeasurementRequest.isRssiRequested.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_WlanMeasurementRequest.isRssiRequested.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_WlanMeasurementRequest.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest(0);
  v3 = a1 + *(result + 20);
  *v3 = 0;
  *(v3 + 4) = 1;
  *(a1 + *(result + 24)) = 2;
  return result;
}

uint64_t Proto_Gnss_Emergency_WlanMeasurementElement.bssid.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement(0) + 20));
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

uint64_t Proto_Gnss_Emergency_WlanMeasurementElement.bssid.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement(0) + 20);
  result = outlined consume of Data?(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_WlanMeasurementElement.bssid.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement(0) + 20);
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

uint64_t Proto_Gnss_Emergency_WlanMeasurementElement.bssid.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) + *(a1 + 24);
  v4 = *a1;
  v5 = *v3;
  v6 = *(v3 + 8);
  if (a2)
  {
    outlined copy of Data._Representation(*a1, v2);
    outlined consume of Data?(v5, v6);
    *v3 = v4;
    *(v3 + 8) = v2;

    return outlined consume of Data._Representation(v4, v2);
  }

  else
  {
    result = outlined consume of Data?(*v3, *(v3 + 8));
    *v3 = v4;
    *(v3 + 8) = v2;
  }

  return result;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_WlanMeasurementElement.clearBssid()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement(0) + 20);
  outlined consume of Data?(*v1, *(v1 + 8));
  *v1 = xmmword_23D1B1460;
}

uint64_t Proto_Gnss_Emergency_WlanMeasurementElement.isServingFlagPresent.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_WlanMeasurementElement.isServingFlagPresent.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_WlanMeasurementElement.servingFlag.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_WlanMeasurementElement.servingFlag.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_WlanMeasurementElement.apChannelFrequencyNumber.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_WlanMeasurementElement.apChannelFrequencyNumber.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement(0) + 32);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_WlanMeasurementElement.clearApChannelFrequencyNumber()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_WlanMeasurementElement.rssiDbm.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_WlanMeasurementElement.rssiDbm.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement(0) + 36);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_WlanMeasurementElement.clearRssiDbm()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

double Proto_Gnss_Emergency_WlanMeasurementElement.init()@<D0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement(0);
  result = 0.0;
  *(a1 + v2[5]) = xmmword_23D1B1460;
  *(a1 + v2[6]) = 2;
  *(a1 + v2[7]) = 2;
  v4 = a1 + v2[8];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + v2[9];
  *v5 = 0;
  *(v5 + 4) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_WlanMeasurementList.result.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList(0) + 24));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_WlanMeasurementList.result.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_WlanMeasurementList.result.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_WlanMeasurementList.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList(0);
  v3 = a1 + *(v2 + 20);
  result = UnknownStorage.init()();
  *(a1 + *(v2 + 24)) = 6;
  return result;
}

uint64_t Proto_Gnss_Emergency_QoP.isValid.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_QoP(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_QoP.isValid.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_QoP(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Request.type.modify;
}

uint64_t Proto_Gnss_Emergency_QoP.horizontalAccuracy.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_QoP(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_QoP.horizontalAccuracy.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_QoP(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_QoP.clearHorizontalAccuracy()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_QoP(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_QoP.verticalAccuracy.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_QoP(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_QoP.verticalAccuracy.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_QoP(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_QoP.clearVerticalAccuracy()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_QoP(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_QoP.maxLocationAge.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_QoP(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_QoP.maxLocationAge.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_QoP(0) + 32);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_QoP.clearMaxLocationAge()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_QoP(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_QoP.delay.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_QoP(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_QoP.delay.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_QoP(0) + 36);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_QoP.clearDelay()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_QoP(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

int *Proto_Gnss_Emergency_GsmCellInfo.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = a1(0);
  *(a2 + result[5]) = 2;
  v5 = a2 + result[6];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a2 + result[7];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + result[8];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a2 + result[9];
  *v8 = 0;
  *(v8 + 4) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_SLPAddress.isValid.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_SLPAddress.isValid.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_SLPAddress.slpAddressType.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0) + 28));
  if (v1 == 5)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_SLPAddress.slpAddressType.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_SLPAddress.slpAddressType.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0) + 28);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t (*Proto_Gnss_Emergency_SLPAddress.fQdn.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return CLP_LogEntry_PrivateData_PlaceInference.preferredName.modify;
}

uint64_t Proto_Gnss_Emergency_WlanMeasurementList.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Proto_Gnss_Emergency_WlanMeasurementList.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Proto_Gnss_Emergency_SLPAddress.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
  v3 = a1 + v2[5];
  result = UnknownStorage.init()();
  *(a1 + v2[6]) = 2;
  *(a1 + v2[7]) = 5;
  v5 = (a1 + v2[8]);
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t Proto_Gnss_Emergency_Notification.isValid.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Notification(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Notification.isValid.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Notification(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_Notification.emergencyCallLocationPresent.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Notification(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Notification.emergencyCallLocationPresent.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Notification(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_Notification.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Emergency_Notification(0);
  *(a1 + *(result + 20)) = 2;
  *(a1 + *(result + 24)) = 2;
  return result;
}

uint64_t Proto_Gnss_Emergency_SuplInitVer2Extension.eSlpaddress.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  inited = type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(inited + 20), v6, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
  }

  *a1 = MEMORY[0x277D84F90];
  v10 = a1 + v8[5];
  UnknownStorage.init()();
  *(a1 + v8[6]) = 2;
  *(a1 + v8[7]) = 5;
  v11 = (a1 + v8[8]);
  *v11 = 0;
  v11[1] = 0;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_SuplInitVer2Extension.eSlpaddress.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0) + 20);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
  v4 = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_SuplInitVer2Extension.eSlpaddress.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    v17 = v14 + v9[5];
    UnknownStorage.init()();
    *(v14 + v9[6]) = 2;
    *(v14 + v9[7]) = 5;
    v18 = (v14 + v9[8]);
    *v18 = 0;
    v18[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
  }

  return Proto_Gnss_Emergency_SuplInitVer2Extension.eSlpaddress.modify;
}

uint64_t Proto_Gnss_Emergency_SuplInitVer2Extension.triggerType.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0) + 24));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_SuplInitVer2Extension.triggerType.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_SuplInitVer2Extension.triggerType.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_SuplInitVer2Extension.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  inited = type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0);
  v3 = *(inited + 20);
  v4 = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  *(a1 + *(inited + 24)) = 4;
  return result;
}

uint64_t Proto_Gnss_Emergency_Init.posMethod.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_Init(0) + 20));
  swift_beginAccess();
  if (*(v1 + 16) == 18)
  {
    return 0;
  }

  else
  {
    return *(v1 + 16);
  }
}

void (*Proto_Gnss_Emergency_Init.posMethod.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_Init(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (v7 == 18)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return Proto_Gnss_Emergency_Init.posMethod.modify;
}

BOOL Proto_Gnss_Emergency_Init.hasPosMethod.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_Init(0) + 20));
  swift_beginAccess();
  return *(v1 + 16) != 18;
}

uint64_t Proto_Gnss_Emergency_Init.qop.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_Init(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__qop;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
  v9 = type metadata accessor for Proto_Gnss_Emergency_QoP(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_QoP);
  }

  UnknownStorage.init()();
  *(a1 + v9[5]) = 2;
  v11 = a1 + v9[6];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v9[7];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v9[8];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1 + v9[9];
  *v14 = 0;
  *(v14 + 4) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_Init.qop.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_Init(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_Init._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gnss_Emergency_Init._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v7, type metadata accessor for Proto_Gnss_Emergency_QoP);
  v17 = type metadata accessor for Proto_Gnss_Emergency_QoP(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__qop;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_Init.qop.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_QoP(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_Init(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__qop;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + v9[5]) = 2;
    v19 = v14 + v9[6];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v14 + v9[7];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v14 + v9[8];
    *v21 = 0;
    *(v21 + 4) = 1;
    v22 = v14 + v9[9];
    *v22 = 0;
    *(v22 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_QoP);
  }

  return Proto_Gnss_Emergency_Init.qop.modify;
}

void Proto_Gnss_Emergency_Init.qop.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_QoP);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_Init._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gnss_Emergency_Init._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v15, v19, type metadata accessor for Proto_Gnss_Emergency_QoP);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__qop;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v14, type metadata accessor for Proto_Gnss_Emergency_QoP);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_Init._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gnss_Emergency_Init._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v14, v19, type metadata accessor for Proto_Gnss_Emergency_QoP);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__qop;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gnss_Emergency_Init.hasQop.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_Init(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__qop;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_QoP(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_Init.clearQop()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_Init(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_Init._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gnss_Emergency_Init._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Emergency_QoP(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__qop;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_Init.slpAddress.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_Init(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__slpAddress;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  v9 = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
  }

  *a1 = MEMORY[0x277D84F90];
  v11 = a1 + v9[5];
  UnknownStorage.init()();
  *(a1 + v9[6]) = 2;
  *(a1 + v9[7]) = 5;
  v12 = (a1 + v9[8]);
  *v12 = 0;
  v12[1] = 0;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_Init.slpAddress.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_Init(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_Init._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gnss_Emergency_Init._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v7, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
  v17 = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__slpAddress;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_Init.slpAddress.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_Init(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__slpAddress;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    v19 = v14 + v9[5];
    UnknownStorage.init()();
    *(v14 + v9[6]) = 2;
    *(v14 + v9[7]) = 5;
    v20 = (v14 + v9[8]);
    *v20 = 0;
    v20[1] = 0;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
  }

  return Proto_Gnss_Emergency_Init.slpAddress.modify;
}

void Proto_Gnss_Emergency_Init.slpAddress.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_Init._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gnss_Emergency_Init._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v15, v19, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__slpAddress;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v14, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_Init._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gnss_Emergency_Init._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v14, v19, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__slpAddress;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gnss_Emergency_Init.hasSlpAddress.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_Init(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__slpAddress;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_Init.clearSlpAddress()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_Init(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_Init._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gnss_Emergency_Init._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__slpAddress;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_Init.notification.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_Init(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__notification;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
  v9 = type metadata accessor for Proto_Gnss_Emergency_Notification(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_Notification);
  }

  UnknownStorage.init()();
  *(a1 + *(v9 + 20)) = 2;
  *(a1 + *(v9 + 24)) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_Init.notification.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_Init(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_Init._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gnss_Emergency_Init._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v7, type metadata accessor for Proto_Gnss_Emergency_Notification);
  v17 = type metadata accessor for Proto_Gnss_Emergency_Notification(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__notification;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_Init.notification.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_Notification(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_Init(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__notification;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + *(v9 + 20)) = 2;
    *(v14 + *(v9 + 24)) = 2;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_Notification);
  }

  return Proto_Gnss_Emergency_Init.notification.modify;
}

void Proto_Gnss_Emergency_Init.notification.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_Notification);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_Init._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gnss_Emergency_Init._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v15, v19, type metadata accessor for Proto_Gnss_Emergency_Notification);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__notification;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v14, type metadata accessor for Proto_Gnss_Emergency_Notification);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_Init._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gnss_Emergency_Init._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v14, v19, type metadata accessor for Proto_Gnss_Emergency_Notification);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__notification;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gnss_Emergency_Init.hasNotification.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_Init(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__notification;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_Notification(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_Init.clearNotification()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_Init(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_Init._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gnss_Emergency_Init._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Emergency_Notification(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__notification;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_Init.suplInitv2Extension.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_Init(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__suplInitv2Extension;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
  inited = type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0);
  v10 = *(*(inited - 8) + 48);
  if (v10(v6, 1, inited) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension);
  }

  UnknownStorage.init()();
  v11 = *(inited + 20);
  v12 = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  *(a1 + *(inited + 24)) = 4;
  result = (v10)(v6, 1, inited);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_Init.suplInitv2Extension.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_Init(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_Init._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gnss_Emergency_Init._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v7, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension);
  inited = type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0);
  (*(*(inited - 8) + 56))(v7, 0, 1, inited);
  v18 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__suplInitv2Extension;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_Init.suplInitv2Extension.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR) - 8) + 64);
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
  inited = type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0);
  *(v5 + 96) = inited;
  v10 = *(inited - 8);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_Init(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__suplInitv2Extension;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, inited) == 1)
  {
    UnknownStorage.init()();
    v19 = *(inited + 20);
    v20 = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    *(v14 + *(inited + 24)) = 4;
    if (v18(v8, 1, inited) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension);
  }

  return Proto_Gnss_Emergency_Init.suplInitv2Extension.modify;
}

void Proto_Gnss_Emergency_Init.suplInitv2Extension.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_Init._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gnss_Emergency_Init._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v15, v19, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__suplInitv2Extension;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v14, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_Init._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gnss_Emergency_Init._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v14, v19, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__suplInitv2Extension;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gnss_Emergency_Init.hasSuplInitv2Extension.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_Init(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__suplInitv2Extension;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
  inited = type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0);
  v8 = (*(*(inited - 8) + 48))(v4, 1, inited) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_Init.clearSuplInitv2Extension()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_Init(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_Init._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gnss_Emergency_Init._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  inited = type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0);
  (*(*(inited - 8) + 56))(v5, 1, 1, inited);
  v16 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__suplInitv2Extension;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_SummaryReport.init()@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  UnknownStorage.init()();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t Proto_Gnss_Emergency_SuplContext.suplPort.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_SuplContext.suplPort.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_SuplContext.clearSuplPort()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_SuplConfig.suplServer.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t Proto_Gnss_Emergency_SuplConfig.suplServer.setter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 24));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_SuplContext.suplServer.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return CLP_LogEntry_PrivateData_XtraFileAvailable.where.modify;
}

uint64_t Proto_Gnss_Emergency_SuplConfig.clearSuplServer()(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t Proto_Gnss_Emergency_SuplContext.enableMsa.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_SuplContext.enableMsa.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_SLPAddress.fQdn.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t Proto_Gnss_Emergency_SLPAddress.fQdn.setter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 32));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_SuplContext.imsi.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return CLP_LogEntry_PrivateData_XtraFileAvailable.where.modify;
}

uint64_t Proto_Gnss_Emergency_SLPAddress.clearFQdn()(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t Proto_Gnss_Emergency_SuplContext.config.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 36), v6, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_Configuration);
  }

  UnknownStorage.init()();
  *(a1 + v8[5]) = 2;
  *(a1 + v8[6]) = 2;
  v10 = a1 + v8[7];
  *v10 = 0;
  *(v10 + 8) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_SuplContext.config.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 36);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_Configuration);
  v4 = type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_SuplContext.config.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 36);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + v9[5]) = 2;
    *(v14 + v9[6]) = 2;
    v17 = v14 + v9[7];
    *v17 = 0;
    *(v17 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_Configuration);
  }

  return Proto_Gnss_Emergency_SuplContext.config.modify;
}

uint64_t Proto_Gnss_Emergency_SuplContext.nsuuid.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 40));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t Proto_Gnss_Emergency_SuplContext.nsuuid.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 40));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_SuplContext.nsuuid.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 40);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return CLP_LogEntry_PrivateData_XtraFileAvailable.where.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SuplContext.clearNsuuid()()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 40));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Proto_Gnss_Emergency_SuplContext.enableLppRel13WlanMeas.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_SuplContext.enableLppRel13WlanMeas.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 44);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_SuplContext.supportsLppRel13WlanMeasTypeRssi.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_SuplContext.supportsLppRel13WlanMeasTypeRssi.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 48);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_SuplContext.supportsLppRel13LocationSource.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_SuplContext.supportsLppRel13LocationSource.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 52);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_SuplContext.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = (a1 + v2[6]);
  *v4 = 0;
  v4[1] = 0;
  *(a1 + v2[7]) = 2;
  v5 = (a1 + v2[8]);
  *v5 = 0;
  v5[1] = 0;
  v6 = v2[9];
  v7 = type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
  result = (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  v9 = (a1 + v2[10]);
  *v9 = 0;
  v9[1] = 0;
  *(a1 + v2[11]) = 2;
  *(a1 + v2[12]) = 2;
  *(a1 + v2[13]) = 2;
  return result;
}

uint64_t variable initialization expression of Proto_Gnss_Emergency_SuplInitVer2Extension._eSlpaddress@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

void (*Proto_Gnss_Emergency_SessionStatus.sessionID.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (*(v6 + 20))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_SessionStatus.sessionID.modify;
}

uint64_t Proto_Gnss_Emergency_SessionStatus.posMethod.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  if (*(v1 + 21) == 18)
  {
    return 0;
  }

  else
  {
    return *(v1 + 21);
  }
}

uint64_t Proto_Gnss_Emergency_SessionStatus.posMethod.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 21) = a1;
  return result;
}

void (*Proto_Gnss_Emergency_SessionStatus.posMethod.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 21);
  if (v7 == 18)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return Proto_Gnss_Emergency_SessionStatus.posMethod.modify;
}

void Proto_Gnss_Emergency_SessionStatus.posMethod.modify(uint64_t *a1)
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
    v10 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 21) = v2;

  free(v1);
}

BOOL Proto_Gnss_Emergency_SessionStatus.hasPosMethod.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return *(v1 + 21) != 18;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SessionStatus.clearPosMethod()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    v10 = v5;
    v5 = v9;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v10);
    *(v1 + v2) = v9;
  }

  swift_beginAccess();
  *(v5 + 21) = 18;
}

uint64_t Proto_Gnss_Emergency_SessionStatus.status.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  if (*(v1 + 22) == 33)
  {
    return 0;
  }

  else
  {
    return *(v1 + 22);
  }
}

uint64_t Proto_Gnss_Emergency_SessionStatus.status.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 22) = a1;
  return result;
}

void (*Proto_Gnss_Emergency_SessionStatus.status.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 22);
  if (v7 == 33)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return Proto_Gnss_Emergency_SessionStatus.status.modify;
}

void Proto_Gnss_Emergency_SessionStatus.status.modify(uint64_t *a1)
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
    v10 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 22) = v2;

  free(v1);
}

BOOL Proto_Gnss_Emergency_SessionStatus.hasStatus.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return *(v1 + 22) != 33;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SessionStatus.clearStatus()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    v10 = v5;
    v5 = v9;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v10);
    *(v1 + v2) = v9;
  }

  swift_beginAccess();
  *(v5 + 22) = 33;
}

uint64_t Proto_Gnss_Emergency_SessionStatus.endCause.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  if (*(v1 + 23) == 24)
  {
    return 0;
  }

  else
  {
    return *(v1 + 23);
  }
}

uint64_t Proto_Gnss_Emergency_SessionStatus.endCause.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 23) = a1;
  return result;
}

void (*Proto_Gnss_Emergency_SessionStatus.endCause.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 23);
  if (v7 == 24)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return Proto_Gnss_Emergency_SessionStatus.endCause.modify;
}

void Proto_Gnss_Emergency_SessionStatus.endCause.modify(uint64_t *a1)
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
    v10 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 23) = v2;

  free(v1);
}

BOOL Proto_Gnss_Emergency_SessionStatus.hasEndCause.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return *(v1 + 23) != 24;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SessionStatus.clearEndCause()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    v10 = v5;
    v5 = v9;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v10);
    *(v1 + v2) = v9;
  }

  swift_beginAccess();
  *(v5 + 23) = 24;
}

double Proto_Gnss_Emergency_SessionStatus.horzAccuracyRequested.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  result = *(v1 + 24);
  if (*(v1 + 32))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_SessionStatus.horzAccuracyRequested.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 24) = a1;
  *(v7 + 32) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_SessionStatus.horzAccuracyRequested.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  if (*(v6 + 32))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Proto_Gnss_Emergency_SessionStatus.horzAccuracyRequested.modify;
}

void Proto_Gnss_Emergency_SessionStatus.horzAccuracyRequested.modify(uint64_t *a1)
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
    v10 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 24) = v2;
  *(v7 + 32) = 0;

  free(v1);
}

BOOL Proto_Gnss_Emergency_SessionStatus.hasHorzAccuracyRequested.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return (*(v1 + 32) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SessionStatus.clearHorzAccuracyRequested()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    v10 = v5;
    v5 = v9;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v10);
    *(v1 + v2) = v9;
  }

  swift_beginAccess();
  *(v5 + 24) = 0;
  *(v5 + 32) = 1;
}

double Proto_Gnss_Emergency_SessionStatus.lat.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  result = *(v1 + 40);
  if (*(v1 + 48))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_SessionStatus.lat.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 40) = a1;
  *(v7 + 48) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_SessionStatus.lat.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 40);
  if (*(v6 + 48))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Proto_Gnss_Emergency_SessionStatus.lat.modify;
}

void Proto_Gnss_Emergency_SessionStatus.lat.modify(uint64_t *a1)
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
    v10 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 40) = v2;
  *(v7 + 48) = 0;

  free(v1);
}

BOOL Proto_Gnss_Emergency_SessionStatus.hasLat.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return (*(v1 + 48) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SessionStatus.clearLat()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    v10 = v5;
    v5 = v9;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v10);
    *(v1 + v2) = v9;
  }

  swift_beginAccess();
  *(v5 + 40) = 0;
  *(v5 + 48) = 1;
}

double Proto_Gnss_Emergency_SessionStatus.lon.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  result = *(v1 + 56);
  if (*(v1 + 64))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_SessionStatus.lon.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 56) = a1;
  *(v7 + 64) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_SessionStatus.lon.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 56);
  if (*(v6 + 64))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Proto_Gnss_Emergency_SessionStatus.lon.modify;
}

void Proto_Gnss_Emergency_SessionStatus.lon.modify(uint64_t *a1)
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
    v10 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 56) = v2;
  *(v7 + 64) = 0;

  free(v1);
}

BOOL Proto_Gnss_Emergency_SessionStatus.hasLon.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return (*(v1 + 64) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SessionStatus.clearLon()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    v10 = v5;
    v5 = v9;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v10);
    *(v1 + v2) = v9;
  }

  swift_beginAccess();
  *(v5 + 56) = 0;
  *(v5 + 64) = 1;
}

double Proto_Gnss_Emergency_SessionStatus.alt.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  result = *(v1 + 72);
  if (*(v1 + 80))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_SessionStatus.alt.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 72) = a1;
  *(v7 + 80) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_SessionStatus.alt.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 72);
  if (*(v6 + 80))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Proto_Gnss_Emergency_SessionStatus.alt.modify;
}

void Proto_Gnss_Emergency_SessionStatus.alt.modify(uint64_t *a1)
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
    v10 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 72) = v2;
  *(v7 + 80) = 0;

  free(v1);
}

BOOL Proto_Gnss_Emergency_SessionStatus.hasAlt.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return (*(v1 + 80) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SessionStatus.clearAlt()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    v10 = v5;
    v5 = v9;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v10);
    *(v1 + v2) = v9;
  }

  swift_beginAccess();
  *(v5 + 72) = 0;
  *(v5 + 80) = 1;
}

double Proto_Gnss_Emergency_SessionStatus.uncSemiMajor.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  result = *(v1 + 88);
  if (*(v1 + 96))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_SessionStatus.uncSemiMajor.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 88) = a1;
  *(v7 + 96) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_SessionStatus.uncSemiMajor.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 88);
  if (*(v6 + 96))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Proto_Gnss_Emergency_SessionStatus.uncSemiMajor.modify;
}

void Proto_Gnss_Emergency_SessionStatus.uncSemiMajor.modify(uint64_t *a1)
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
    v10 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 88) = v2;
  *(v7 + 96) = 0;

  free(v1);
}

BOOL Proto_Gnss_Emergency_SessionStatus.hasUncSemiMajor.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return (*(v1 + 96) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SessionStatus.clearUncSemiMajor()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    v10 = v5;
    v5 = v9;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v10);
    *(v1 + v2) = v9;
  }

  swift_beginAccess();
  *(v5 + 88) = 0;
  *(v5 + 96) = 1;
}

double Proto_Gnss_Emergency_SessionStatus.uncSemiMinor.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  result = *(v1 + 104);
  if (*(v1 + 112))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_SessionStatus.uncSemiMinor.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 104) = a1;
  *(v7 + 112) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_SessionStatus.uncSemiMinor.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 104);
  if (*(v6 + 112))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Proto_Gnss_Emergency_SessionStatus.uncSemiMinor.modify;
}

void Proto_Gnss_Emergency_SessionStatus.uncSemiMinor.modify(uint64_t *a1)
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
    v10 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 104) = v2;
  *(v7 + 112) = 0;

  free(v1);
}

BOOL Proto_Gnss_Emergency_SessionStatus.hasUncSemiMinor.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return (*(v1 + 112) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SessionStatus.clearUncSemiMinor()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    v10 = v5;
    v5 = v9;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v10);
    *(v1 + v2) = v9;
  }

  swift_beginAccess();
  *(v5 + 104) = 0;
  *(v5 + 112) = 1;
}

double Proto_Gnss_Emergency_SummaryReport.requestedResponseTimeoutSeconds.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  result = *(v2 + 120);
  if (*(v2 + 128))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_SessionStatus.uncAlt.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 120) = a1;
  *(v7 + 128) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_SessionStatus.uncAlt.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 120);
  if (*(v6 + 128))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Proto_Gnss_Emergency_SessionStatus.uncAlt.modify;
}

void Proto_Gnss_Emergency_SessionStatus.uncAlt.modify(uint64_t *a1)
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
    v10 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 120) = v2;
  *(v7 + 128) = 0;

  free(v1);
}

BOOL Proto_Gnss_Emergency_SummaryReport.hasRequestedResponseTimeoutSeconds.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 128) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SessionStatus.clearUncAlt()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    v10 = v5;
    v5 = v9;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v10);
    *(v1 + v2) = v9;
  }

  swift_beginAccess();
  *(v5 + 120) = 0;
  *(v5 + 128) = 1;
}

uint64_t Proto_Gnss_Emergency_SessionStatus.ephProvided.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return *(v1 + 129) & 1;
}

uint64_t Proto_Gnss_Emergency_SessionStatus.ephProvided.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 129) = a1 & 1;
  return result;
}

void (*Proto_Gnss_Emergency_SessionStatus.ephProvided.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 129) & 1;
  return Proto_Gnss_Emergency_SessionStatus.ephProvided.modify;
}

void Proto_Gnss_Emergency_SessionStatus.ephProvided.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 129) = v4;

  free(v1);
}

BOOL Proto_Gnss_Emergency_SessionStatus.hasEphProvided.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return *(v1 + 129) != 2;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SessionStatus.clearEphProvided()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    v10 = v5;
    v5 = v9;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v10);
    *(v1 + v2) = v9;
  }

  swift_beginAccess();
  *(v5 + 129) = 2;
}

uint64_t Proto_Gnss_Emergency_SessionStatus.referenceTimeProvided.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return *(v1 + 130) & 1;
}

uint64_t Proto_Gnss_Emergency_SessionStatus.referenceTimeProvided.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 130) = a1 & 1;
  return result;
}

void (*Proto_Gnss_Emergency_SessionStatus.referenceTimeProvided.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 130) & 1;
  return Proto_Gnss_Emergency_SessionStatus.referenceTimeProvided.modify;
}

void Proto_Gnss_Emergency_SessionStatus.referenceTimeProvided.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 130) = v4;

  free(v1);
}

BOOL Proto_Gnss_Emergency_SessionStatus.hasReferenceTimeProvided.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return *(v1 + 130) != 2;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SessionStatus.clearReferenceTimeProvided()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    v10 = v5;
    v5 = v9;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v10);
    *(v1 + v2) = v9;
  }

  swift_beginAccess();
  *(v5 + 130) = 2;
}

uint64_t Proto_Gnss_Emergency_SessionStatus.referenceLocationProvided.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return *(v1 + 131) & 1;
}

uint64_t Proto_Gnss_Emergency_SessionStatus.referenceLocationProvided.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 131) = a1 & 1;
  return result;
}

void (*Proto_Gnss_Emergency_SessionStatus.referenceLocationProvided.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 131) & 1;
  return Proto_Gnss_Emergency_SessionStatus.referenceLocationProvided.modify;
}

void Proto_Gnss_Emergency_SessionStatus.referenceLocationProvided.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 131) = v4;

  free(v1);
}

BOOL Proto_Gnss_Emergency_SessionStatus.hasReferenceLocationProvided.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return *(v1 + 131) != 2;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SessionStatus.clearReferenceLocationProvided()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    v10 = v5;
    v5 = v9;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v10);
    *(v1 + v2) = v9;
  }

  swift_beginAccess();
  *(v5 + 131) = 2;
}

uint64_t Proto_Gnss_Emergency_SessionStatus.nwRefLocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v19 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
  v9 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
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
  v15 = a1 + v9[9];
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = a1 + v9[10];
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = a1 + v9[11];
  *v17 = 0;
  *(v17 + 4) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
  }

  return result;
}

int *Proto_Gnss_Emergency_NetworkReferenceLocation.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
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
  v7 = a1 + result[9];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1 + result[10];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a1 + result[11];
  *v9 = 0;
  *(v9 + 4) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_SessionStatus.nwRefLocation.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v7, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
  v17 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_SessionStatus.nwRefLocation.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
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
    v23 = v14 + v9[9];
    *v23 = 0;
    *(v23 + 8) = 1;
    v24 = v14 + v9[10];
    *v24 = 0;
    *(v24 + 4) = 1;
    v25 = v14 + v9[11];
    *v25 = 0;
    *(v25 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
  }

  return Proto_Gnss_Emergency_SessionStatus.nwRefLocation.modify;
}

void Proto_Gnss_Emergency_SessionStatus.nwRefLocation.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v15, v19, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v14, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v14, v19, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gnss_Emergency_SessionStatus.hasNwRefLocation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SessionStatus.clearNwRefLocation()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_SessionStatus.nwRefTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
  v9 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
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
  *(v13 + 8) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
  }

  return result;
}

int *Proto_Gnss_Emergency_NetworkReferenceTime.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 8) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_SessionStatus.nwRefTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v16);
    *(v2 + v8) = v15;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v7, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
  v17 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v18, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_SessionStatus.nwRefTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
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
    *(v21 + 8) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
  }

  return Proto_Gnss_Emergency_SessionStatus.nwRefTime.modify;
}

void Proto_Gnss_Emergency_SessionStatus.nwRefTime.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v15, v19, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v14, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v14, v19, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gnss_Emergency_SessionStatus.hasNwRefTime.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_SessionStatus.clearNwRefTime()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v16, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_ClsGpsCellTime.msPart.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsGpsCellTime.msPart.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsGpsCellTime.clearMsPart()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ClsGpsCellTime.lsPart.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsGpsCellTime.lsPart.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsGpsCellTime.clearLsPart()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ClsUtranCellTime.utranGpsTimingCellFrames.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 20), v6, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
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
    return outlined destroy of Any?(v6, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_ClsUtranCellTime.utranGpsTimingCellFrames.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0) + 20);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  v4 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_ClsUtranCellTime.utranGpsTimingCellFrames.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
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
      outlined destroy of Any?(v8, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  }

  return Proto_Gnss_Emergency_ClsUtranCellTime.utranGpsTimingCellFrames.modify;
}

BOOL Proto_Gnss_Emergency_SuplInitVer2Extension.hasESlpaddress.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + *(v13 + 20), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  outlined destroy of Any?(v12, a1, a2);
  return v15;
}

uint64_t Proto_Gnss_Emergency_SuplInitVer2Extension.clearESlpaddress()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 20);
  outlined destroy of Any?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Proto_Gnss_Emergency_ClsUtranCellTime.refCellSfn.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsUtranCellTime.refCellSfn.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsUtranCellTime.clearRefCellSfn()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ClsUtranCellTime.refCellPsc.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsUtranCellTime.refCellPsc.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsUtranCellTime.clearRefCellPsc()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ClsUtranCellTime.roundTripTime.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsUtranCellTime.roundTripTime.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0) + 32);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsUtranCellTime.clearRoundTripTime()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ClsUtranCellTime.modemState.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0) + 36));
  if (v1 == 5)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_ClsUtranCellTime.modemState.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsUtranCellTime.modemState.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0) + 36);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_ClsUtranCellTime.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  v3 = v2[5];
  v4 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
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
  *(a1 + v2[9]) = 5;
  return result;
}

uint64_t Proto_Gnss_Emergency_Plmn.mcc.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Plmn.mcc.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Plmn(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_Plmn.clearMcc()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_Plmn(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_Plmn.mnc.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Plmn.mnc.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Plmn(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_Plmn.clearMnc()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_Plmn(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_Plmn.threeDigitMnc.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Plmn.threeDigitMnc.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Plmn(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_Plmn.clearThreeDigitMnc()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_Plmn(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_SessionInfo.sessionProtocol.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0) + 20));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_SessionInfo.sessionProtocol.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_SessionInfo.sessionProtocol.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_SessionInfo.posProtocol.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0) + 24));
  if (v1 == 7)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_SessionInfo.posProtocol.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_SessionInfo.posProtocol.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 7)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_SessionInfo.sessionID.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_SessionInfo.sessionID.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_SessionInfo.clearSessionID()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

int *Proto_Gnss_Emergency_SessionInfo.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  *(a1 + result[5]) = 6;
  *(a1 + result[6]) = 7;
  v3 = a1 + result[7];
  *v3 = 0;
  *(v3 + 4) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_SessionStatus.sessionID.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  if (*(v2 + 20))
  {
    return 0;
  }

  else
  {
    return *(v2 + 16);
  }
}

void (*Proto_Gnss_Emergency_PositionRequest.interval.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (*(v6 + 20))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_PositionRequest.interval.modify;
}

BOOL Proto_Gnss_Emergency_SessionStatus.hasSessionID.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 20) & 1) == 0;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.method.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20));
  swift_beginAccess();
  if (*(v1 + 21) == 5)
  {
    return 0;
  }

  else
  {
    return *(v1 + 21);
  }
}

uint64_t Proto_Gnss_Emergency_PositionRequest.method.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_PositionRequest._StorageClass();
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_PositionRequest._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 21) = a1;
  return result;
}

void (*Proto_Gnss_Emergency_PositionRequest.method.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 21);
  if (v7 == 5)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return Proto_Gnss_Emergency_PositionRequest.method.modify;
}

void Proto_Gnss_Emergency_PositionRequest.method.modify(uint64_t *a1)
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
    type metadata accessor for Proto_Gnss_Emergency_PositionRequest._StorageClass();
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_PositionRequest._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 21) = v2;

  free(v1);
}

BOOL Proto_Gnss_Emergency_PositionRequest.hasMethod.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20));
  swift_beginAccess();
  return *(v1 + 21) != 5;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_PositionRequest.clearMethod()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_PositionRequest._StorageClass();
    v6 = swift_allocObject();
    specialized Proto_Gnss_Emergency_PositionRequest._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 21) = 5;
}

void (*Proto_Gnss_Emergency_PositionRequest.responseTime.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  if (*(v6 + 28))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_PositionRequest.responseTime.modify;
}

void (*Proto_Gnss_Emergency_PositionRequest.horizontalAccuracy.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 32);
  if (*(v6 + 36))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_PositionRequest.horizontalAccuracy.modify;
}

void (*Proto_Gnss_Emergency_PositionRequest.velocityRequested.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 40);
  if (*(v6 + 44))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_PositionRequest.velocityRequested.modify;
}

void (*Proto_Gnss_Emergency_PositionRequest.horizontalConfidence.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 48);
  if (*(v6 + 52))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_PositionRequest.horizontalConfidence.modify;
}

void (*Proto_Gnss_Emergency_PositionRequest.verticalAccuracy.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 56);
  if (*(v6 + 60))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_PositionRequest.verticalAccuracy.modify;
}

void (*Proto_Gnss_Emergency_PositionRequest.verticalConfidence.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 64);
  if (*(v6 + 68))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_PositionRequest.verticalConfidence.modify;
}

void (*Proto_Gnss_Emergency_PositionRequest.verticalRequested.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 72);
  if (*(v6 + 76))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_PositionRequest.verticalRequested.modify;
}

void (*Proto_Gnss_Emergency_PositionRequest.assistanceAvailability.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 80);
  if (*(v6 + 84))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_PositionRequest.assistanceAvailability.modify;
}

void (*Proto_Gnss_Emergency_PositionRequest.requestedGnss.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 88);
  if (*(v6 + 92))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_PositionRequest.requestedGnss.modify;
}

void (*Proto_Gnss_Emergency_PositionRequest.locCordinateTypeAllowed.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 96);
  if (*(v6 + 100))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_PositionRequest.locCordinateTypeAllowed.modify;
}

void (*Proto_Gnss_Emergency_PositionRequest.velocityTypes.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 104);
  if (*(v6 + 108))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_PositionRequest.velocityTypes.modify;
}

void (*Proto_Gnss_Emergency_PositionRequest.reportAmount.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 112);
  if (*(v6 + 116))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_PositionRequest.reportAmount.modify;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.posProtocol.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20));
  swift_beginAccess();
  if (*(v1 + 117) == 7)
  {
    return 0;
  }

  else
  {
    return *(v1 + 117);
  }
}

uint64_t Proto_Gnss_Emergency_PositionRequest.posProtocol.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_PositionRequest._StorageClass();
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_PositionRequest._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 117) = a1;
  return result;
}

void (*Proto_Gnss_Emergency_PositionRequest.posProtocol.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 117);
  if (v7 == 7)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return Proto_Gnss_Emergency_PositionRequest.posProtocol.modify;
}

void Proto_Gnss_Emergency_PositionRequest.posProtocol.modify(uint64_t *a1)
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
    type metadata accessor for Proto_Gnss_Emergency_PositionRequest._StorageClass();
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_PositionRequest._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 117) = v2;

  free(v1);
}

BOOL Proto_Gnss_Emergency_PositionRequest.hasPosProtocol.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20));
  swift_beginAccess();
  return *(v1 + 117) != 7;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_PositionRequest.clearPosProtocol()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_PositionRequest._StorageClass();
    v6 = swift_allocObject();
    specialized Proto_Gnss_Emergency_PositionRequest._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 117) = 7;
}

void (*Proto_Gnss_Emergency_PositionRequest.sessionID.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 120);
  if (*(v6 + 124))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_PositionRequest.sessionID.modify;
}

void (*Proto_Gnss_Emergency_PositionRequest.horizontalAccuracyMeters.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 128);
  if (*(v6 + 132))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_PositionRequest.horizontalAccuracyMeters.modify;
}

uint64_t Proto_Gnss_Emergency_UtranGpsTimeMeasured.ueUtranCellTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 20), v6, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime);
  }

  UnknownStorage.init()();
  v10 = v8[5];
  v11 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = a1 + v8[6];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v8[7];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1 + v8[8];
  *v14 = 0;
  *(v14 + 4) = 1;
  *(a1 + v8[9]) = 5;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_UtranGpsTimeMeasured.ueUtranCellTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0) + 20);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime);
  v4 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_UtranGpsTimeMeasured.ueUtranCellTime.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v9[5];
    v18 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    v19 = v14 + v9[6];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v14 + v9[7];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v14 + v9[8];
    *v21 = 0;
    *(v21 + 4) = 1;
    *(v14 + v9[9]) = 5;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime);
  }

  return Proto_Gnss_Emergency_UtranGpsTimeMeasured.ueUtranCellTime.modify;
}

uint64_t Proto_Gnss_Emergency_UtranGpsTimeMeasured.gpsUmtsTimeDifference.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 24), v6, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
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
    return outlined destroy of Any?(v6, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_UtranGpsTimeMeasured.gpsUmtsTimeDifference.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  v4 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Proto_Gnss_Emergency_UtranGpsTimeMeasured.gpsUmtsTimeDifference.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
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
      outlined destroy of Any?(v8, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  }

  return Proto_Gnss_Emergency_UtranGpsTimeMeasured.gpsUmtsTimeDifference.modify;
}

uint64_t Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased.refFrameMsb.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased.refFrameMsb.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased.clearRefFrameMsb()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased.gpsTowSubms.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased.gpsTowSubms.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased.clearGpsTowSubms()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ClsGpsCellTime.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = a1(0);
  v5 = a2 + *(result + 20);
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a2 + *(result + 24);
  *v6 = 0;
  *(v6 + 4) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted.refFrameMsb.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted.refFrameMsb.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted.clearRefFrameMsb()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted.deltaTow.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted.deltaTow.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted.clearDeltaTow()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsTimeMeasured.utranTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 20), v6, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  v11 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = *(v8 + 24);
  v13 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GpsTimeMeasured.utranTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0) + 20);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);
  v4 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_GpsTimeMeasured.utranTime.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = *(v9 + 20);
    v18 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    v19 = *(v9 + 24);
    v20 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);
  }

  return Proto_Gnss_Emergency_GpsTimeMeasured.utranTime.modify;
}

uint64_t Proto_Gnss_Emergency_GpsTimeMeasured.geranTimeBased.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 24), v6, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);
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
    return outlined destroy of Any?(v6, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GpsTimeMeasured.geranTimeBased.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);
  v4 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_GpsTimeMeasured.geranTimeBased.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMR);
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
      outlined destroy of Any?(v8, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);
  }

  return Proto_Gnss_Emergency_GpsTimeMeasured.geranTimeBased.modify;
}

BOOL Proto_Gnss_Emergency_UtranGpsTimeMeasured.hasGpsUmtsTimeDifference.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
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

uint64_t Proto_Gnss_Emergency_UtranGpsTimeMeasured.clearGpsUmtsTimeDifference()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 24);
  outlined destroy of Any?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Proto_Gnss_Emergency_GpsTimeMeasured.geranTimeAssisted.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 28), v6, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);
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
    return outlined destroy of Any?(v6, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GpsTimeMeasured.geranTimeAssisted.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0) + 28);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);
  v4 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_GpsTimeMeasured.geranTimeAssisted.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMR);
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
      outlined destroy of Any?(v8, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);
  }

  return Proto_Gnss_Emergency_GpsTimeMeasured.geranTimeAssisted.modify;
}

uint64_t Proto_Gnss_Emergency_GpsTimeMeasured.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  v3 = v2[5];
  v4 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = v2[7];
  v8 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1 + v7, 1, 1, v8);
}

uint64_t Proto_Gnss_Emergency_GpsTimeMeasuredParams.gpsTimeMeasuredType.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0) + 20));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_GpsTimeMeasuredParams.gpsTimeMeasuredType.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsTimeMeasuredParams.gpsTimeMeasuredType.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_GpsTimeMeasuredParams.gpsTimeMeasured.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 24), v6, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);
  }

  UnknownStorage.init()();
  v10 = v8[5];
  v11 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = v8[6];
  v13 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  v14 = v8[7];
  v15 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
  (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GpsTimeMeasuredParams.gpsTimeMeasured.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_GpsTimeMeasuredParams.gpsTimeMeasured.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v9[5];
    v18 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    v19 = v9[6];
    v20 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    v21 = v9[7];
    v22 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
    (*(*(v22 - 8) + 56))(v14 + v21, 1, 1, v22);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);
  }

  return Proto_Gnss_Emergency_GpsTimeMeasuredParams.gpsTimeMeasured.modify;
}

uint64_t Proto_Gnss_Emergency_GpsTOD.gpsTodmsec.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsTOD.gpsTodmsec.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsTOD.clearGpsTodmsec()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsTOD.gpsTodfrac.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsTOD.gpsTodfrac.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsTOD.clearGpsTodfrac()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsTOD.gpsTodunc.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsTOD.gpsTodunc.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsTOD.clearGpsTodunc()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

int *Proto_Gnss_Emergency_Plmn.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = a1(0);
  v5 = a2 + result[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a2 + result[6];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + result[7];
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_LocationInfo.gpsTow.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_LocationInfo.gpsTow.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_LocationInfo.clearGpsTow()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_LocationInfo.gpsWeek.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_LocationInfo.gpsWeek.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_LocationInfo.clearGpsWeek()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_LocationInfo.gpsTimeUncertainty.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_LocationInfo.gpsTimeUncertainty.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_LocationInfo.clearGpsTimeUncertainty()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_LocationInfo.fixType.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 32));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_LocationInfo.fixType.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_LocationInfo.fixType.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 32);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_LocationInfo.gpsTodpresent.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_LocationInfo.gpsTodpresent.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 36);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_LocationInfo.clearGpsTodpresent()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_LocationInfo.gpsTod.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 40), v6, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
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
    return outlined destroy of Any?(v6, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_LocationInfo.gpsTod.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 40);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_LocationInfo.gpsTod.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 40);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
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
      outlined destroy of Any?(v8, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  }

  return Proto_Gnss_Emergency_LocationInfo.gpsTod.modify;
}

uint64_t Proto_Gnss_Emergency_LocationInfo.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + v2[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + v2[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  *(a1 + v2[8]) = 4;
  v6 = a1 + v2[9];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = v2[10];
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1 + v7, 1, 1, v8);
}

uint64_t Proto_Gnss_Emergency_CellInfo.cellInfoPresent.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_CellInfo.cellInfoPresent.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellInfo(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_CellInfo.clearCellInfoPresent()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_CellInfo(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_CellInfo.lac.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_CellInfo.lac.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellInfo(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_CellInfo.clearLac()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_CellInfo(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_CellInfo.cellID.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_CellInfo.cellID.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellInfo(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_CellInfo.clearCellID()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_CellInfo(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_CellInfo.plmn.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 32), v6, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
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

uint64_t Proto_Gnss_Emergency_CellInfo.plmn.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellInfo(0) + 32);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  v4 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_CellInfo.plmn.modify(void *a1))(uint64_t **a1, char a2)
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_CellInfo(0) + 32);
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

  return Proto_Gnss_Emergency_CellInfo.plmn.modify;
}

uint64_t Proto_Gnss_Emergency_CellInfo.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + v2[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + v2[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = v2[8];
  v7 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, 1, 1, v7);
}

uint64_t Proto_Gnss_Emergency_UtranGanssTimeMeasured.utranTimingOfCellFrames.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0) + 20));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Proto_Gnss_Emergency_UtranGanssTimeMeasured.utranTimingOfCellFrames.setter(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_UtranGanssTimeMeasured.utranTimingOfCellFrames.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_UtranGanssTimeMeasured.clearUtranTimingOfCellFrames()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Proto_Gnss_Emergency_UtranGanssTimeMeasured.refSfn.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_UtranGanssTimeMeasured.refSfn.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_UtranGanssTimeMeasured.clearRefSfn()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_UtranGanssTimeMeasured.refPsc.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_UtranGanssTimeMeasured.refPsc.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_UtranGanssTimeMeasured.clearRefPsc()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_UtranGanssTimeMeasured.cellInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 32), v6, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
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
  v13 = v8[8];
  v14 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_UtranGanssTimeMeasured.cellInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0) + 32);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  v4 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Proto_Gnss_Emergency_UtranGanssTimeMeasured.cellInfo.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
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
    v20 = v9[8];
    v21 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
    (*(*(v21 - 8) + 56))(v14 + v20, 1, 1, v21);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  }

  return Proto_Gnss_Emergency_UtranGanssTimeMeasured.cellInfo.modify;
}

BOOL Proto_Gnss_Emergency_CellInfo.hasPlmn.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + *(v13 + 32), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  outlined destroy of Any?(v12, a1, a2);
  return v15;
}

uint64_t Proto_Gnss_Emergency_CellInfo.clearPlmn()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 32);
  outlined destroy of Any?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Proto_Gnss_Emergency_UtranGanssTimeMeasured.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + v2[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + v2[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = v2[8];
  v7 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, 1, 1, v7);
}

uint64_t Proto_Gnss_Emergency_GeranGanssTimeMeasured.refFrameMsb.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GeranGanssTimeMeasured.refFrameMsb.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GeranGanssTimeMeasured.clearRefFrameMsb()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GeranGanssTimeMeasured.refFrameNumber.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GeranGanssTimeMeasured.refFrameNumber.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_GeranGanssTimeMeasured.clearRefFrameNumber()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GeranGanssTimeMeasured.cellInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 28), v6, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
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
  v13 = v8[8];
  v14 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GeranGanssTimeMeasured.cellInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0) + 28);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  v4 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_GeranGanssTimeMeasured.cellInfo.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
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
    v20 = v9[8];
    v21 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
    (*(*(v21 - 8) + 56))(v14 + v20, 1, 1, v21);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  }

  return Proto_Gnss_Emergency_GeranGanssTimeMeasured.cellInfo.modify;
}

BOOL Proto_Gnss_Emergency_GpsTimeMeasured.hasGeranTimeAssisted.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + *(v13 + 28), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  outlined destroy of Any?(v12, a1, a2);
  return v15;
}

uint64_t Proto_Gnss_Emergency_GpsTimeMeasured.clearGeranTimeAssisted()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  outlined destroy of Any?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Proto_Gnss_Emergency_GeranGanssTimeMeasured.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + v2[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = v2[7];
  v6 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t Proto_Gnss_Emergency_ClsEutranCell.physicalCellID.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsEutranCell.physicalCellID.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsEutranCell.clearPhysicalCellID()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ClsEutranCell.earfcn.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsEutranCell.earfcn.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsEutranCell.clearEarfcn()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ClsEutranCell.sfn.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsEutranCell.sfn.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsEutranCell.clearSfn()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ClsEutranCell.cgiInfoPresent.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsEutranCell.cgiInfoPresent.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 32);
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