@interface MTRThermostatClusterSetWeeklyScheduleParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRThermostatClusterSetWeeklyScheduleParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRThermostatClusterSetWeeklyScheduleParams

- (MTRThermostatClusterSetWeeklyScheduleParams)init
{
  v12.receiver = self;
  v12.super_class = MTRThermostatClusterSetWeeklyScheduleParams;
  v2 = [(MTRThermostatClusterSetWeeklyScheduleParams *)&v12 init];
  v3 = v2;
  if (v2)
  {
    numberOfTransitionsForSequence = v2->_numberOfTransitionsForSequence;
    v2->_numberOfTransitionsForSequence = &unk_284C3E4C8;

    dayOfWeekForSequence = v3->_dayOfWeekForSequence;
    v3->_dayOfWeekForSequence = &unk_284C3E4C8;

    modeForSequence = v3->_modeForSequence;
    v3->_modeForSequence = &unk_284C3E4C8;

    array = [MEMORY[0x277CBEA60] array];
    transitions = v3->_transitions;
    v3->_transitions = array;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRThermostatClusterSetWeeklyScheduleParams);
  numberOfTransitionsForSequence = [(MTRThermostatClusterSetWeeklyScheduleParams *)self numberOfTransitionsForSequence];
  [(MTRThermostatClusterSetWeeklyScheduleParams *)v4 setNumberOfTransitionsForSequence:numberOfTransitionsForSequence];

  dayOfWeekForSequence = [(MTRThermostatClusterSetWeeklyScheduleParams *)self dayOfWeekForSequence];
  [(MTRThermostatClusterSetWeeklyScheduleParams *)v4 setDayOfWeekForSequence:dayOfWeekForSequence];

  modeForSequence = [(MTRThermostatClusterSetWeeklyScheduleParams *)self modeForSequence];
  [(MTRThermostatClusterSetWeeklyScheduleParams *)v4 setModeForSequence:modeForSequence];

  transitions = [(MTRThermostatClusterSetWeeklyScheduleParams *)self transitions];
  [(MTRThermostatClusterSetWeeklyScheduleParams *)v4 setTransitions:transitions];

  timedInvokeTimeoutMs = [(MTRThermostatClusterSetWeeklyScheduleParams *)self timedInvokeTimeoutMs];
  [(MTRThermostatClusterSetWeeklyScheduleParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRThermostatClusterSetWeeklyScheduleParams *)self serverSideProcessingTimeout];
  [(MTRThermostatClusterSetWeeklyScheduleParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: numberOfTransitionsForSequence:%@ dayOfWeekForSequence:%@; modeForSequence:%@; transitions:%@; >", v5, self->_numberOfTransitionsForSequence, self->_dayOfWeekForSequence, self->_modeForSequence, self->_transitions];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v31 = *MEMORY[0x277D85DE8];
  v22 = 0;
  unsignedCharValue = 0;
  v24 = 0;
  v25 = 0;
  v21[0] = 0;
  v21[1] = 0;
  v20 = v21;
  numberOfTransitionsForSequence = [(MTRThermostatClusterSetWeeklyScheduleParams *)self numberOfTransitionsForSequence];
  LOBYTE(v22) = [numberOfTransitionsForSequence unsignedCharValue];

  dayOfWeekForSequence = [(MTRThermostatClusterSetWeeklyScheduleParams *)self dayOfWeekForSequence];
  HIBYTE(v22) = [dayOfWeekForSequence unsignedCharValue];

  modeForSequence = [(MTRThermostatClusterSetWeeklyScheduleParams *)self modeForSequence];
  unsignedCharValue = [modeForSequence unsignedCharValue];

  transitions = [(MTRThermostatClusterSetWeeklyScheduleParams *)self transitions];
  v8 = [transitions count] == 0;

  if (!v8)
  {
    operator new();
  }

  v24 = 0;
  v25 = 0;
  sub_2393D9C18(0x62FuLL, 0, &v19);
  if (v19)
  {
    sub_2393C7B90(buf);
    v28 = 0;
    v29 = 0;
    v27 = &unk_284BB83A8;
    v30 = 0;
    sub_238EA16C4(&v27, &v19, 0);
    sub_2393C7BF0(buf, &v27, 0xFFFFFFFF);
    v9 = sub_238F29C80(&v22, buf, 0x100uLL);
    v11 = v9;
    if (v9 || (v9 = sub_238DD2EFC(buf, &v19), v11 = v9, v9))
    {
      v12 = v10;
    }

    else
    {
      sub_238DD2F90(reader, &v19);
      v9 = sub_2393C7114(reader, 21, 256);
      v12 = v17;
      v11 = v9;
    }

    v13 = v9 & 0xFFFFFFFF00000000;
    v27 = &unk_284BB83A8;
    sub_238EA1758(&v29);
    sub_238EA1758(&v28);
  }

  else
  {
    v13 = 0x5D3000000000;
    v12 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v11 = 11;
  }

  sub_238EA1758(&v19);
  sub_238EA1790(&v20);
  v14 = *MEMORY[0x277D85DE8];
  v15 = v11 | v13;
  v16 = v12;
  result.mFile = v16;
  result.mError = v15;
  result.mLine = HIDWORD(v15);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRThermostatClusterSetWeeklyScheduleParams *)self _encodeToTLVReader:v12, v5];
  if (v7)
  {
    if (value)
    {
      v8 = sub_23921C1E4(MTRError, v7, v6);
      v9 = 0;
LABEL_7:
      *value = v8;
      goto LABEL_9;
    }

    v9 = 0;
  }

  else
  {
    v10 = sub_238EE60DC(v12, 0);
    v9 = v10;
    if (value && !v10)
    {
      v8 = sub_23921C1E4(MTRError, 0x5D4D00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end