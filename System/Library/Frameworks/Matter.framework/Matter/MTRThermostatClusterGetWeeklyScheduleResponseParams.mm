@interface MTRThermostatClusterGetWeeklyScheduleResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRThermostatClusterGetWeeklyScheduleResponseParams)init;
- (MTRThermostatClusterGetWeeklyScheduleResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRThermostatClusterGetWeeklyScheduleResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRThermostatClusterGetWeeklyScheduleResponseParams

- (MTRThermostatClusterGetWeeklyScheduleResponseParams)init
{
  v11.receiver = self;
  v11.super_class = MTRThermostatClusterGetWeeklyScheduleResponseParams;
  v2 = [(MTRThermostatClusterGetWeeklyScheduleResponseParams *)&v11 init];
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
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRThermostatClusterGetWeeklyScheduleResponseParams);
  numberOfTransitionsForSequence = [(MTRThermostatClusterGetWeeklyScheduleResponseParams *)self numberOfTransitionsForSequence];
  [(MTRThermostatClusterGetWeeklyScheduleResponseParams *)v4 setNumberOfTransitionsForSequence:numberOfTransitionsForSequence];

  dayOfWeekForSequence = [(MTRThermostatClusterGetWeeklyScheduleResponseParams *)self dayOfWeekForSequence];
  [(MTRThermostatClusterGetWeeklyScheduleResponseParams *)v4 setDayOfWeekForSequence:dayOfWeekForSequence];

  modeForSequence = [(MTRThermostatClusterGetWeeklyScheduleResponseParams *)self modeForSequence];
  [(MTRThermostatClusterGetWeeklyScheduleResponseParams *)v4 setModeForSequence:modeForSequence];

  transitions = [(MTRThermostatClusterGetWeeklyScheduleResponseParams *)self transitions];
  [(MTRThermostatClusterGetWeeklyScheduleResponseParams *)v4 setTransitions:transitions];

  timedInvokeTimeoutMs = [(MTRThermostatClusterGetWeeklyScheduleResponseParams *)self timedInvokeTimeoutMs];
  [(MTRThermostatClusterGetWeeklyScheduleResponseParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

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

- (MTRThermostatClusterGetWeeklyScheduleResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v17.receiver = self;
  v17.super_class = MTRThermostatClusterGetWeeklyScheduleResponseParams;
  v7 = [(MTRThermostatClusterGetWeeklyScheduleResponseParams *)&v17 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:513 commandID:0 error:error];
  if (v16)
  {
    sub_2393C5AAC(v15);
    sub_2393C5ADC(v15, *(v16 + 1), *(v16 + 3));
    v8 = sub_2393C6FD0(v15, 256);
    if (!v8)
    {
      v12 = 0;
      v13 = 0;
      sub_2393C5AAC(v14);
      sub_2393C5ADC(v14, 0, 0);
      v8 = sub_238F29BA8(&v12, v15);
      if (!v8)
      {
        v8 = [(MTRThermostatClusterGetWeeklyScheduleResponseParams *)v7 _setFieldsFromDecodableStruct:&v12];
        if (!v8)
        {
          v10 = v7;
          goto LABEL_8;
        }
      }
    }

    sub_238DD3F98(v8, v9, error);
  }

  v10 = 0;
LABEL_8:
  sub_238EA1758(&v16);
LABEL_10:

  return v10;
}

- (MTRThermostatClusterGetWeeklyScheduleResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRThermostatClusterGetWeeklyScheduleResponseParams;
  v4 = [(MTRThermostatClusterGetWeeklyScheduleResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRThermostatClusterGetWeeklyScheduleResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
    if (!v6)
    {
      v8 = v5;
      goto LABEL_6;
    }

    sub_238DD3F98(v6, v7, 0);
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*struct];
  [(MTRThermostatClusterGetWeeklyScheduleResponseParams *)self setNumberOfTransitionsForSequence:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(struct + 1)];
  [(MTRThermostatClusterGetWeeklyScheduleResponseParams *)self setDayOfWeekForSequence:v6];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(struct + 2)];
  [(MTRThermostatClusterGetWeeklyScheduleResponseParams *)self setModeForSequence:v7];

  v8 = objc_opt_new();
  sub_2393C5AAC(v22);
  v20 = 0;
  v21 = 0;
  sub_2393C5BDC(v22, struct + 8);
  LOWORD(v23) = 0;
  BYTE2(v23) = 0;
  BYTE4(v23) = 0;
  BYTE6(v23) = 0;
  LOBYTE(v24) = 0;
  while (1)
  {
    v9 = sub_238EA1A80(&v20);
    LODWORD(v10) = v20;
    if (v20)
    {
      v9 = 0;
    }

    if (!v9)
    {
      break;
    }

    v24 = 0;
    v23 = 0;
    v10 = sub_238F2BADC(&v23, v22);
    v20 = v10;
    v21 = v11;
    if (v10)
    {
      break;
    }

    v12 = objc_opt_new();
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v23];
    [v12 setTransitionTime:v13];

    if ((v23 & 0x100000000) != 0)
    {
      v14 = [MEMORY[0x277CCABB0] numberWithShort:SWORD1(v23)];
      [v12 setHeatSetpoint:v14];
    }

    else
    {
      [v12 setHeatSetpoint:0];
    }

    if (v24)
    {
      v15 = [MEMORY[0x277CCABB0] numberWithShort:SHIWORD(v23)];
      [v12 setCoolSetpoint:v15];
    }

    else
    {
      [v12 setCoolSetpoint:0];
    }

    [v8 addObject:v12];
  }

  if (v10 == 33 || (v16 = v20, !v20))
  {
    [(MTRThermostatClusterGetWeeklyScheduleResponseParams *)self setTransitions:v8];

    v17 = 0;
    v16 = 0;
  }

  else
  {
    v17 = v21;
  }

  v18 = v16;
  v19 = v17;
  result.mFile = v19;
  result.mError = v18;
  result.mLine = HIDWORD(v18);
  return result;
}

@end