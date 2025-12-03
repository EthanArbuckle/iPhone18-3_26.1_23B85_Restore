@interface CCIDSlot
- (BOOL)PPSForProtocol:(unint64_t)protocol withFIndexDindex:(id)dindex andSPU:(id)u;
- (BOOL)allowAlternativeFiDi;
- (BOOL)engine:(id)engine powerDownWithEject:(BOOL)eject;
- (BOOL)simulateCardReinsertion;
- (id)changePINSecure:(id)secure error:(id *)error;
- (id)coldResetCard;
- (id)engine:(id)engine escape:(id)escape;
- (id)engine:(id)engine runUserInteraction:(id)interaction error:(id *)error;
- (id)engine:(id)engine transmit:(id)transmit;
- (id)engineResetCard:(id)card;
- (id)escapeCommand:(id)command;
- (id)findSuitableFDIndexes:(id)indexes;
- (id)findSuitableFIndexDIndex:(id)index;
- (id)getCardsNeedsBaseFiDi;
- (id)getClockFrequencies;
- (id)getDataRates;
- (id)getParameters;
- (id)receiveMessageWitMaxPayload:(unint64_t)payload sequenceNumber:(unsigned __int8)number duplicateMessage:(unsigned __int8)message timeout:(id)timeout;
- (id)resetParameters;
- (id)setParameters:(id)parameters;
- (id)transmitAndReceive:(id)receive maxPayload:(unint64_t)payload sequence:(id)sequence outTimeout:(id)timeout inTimeout:(id)inTimeout transmitted:(id)transmitted;
- (id)verifyPINSecure:(id)secure error:(id *)error;
- (id)warmResetCard;
- (unint64_t)engine:(id)engine setProtocol:(unint64_t)protocol;
- (unint64_t)setProtocol:(unint64_t)protocol;
- (unint64_t)setProtocol_v1:(unint64_t)protocol_v1;
- (unint64_t)setProtocol_v2:(unint64_t)protocol_v2;
- (unsigned)PPSVersion;
- (void)cardNeedsBaseFiDi:(id)di;
- (void)didWakeUpOnEngine:(id)engine;
- (void)sendAnalyticsFailure:(unsigned __int8)failure;
- (void)setDataRateAndClockFrequency:(id)frequency;
- (void)willSleepOnEngine:(id)engine;
@end

@implementation CCIDSlot

- (void)sendAnalyticsFailure:(unsigned __int8)failure
{
  if (failure > 5u)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1000247A0[failure];
  }

  v4 = v3;
  AnalyticsSendEventLazy();
}

- (id)warmResetCard
{
  v3 = sub_100002620();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000146FC();
  }

  v4 = [CCIDMessageView create:98];
  v5 = v4;
  if (self->_lastICCClass == 4)
  {
    lastICCClass = 3;
  }

  else
  {
    lastICCClass = self->_lastICCClass;
  }

  [v4 setBPowerSelect:lastICCClass];
  v7 = [(CCIDSlot *)self transmitAndReceive:v5 maxPayload:33 transmitted:0];
  if ([v7 messageType] == 128 && (objc_msgSend(v7, "status"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "bmCommandStatus"), v8, !v9))
  {
    v15 = [TKSmartCardATR alloc];
    aPayload = [v7 aPayload];
    v17 = [v15 initWithBytes:aPayload];
    lastATR = self->_lastATR;
    self->_lastATR = v17;

    p_super = sub_100002620();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
    {
      sub_100014774(&self->_lastATR);
    }
  }

  else
  {
    v10 = sub_100002620();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100014738();
    }

    [(CCIDSlot *)self sendAnalyticsFailure:0];
    p_super = &self->_lastATR->super;
    self->_lastATR = 0;
  }

  v12 = self->_lastATR;
  v13 = v12;

  return v12;
}

- (id)coldResetCard
{
  v3 = sub_100002620();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100014830();
  }

  v4 = [CCIDMessageView create:98];
  device = [(Slot *)self device];
  cCIDDescriptor = [device CCIDDescriptor];
  automaticICCActivation = [cCIDDescriptor automaticICCActivation];

  if (automaticICCActivation)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  else
  {
    device2 = [(Slot *)self device];
    cCIDDescriptor2 = [device2 CCIDDescriptor];
    if ([cCIDDescriptor2 bVoltageSupport])
    {

      v8 = 1;
      v9 = 1;
      v10 = 1;
    }

    else
    {
      device3 = [(Slot *)self device];
      cCIDDescriptor3 = [device3 CCIDDescriptor];
      bVoltageSupport = [cCIDDescriptor3 bVoltageSupport];
      if ((bVoltageSupport & 2) != 0)
      {
        v9 = bVoltageSupport & 2;
      }

      else
      {
        device4 = [(Slot *)self device];
        cCIDDescriptor4 = [device4 CCIDDescriptor];
        v9 = [cCIDDescriptor4 bVoltageSupport] & 4;
      }

      v8 = v9;
      if (v9 == 4)
      {
        v10 = 3;
      }

      else
      {
        v10 = v9;
      }
    }
  }

  [v4 setBPowerSelect:v10];
  v18 = [(CCIDSlot *)self transmitAndReceive:v4 maxPayload:33 transmitted:0];
  messageType = [v18 messageType];
  v20 = sub_100002620();
  v21 = v20;
  if (messageType != 128)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100014738();
    }

    selfCopy2 = self;
    v28 = 0;
    goto LABEL_24;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    sub_10001486C(v18);
  }

  device5 = [(Slot *)self device];
  cCIDDescriptor5 = [device5 CCIDDescriptor];
  if ([cCIDDescriptor5 automaticICCActivation])
  {
    status = [v18 status];
    bmICCStatus = [status bmICCStatus];

    if (bmICCStatus)
    {
      v26 = sub_100002620();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_100014910();
      }

      selfCopy2 = self;
      v28 = 1;
LABEL_24:
      [(CCIDSlot *)selfCopy2 sendAnalyticsFailure:v28];
      v29 = 0;
      goto LABEL_72;
    }
  }

  else
  {
  }

  status2 = [v18 status];
  bmCommandStatus = [status2 bmCommandStatus];

  if (bmCommandStatus)
  {
    v32 = 0;
    v33 = 0;
  }

  else
  {
    v34 = [TKSmartCardATR alloc];
    aPayload = [v18 aPayload];
    v33 = [v34 initWithBytes:aPayload];

    v36 = [v33 interfaceGroupForProtocol:0x8000];
    v37 = [v36 TA];

    if (v37)
    {
      v32 = [v37 unsignedIntValue] & 7;
      v38 = sub_100002620();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        sub_10001494C();
      }
    }

    else
    {
      v32 = 0;
    }
  }

  device6 = [(Slot *)self device];
  cCIDDescriptor6 = [device6 CCIDDescriptor];
  automaticICCVoltageSelection = [cCIDDescriptor6 automaticICCVoltageSelection];

  if (automaticICCVoltageSelection)
  {
    status3 = [v18 status];
    bmCommandStatus2 = [status3 bmCommandStatus];

    if (!bmCommandStatus2)
    {
      goto LABEL_70;
    }

    v44 = sub_100002620();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      sub_100014BE4();
    }

    [(CCIDSlot *)self sendAnalyticsFailure:1];
    v29 = 0;
    goto LABEL_71;
  }

  if (v32)
  {
    v45 = v9 == 0;
    LOBYTE(v9) = 0;
    if (v45 || (v32 & v8) != 0)
    {
      goto LABEL_70;
    }

    device7 = [(Slot *)self device];
    cCIDDescriptor7 = [device7 CCIDDescriptor];
    v48 = [cCIDDescriptor7 bVoltageSupport] & v32;

    v49 = v48 & 4;
    if ((v48 & 2) != 0)
    {
      v49 = 2;
    }

    if (v48)
    {
      v9 = 1;
    }

    else
    {
      v9 = v49;
    }

    v50 = sub_100002620();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      sub_1000149BC();
    }
  }

  else
  {
    device8 = [(Slot *)self device];
    cCIDDescriptor8 = [device8 CCIDDescriptor];
    v9 &= [cCIDDescriptor8 bVoltageSupport];

    v50 = sub_100002620();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      sub_100014A2C();
    }
  }

  if (!v9)
  {
    goto LABEL_70;
  }

  v53 = 4;
  while (1)
  {
    if ((v53 & v9) == 0)
    {
      goto LABEL_64;
    }

    v54 = [CCIDMessageView create:99];
    v55 = [(CCIDSlot *)self transmitAndReceive:v54 maxPayload:10 transmitted:0];

    if ([v55 messageType] != 129)
    {
      break;
    }

    status4 = [v55 status];
    bmCommandStatus3 = [status4 bmCommandStatus];

    if (bmCommandStatus3)
    {
      break;
    }

    [NSThread sleepForTimeInterval:0.01];
    v58 = [CCIDMessageView create:98];
    v59 = v58;
    if (v53 == 4)
    {
      v60 = 3;
    }

    else
    {
      v60 = v9;
    }

    [v58 setBPowerSelect:v60];
    v18 = [(CCIDSlot *)self transmitAndReceive:v59 maxPayload:33 transmitted:0];

    if ([v18 messageType] == 128)
    {
      status5 = [v18 status];
      bmCommandStatus4 = [status5 bmCommandStatus];

      if (!bmCommandStatus4)
      {
        v66 = [TKSmartCardATR alloc];
        aPayload2 = [v18 aPayload];
        v33 = [v66 initWithBytes:aPayload2];

        v68 = sub_100002620();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
        {
          sub_100014B40(v33);
        }

        goto LABEL_69;
      }
    }

    v63 = sub_100002620();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      sub_100014AE0(&v69, v59);
    }

LABEL_64:
    v64 = v53 >= 2;
    v53 >>= 1;
    if (!v64)
    {
      v33 = 0;
      goto LABEL_70;
    }
  }

  v59 = sub_100002620();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
  {
    sub_100014AA4();
  }

  v33 = 0;
  v18 = v55;
LABEL_69:

LABEL_70:
  objc_storeStrong(&self->_lastATR, v33);
  self->_lastICCClass = v9;
  v29 = self->_lastATR;
LABEL_71:

LABEL_72:

  return v29;
}

- (id)engineResetCard:(id)card
{
  cardCopy = card;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_100002ED4;
  v13 = sub_100002EE4;
  v14 = 0;
  synchronize = [(Slot *)self synchronize];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100002EEC;
  v8[3] = &unk_100024560;
  v8[4] = self;
  v8[5] = &v9;
  [synchronize sync:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)getDataRates
{
  v3 = sub_100002620();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100014C98(self);
  }

  device = [(Slot *)self device];
  cCIDDescriptor = [device CCIDDescriptor];
  bNumDataRatesSupported = [cCIDDescriptor bNumDataRatesSupported];

  if (bNumDataRatesSupported)
  {
    v31 = 0;
    device2 = [(Slot *)self device];
    cCIDDescriptor2 = [device2 CCIDDescriptor];
    v9 = +[NSMutableData dataWithLength:](NSMutableData, "dataWithLength:", 4 * [cCIDDescriptor2 bNumDataRatesSupported]);

    device3 = [(Slot *)self device];
    interface = [device3 interface];
    v12 = *([interface interfaceDescriptor] + 8);
    v13 = [v9 length];

    device4 = [(Slot *)self device];
    interface2 = [device4 interface];
    v30 = 0;
    LODWORD(v13) = [interface2 sendDeviceRequest:(v12 << 32) | (v13 << 48) | 0x3A1 data:v9 bytesTransferred:&v31 error:&v30];
    v16 = v30;

    if (v13)
    {
      device5 = [(Slot *)self device];
      cCIDDescriptor3 = [device5 CCIDDescriptor];
      v19 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [cCIDDescriptor3 bNumDataRatesSupported]);

      device6 = [(Slot *)self device];
      cCIDDescriptor4 = [device6 CCIDDescriptor];
      bNumDataRatesSupported2 = [cCIDDescriptor4 bNumDataRatesSupported];

      if (bNumDataRatesSupported2)
      {
        v23 = 0;
        do
        {
          v24 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *([v9 bytes] + v23));
          [v19 addObject:v24];

          ++v23;
          device7 = [(Slot *)self device];
          cCIDDescriptor5 = [device7 CCIDDescriptor];
          bNumDataRatesSupported3 = [cCIDDescriptor5 bNumDataRatesSupported];
        }

        while (v23 < bNumDataRatesSupported3);
      }

      v28 = [v19 sortedArrayUsingComparator:&stru_1000245A0];
    }

    else
    {
      v19 = sub_100002620();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100014D40();
      }

      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (id)getClockFrequencies
{
  v3 = sub_100002620();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100014DB0(self);
  }

  device = [(Slot *)self device];
  cCIDDescriptor = [device CCIDDescriptor];
  bNumClockSupported = [cCIDDescriptor bNumClockSupported];

  if (bNumClockSupported)
  {
    v31 = 0;
    device2 = [(Slot *)self device];
    cCIDDescriptor2 = [device2 CCIDDescriptor];
    v9 = +[NSMutableData dataWithLength:](NSMutableData, "dataWithLength:", 4 * [cCIDDescriptor2 bNumClockSupported]);

    device3 = [(Slot *)self device];
    interface = [device3 interface];
    v12 = *([interface interfaceDescriptor] + 8);
    v13 = [v9 length];

    device4 = [(Slot *)self device];
    interface2 = [device4 interface];
    v30 = 0;
    LODWORD(v13) = [interface2 sendDeviceRequest:(v12 << 32) | (v13 << 48) | 0x2A1 data:v9 bytesTransferred:&v31 error:&v30];
    v16 = v30;

    if (v13)
    {
      device5 = [(Slot *)self device];
      cCIDDescriptor3 = [device5 CCIDDescriptor];
      v19 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [cCIDDescriptor3 bNumDataRatesSupported]);

      device6 = [(Slot *)self device];
      cCIDDescriptor4 = [device6 CCIDDescriptor];
      bNumClockSupported2 = [cCIDDescriptor4 bNumClockSupported];

      if (bNumClockSupported2)
      {
        v23 = 0;
        do
        {
          v24 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *([v9 bytes] + v23));
          [v19 addObject:v24];

          ++v23;
          device7 = [(Slot *)self device];
          cCIDDescriptor5 = [device7 CCIDDescriptor];
          bNumClockSupported3 = [cCIDDescriptor5 bNumClockSupported];
        }

        while (v23 < bNumClockSupported3);
      }

      v28 = [v19 sortedArrayUsingComparator:&stru_1000245C0];
    }

    else
    {
      v19 = sub_100002620();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100014D40();
      }

      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (BOOL)engine:(id)engine powerDownWithEject:(BOOL)eject
{
  engineCopy = engine;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  synchronize = [(Slot *)self synchronize];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100003828;
  v10[3] = &unk_1000245E8;
  ejectCopy = eject;
  v10[4] = self;
  v10[5] = &v12;
  [synchronize sync:v10];

  v8 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return v8;
}

- (id)getParameters
{
  v3 = [CCIDMessageView create:108];
  v4 = [(CCIDSlot *)self transmitAndReceive:v3 maxPayload:+[ProtocolT1DataView transmitted:"length"], 0];

  if ([v4 messageType] == 130 && (objc_msgSend(v4, "status"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "bmCommandStatus"), v5, !v6))
  {
    aPayload = [v4 aPayload];
    v11 = [aPayload length];
    v12 = off_100024348;
    v13 = +[ProtocolT0DataView length];

    if (v11 == v13 || ([v4 aPayload], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v12 = off_100024350, v16 = +[ProtocolT1DataView length](ProtocolT1DataView, "length"), v14, v15 == v16))
    {
      v17 = *v12;
      aPayload2 = [v4 aPayload];
      v8 = [(__objc2_class *)v17 createWithData:aPayload2];
    }

    else
    {
      v8 = 0;
    }

    v7 = sub_100002620();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100014FF4();
    }
  }

  else
  {
    v7 = sub_100002620();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100014F68(self);
    }

    v8 = 0;
  }

  return v8;
}

- (id)setParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = sub_100002620();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100015064(parametersCopy);
  }

  buffer = [parametersCopy buffer];
  v7 = [CCIDMessageView create:97 withPayload:buffer];

  v8 = objc_opt_class();
  [v7 setBProtocolNum:{objc_msgSend(v8, "isEqual:", objc_opt_class())}];
  v9 = [(CCIDSlot *)self transmitAndReceive:v7 maxPayload:0 transmitted:0];
  status = [v9 status];
  bmCommandStatus = [status bmCommandStatus];

  if (bmCommandStatus)
  {
    v12 = sub_100002620();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10001511C();
    }

    v13 = 0;
  }

  else if ([v9 messageType] == 130)
  {
    aPayload = [v9 aPayload];
    v15 = [aPayload length];
    v16 = off_100024348;
    v17 = +[ProtocolT0DataView length];

    if (v15 == v17 || ([v9 aPayload], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "length"), v16 = off_100024350, v20 = +[ProtocolT1DataView length](ProtocolT1DataView, "length"), v18, v19 == v20))
    {
      v21 = *v16;
      aPayload2 = [v9 aPayload];
      v13 = [(__objc2_class *)v21 createWithData:aPayload2];
    }

    else
    {
      v13 = 0;
    }

    v24 = sub_100002620();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      sub_100015194();
    }
  }

  else
  {
    v23 = sub_100002620();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      sub_100015158();
    }

    v13 = parametersCopy;
  }

  return v13;
}

- (id)resetParameters
{
  v3 = sub_100002620();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100015204();
  }

  v4 = [CCIDMessageView create:109];
  v5 = [(CCIDSlot *)self transmitAndReceive:v4 maxPayload:0 transmitted:0];
  if ([v5 messageType] == 130 && (objc_msgSend(v5, "status"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "bmCommandStatus"), v6, !v7))
  {
    aPayload = [v5 aPayload];
    v12 = [aPayload length];
    v13 = off_100024348;
    v14 = +[ProtocolT0DataView length];

    if (v12 == v14 || ([v5 aPayload], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "length"), v13 = off_100024350, v17 = +[ProtocolT1DataView length](ProtocolT1DataView, "length"), v15, v16 == v17))
    {
      v18 = *v13;
      aPayload2 = [v5 aPayload];
      v9 = [(__objc2_class *)v18 createWithData:aPayload2];
    }

    else
    {
      v9 = 0;
    }

    v8 = sub_100002620();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_10001527C();
    }
  }

  else
  {
    v8 = sub_100002620();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100015240();
    }

    v9 = 0;
  }

  return v9;
}

- (id)escapeCommand:(id)command
{
  commandCopy = command;
  v5 = sub_100002620();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000152EC();
  }

  v6 = [CCIDMessageView create:107 withPayload:commandCopy];
  v7 = [(CCIDSlot *)self transmitAndReceive:v6 maxPayload:0 transmitted:0];
  if ([v7 messageType] == 131 && (objc_msgSend(v7, "status"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "bmCommandStatus"), v8, !v9))
  {
    aPayload = [v7 aPayload];
  }

  else
  {
    v10 = sub_100002620();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10001535C();
    }

    aPayload = 0;
  }

  return aPayload;
}

- (BOOL)PPSForProtocol:(unint64_t)protocol withFIndexDindex:(id)dindex andSPU:(id)u
{
  dindexCopy = dindex;
  uCopy = u;
  if (protocol == 1 && [dindexCopy fIndexDIndex] == 17)
  {
    v10 = sub_100002620();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_100015408();
    }

    v11 = 1;
  }

  else
  {
    v12 = +[NSMutableData data];
    v10 = v12;
    v26 = -1;
    if (uCopy)
    {
      v13 = 48;
    }

    else
    {
      v13 = 16;
    }

    if (protocol == 2)
    {
      ++v13;
    }

    v25 = v13;
    [v12 appendBytes:&v26 length:1];
    [v10 appendBytes:&v25 length:1];
    fIndexDIndex = [dindexCopy fIndexDIndex];
    [v10 appendBytes:&fIndexDIndex length:1];
    if (uCopy)
    {
      unsignedCharValue = [uCopy unsignedCharValue];
      [v10 appendBytes:&unsignedCharValue length:1];
    }

    v22 = [RedundancyCheck lrc:v10];
    [v10 appendBytes:&v22 length:1];
    v14 = [NSMutableString stringWithFormat:@"PPSS: 0x%.2x", *[v10 bytes]];
    [v14 appendFormat:@" PPS0: 0x%.2x", *(-[NSObject bytes](v10, "bytes") + 1)];
    if ((*([v10 bytes]+ 1) & 0x10) != 0)
    {
      [v14 appendFormat:@" PPS1: 0x%.2x", *(-[NSObject bytes](v10, "bytes") + 2)];
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    if ((*([v10 bytes]+ 1) & 0x20) != 0)
    {
      [v14 appendFormat:@" PPS2: 0x%.2x", *(-[NSObject bytes](v10, "bytes") + v15++)];
    }

    [v14 appendFormat:@" PCK: 0x%.2x", *(-[NSObject bytes](v10, "bytes") + v15)];
    v16 = sub_100002620();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_100015398();
    }

    v17 = [CCIDMessageView create:111 withPayload:v10];
    [v17 setWLevelParameter:0];
    [v17 setBBWI:0];
    v18 = [(CCIDSlot *)self transmitAndReceive:v17 maxPayload:6 transmitted:0];
    status = [v18 status];
    v11 = 0;
    if (![status bmCommandStatus])
    {
      status2 = [v18 status];
      v11 = [status2 bmICCStatus] == 0;
    }
  }

  return v11;
}

- (unint64_t)setProtocol_v1:(unint64_t)protocol_v1
{
  v5 = sub_100002620();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100015444();
  }

  getParameters = [(CCIDSlot *)self getParameters];
  v6 = [(TKSmartCardATR *)self->_lastATR interfaceGroupAtIndex:1];
  v7 = [v6 TA];

  v8 = [(TKSmartCardATR *)self->_lastATR interfaceGroupForProtocol:0x8000];
  v9 = [v8 TA];

  if (v9 && (-[Slot device](self, "device"), v10 = objc_claimAutoreleasedReturnValue(), [v10 CCIDDescriptor], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "canSetClockStop"), v11, v10, v12))
  {
    v99 = [v9 unsignedCharValue] >> 6;
  }

  else
  {
    v99 = 0;
  }

  v13 = [(TKSmartCardATR *)self->_lastATR interfaceGroupAtIndex:1];
  v14 = [v13 TC];

  if (v14)
  {
    unsignedCharValue = [v14 unsignedCharValue];
  }

  else
  {
    unsignedCharValue = 0;
  }

  v15 = [(TKSmartCardATR *)self->_lastATR interfaceGroupAtIndex:2];
  v16 = [v15 TC];

  if (v16)
  {
    unsignedCharValue2 = [v16 unsignedCharValue];
  }

  else
  {
    unsignedCharValue2 = 10;
  }

  v17 = [(TKSmartCardATR *)self->_lastATR interfaceGroupForProtocol:2];
  v18 = [v17 TA];

  v104 = v14;
  if (v18)
  {
    unsignedCharValue3 = [v18 unsignedCharValue];
  }

  else
  {
    unsignedCharValue3 = 32;
  }

  v20 = [(TKSmartCardATR *)self->_lastATR interfaceGroupForProtocol:2];
  v21 = [v20 TB];

  v103 = v16;
  if (v21)
  {
    unsignedCharValue4 = [v21 unsignedCharValue];
  }

  else
  {
    unsignedCharValue4 = 77;
  }

  v22 = [(TKSmartCardATR *)self->_lastATR interfaceGroupForProtocol:2];
  v23 = [v22 TC];

  v24 = v23;
  v25 = 16;
  v106 = v21;
  v107 = v18;
  v102 = v24;
  if (v24)
  {
    v25 = [v24 unsignedCharValue] & 1 | 0x10;
  }

  device = [(Slot *)self device];
  cCIDDescriptor = [device CCIDDescriptor];
  dwMaxIFSD = [cCIDDescriptor dwMaxIFSD];

  if (unsignedCharValue3 >= dwMaxIFSD)
  {
    v29 = dwMaxIFSD;
  }

  else
  {
    v29 = unsignedCharValue3;
  }

  v97 = v29;
  v30 = [(TKSmartCardATR *)self->_lastATR interfaceGroupAtIndex:2];
  v31 = [v30 TA];

  v101 = v31;
  if (v31)
  {
    v32 = v7;
    v100 = v9;
    v33 = (1 << [v31 unsignedCharValue]) & 0xF;
    v34 = getParameters;
    goto LABEL_48;
  }

  protocol_v1Copy = protocol_v1;
  device2 = [(Slot *)self device];
  cCIDDescriptor2 = [device2 CCIDDescriptor];
  if ([cCIDDescriptor2 levelOfExchange] != 2)
  {
    device3 = [(Slot *)self device];
    cCIDDescriptor3 = [device3 CCIDDescriptor];
    [cCIDDescriptor3 levelOfExchange];
  }

  v39 = [(CCIDSlot *)self findSuitableFIndexDIndex:v7];
  device4 = [(Slot *)self device];
  cCIDDescriptor4 = [device4 CCIDDescriptor];
  v94 = v7;
  if (([cCIDDescriptor4 automaticPPS]& 1) != 0)
  {
    v34 = getParameters;
LABEL_30:

    goto LABEL_32;
  }

  device5 = [(Slot *)self device];
  [device5 CCIDDescriptor];
  v44 = v43 = v9;
  automaticParametersNegotation = [v44 automaticParametersNegotation];

  v9 = v43;
  v34 = getParameters;
  if ((automaticParametersNegotation & 1) == 0)
  {
    v50 = [(TKSmartCardATR *)self->_lastATR interfaceGroupForProtocol:0x8000];
    cCIDDescriptor4 = [v50 TB];

    if (cCIDDescriptor4)
    {
      v51 = protocol_v1Copy;
      v49 = v94;
      if (([cCIDDescriptor4 unsignedCharValue]& 0x80) != 0 && ([cCIDDescriptor4 unsignedCharValue]& 0x7F) != 0)
      {
        device4 = [NSNumber numberWithInt:[cCIDDescriptor4 unsignedCharValue]& 0x7F];
      }

      else
      {
        device4 = 0;
      }
    }

    else
    {
      device4 = 0;
      v51 = protocol_v1Copy;
      v49 = v94;
    }

    if (![(CCIDSlot *)self PPSForProtocol:v51 withFIndexDindex:v39 andSPU:device4])
    {
      v90 = sub_100002620();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
      {
        sub_1000154B4(v39);
      }

      bytes = [(TKSmartCardATR *)self->_lastATR bytes];
      hexString = [bytes hexString];
      [(CCIDSlot *)self cardNeedsBaseFiDi:hexString];

      goto LABEL_80;
    }

    goto LABEL_30;
  }

LABEL_32:
  device6 = [(Slot *)self device];
  cCIDDescriptor5 = [device6 CCIDDescriptor];
  automaticParametersNegotation2 = [cCIDDescriptor5 automaticParametersNegotation];

  if ((automaticParametersNegotation2 & 1) == 0)
  {
    v49 = v94;
    if (protocol_v1Copy == 1)
    {
      device4 = objc_opt_new();
      [device4 setBmFindexDindex:{-[NSObject fIndexDIndex](v39, "fIndexDIndex")}];
      [device4 setBClockStop:v99];
      [device4 setBmTCCKS:0];
      [device4 setBGuardTime:unsignedCharValue];
      [device4 setBWaitingInteger:unsignedCharValue2];
    }

    else if (protocol_v1Copy == 2)
    {
      device4 = objc_opt_new();
      [device4 setBmFindexDindex:{-[NSObject fIndexDIndex](v39, "fIndexDIndex")}];
      [device4 setBClockStop:v99];
      [device4 setBmTCCKS:v25];
      [device4 setBGuardTime:unsignedCharValue];
      [device4 setBmWaitingIntegers:unsignedCharValue4];
      [device4 setBIFSC:v97];
      [device4 setBNadValue:0];
    }

    else
    {
      device4 = 0;
    }

    v52 = [(CCIDSlot *)self setParameters:device4];

    if (v52)
    {
      v32 = v94;
      v100 = v9;
      v53 = objc_opt_class();
      if ([v53 isEqual:objc_opt_class()])
      {
        v33 = 2;
      }

      else
      {
        v33 = 1;
      }

      v34 = v52;
      goto LABEL_47;
    }

    cCIDDescriptor4 = sub_100002620();
    if (os_log_type_enabled(cCIDDescriptor4, OS_LOG_TYPE_ERROR))
    {
      sub_100015534();
    }

    v34 = 0;
LABEL_80:
    v67 = v103;

    v65 = 0;
    v59 = v106;
    v64 = v107;
    goto LABEL_63;
  }

  v100 = v9;
  v33 = protocol_v1Copy;
  v32 = v94;
LABEL_47:

LABEL_48:
  device7 = [(Slot *)self device];
  cCIDDescriptor6 = [device7 CCIDDescriptor];
  if (([cCIDDescriptor6 automaticICCClockFrequency] & 1) == 0)
  {

    v59 = v106;
    goto LABEL_52;
  }

  device8 = [(Slot *)self device];
  cCIDDescriptor7 = [device8 CCIDDescriptor];
  automaticBaudRateChange = [cCIDDescriptor7 automaticBaudRateChange];

  v59 = v106;
  if ((automaticBaudRateChange & 1) == 0)
  {
LABEL_52:
    v60 = +[CCIDFiAndDi createWithFIndexDIndex:](CCIDFiAndDi, "createWithFIndexDIndex:", [v34 bmFindexDindex]);
    [(CCIDSlot *)self setDataRateAndClockFrequency:v60];
  }

  device9 = [(Slot *)self device];
  cCIDDescriptor8 = [device9 CCIDDescriptor];
  levelOfExchange = [cCIDDescriptor8 levelOfExchange];

  if (levelOfExchange != 1)
  {
    v75 = [[APDUMapping alloc] initWithTransmitter:self];
    mapping = self->_mapping;
    self->_mapping = v75;
    v9 = v100;
    v67 = v103;
    v64 = v107;
    v65 = v33;
    goto LABEL_60;
  }

  v64 = v107;
  if (v33 != 1)
  {
    bmTCCKS = [v34 bmTCCKS];
    v77 = +[CCIDFiAndDi createWithFIndexDIndex:](CCIDFiAndDi, "createWithFIndexDIndex:", [v34 bmFindexDindex]);
    if (!v77)
    {
      v39 = sub_100002620();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_1000155A4();
      }

      v65 = 0;
      v9 = v100;
      v67 = v103;
      v49 = v32;
      goto LABEL_63;
    }

    mapping = v77;
    v78 = ldexp(1.0, unsignedCharValue4 >> 4) * 960.0 * 372.0;
    v79 = (v78 / (1000 * [(APDUMapping *)mapping fMax]) + 11.0);
    v80 = [(APDUMapping *)mapping Fi];
    *&v78 = (v80 / [(APDUMapping *)mapping Di]);
    *&v78 = (1.0 / (1000 * [(APDUMapping *)mapping fMax])) * *&v78;
    v81 = [T1TPDUMapping alloc];
    device10 = [(Slot *)self device];
    cCIDDescriptor9 = [device10 CCIDDescriptor];
    automaticIFSD = [cCIDDescriptor9 automaticIFSD];
    *&v85 = *&v78 * v79;
    v86 = v81;
    v64 = v107;
    v87 = [(T1TPDUMapping *)v86 initWithTransmitter:self autoIfs:automaticIFSD ifs:v97 redundancyCode:bmTCCKS & 1 bwt:v85];
    v88 = self->_mapping;
    self->_mapping = v87;

    v65 = v33;
    v59 = v106;
    v9 = v100;
    v67 = v103;
LABEL_60:
    v49 = v32;
LABEL_61:

    v39 = sub_100002620();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      sub_100015614();
    }

    goto LABEL_63;
  }

  v65 = 1;
  v66 = +[CCIDFiAndDi createWithFIndexDIndex:](CCIDFiAndDi, "createWithFIndexDIndex:", [v34 bmFindexDindex]);
  v67 = v103;
  v49 = v32;
  if (v66)
  {
    mapping = v66;
    v69 = [(APDUMapping *)v66 Fi];
    v70 = (v69 / (1000 * [(APDUMapping *)mapping fMax])) * unsignedCharValue2;
    v71 = [APDUMapping alloc];
    *&v72 = v70;
    v73 = [(APDUMapping *)v71 initWithTransmitter:self wt:v72];
    v74 = self->_mapping;
    self->_mapping = v73;

    v9 = v100;
    goto LABEL_61;
  }

  v39 = sub_100002620();
  v9 = v100;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    sub_100015684();
  }

  v65 = 0;
LABEL_63:

  return v65;
}

- (unint64_t)setProtocol_v2:(unint64_t)protocol_v2
{
  v5 = sub_100002620();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100015444();
  }

  getParameters = [(CCIDSlot *)self getParameters];
  v7 = [(TKSmartCardATR *)self->_lastATR interfaceGroupAtIndex:1];
  v8 = [v7 TA];

  v9 = [(TKSmartCardATR *)self->_lastATR interfaceGroupForProtocol:0x8000];
  v10 = [v9 TA];

  if (v10 && (-[Slot device](self, "device"), v11 = objc_claimAutoreleasedReturnValue(), [v11 CCIDDescriptor], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "canSetClockStop"), v12, v11, v13))
  {
    v106 = [v10 unsignedCharValue] >> 6;
  }

  else
  {
    v106 = 0;
  }

  v14 = [(TKSmartCardATR *)self->_lastATR interfaceGroupAtIndex:1];
  v15 = [v14 TC];

  if (v15)
  {
    unsignedCharValue = [v15 unsignedCharValue];
  }

  else
  {
    unsignedCharValue = 0;
  }

  v16 = [(TKSmartCardATR *)self->_lastATR interfaceGroupAtIndex:2];
  v17 = [v16 TC];

  if (v17)
  {
    unsignedCharValue2 = [v17 unsignedCharValue];
  }

  else
  {
    unsignedCharValue2 = 10;
  }

  v18 = [(TKSmartCardATR *)self->_lastATR interfaceGroupForProtocol:2];
  v19 = [v18 TA];

  v96 = v19;
  v97 = v17;
  if (v19)
  {
    unsignedCharValue3 = [v19 unsignedCharValue];
  }

  else
  {
    unsignedCharValue3 = 32;
  }

  v21 = [(TKSmartCardATR *)self->_lastATR interfaceGroupForProtocol:2];
  v22 = [v21 TB];

  v95 = v22;
  if (v22)
  {
    unsignedCharValue4 = [v22 unsignedCharValue];
  }

  else
  {
    unsignedCharValue4 = 77;
  }

  v23 = [(TKSmartCardATR *)self->_lastATR interfaceGroupForProtocol:2];
  v24 = [v23 TC];

  v99 = v10;
  v94 = v24;
  if (v24)
  {
    v100 = [v24 unsignedCharValue] & 1 | 0x10;
  }

  else
  {
    v100 = 16;
  }

  device = [(Slot *)self device];
  cCIDDescriptor = [device CCIDDescriptor];
  dwMaxIFSD = [cCIDDescriptor dwMaxIFSD];

  if (unsignedCharValue3 >= dwMaxIFSD)
  {
    v28 = dwMaxIFSD;
  }

  else
  {
    v28 = unsignedCharValue3;
  }

  v102 = v28;
  v29 = [(TKSmartCardATR *)self->_lastATR interfaceGroupAtIndex:2];
  v30 = [v29 TA];

  v98 = v15;
  v93 = v30;
  if (v30)
  {
    protocol_v2Copy = (1 << ([v30 unsignedCharValue] & 0xF));
    v32 = sub_100002620();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      sub_1000156F4();
    }

    goto LABEL_73;
  }

  [(CCIDSlot *)self findSuitableFDIndexes:v8];
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  obj = v113 = 0u;
  v108 = [obj countByEnumeratingWithState:&v110 objects:v116 count:16];
  if (!v108)
  {
    protocol_v2 = 0;
LABEL_72:
    protocol_v2Copy = protocol_v2;
    v32 = obj;

LABEL_73:
    device2 = [(Slot *)self device];
    cCIDDescriptor2 = [device2 CCIDDescriptor];
    if ([cCIDDescriptor2 automaticICCClockFrequency])
    {
      device3 = [(Slot *)self device];
      cCIDDescriptor3 = [device3 CCIDDescriptor];
      automaticBaudRateChange = [cCIDDescriptor3 automaticBaudRateChange];

      if (automaticBaudRateChange)
      {
LABEL_78:
        device4 = [(Slot *)self device];
        cCIDDescriptor4 = [device4 CCIDDescriptor];
        levelOfExchange = [cCIDDescriptor4 levelOfExchange];

        if (levelOfExchange == 1)
        {
          if (protocol_v2Copy == 1)
          {
            v67 = +[CCIDFiAndDi createWithFIndexDIndex:](CCIDFiAndDi, "createWithFIndexDIndex:", [getParameters bmFindexDindex]);
            if (v67)
            {
              v68 = v67;
              v69 = [(APDUMapping *)v67 Fi];
              v70 = (v69 / (1000 * [(APDUMapping *)v68 fMax])) * unsignedCharValue2;
              v71 = [APDUMapping alloc];
              *&v72 = v70;
              v73 = [(APDUMapping *)v71 initWithTransmitter:self wt:v72];
              mapping = self->_mapping;
              self->_mapping = v73;

              goto LABEL_85;
            }

            v56 = sub_100002620();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              sub_100015684();
            }

LABEL_93:
            protocol_v2Copy = 0;
LABEL_87:
            v55 = v98;
            goto LABEL_88;
          }

          bmTCCKS = [getParameters bmTCCKS];
          v77 = +[CCIDFiAndDi createWithFIndexDIndex:](CCIDFiAndDi, "createWithFIndexDIndex:", [getParameters bmFindexDindex]);
          if (!v77)
          {
            v56 = sub_100002620();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              sub_1000155A4();
            }

            goto LABEL_93;
          }

          v68 = v77;
          v78 = ldexp(1.0, unsignedCharValue4 >> 4) * 960.0 * 372.0;
          v109 = bmTCCKS;
          v79 = v8;
          v80 = getParameters;
          v81 = (v78 / (1000 * [(APDUMapping *)v68 fMax]) + 11.0);
          v82 = [(APDUMapping *)v68 Fi];
          *&v78 = (v82 / [(APDUMapping *)v68 Di]);
          *&v78 = (1.0 / (1000 * [(APDUMapping *)v68 fMax])) * *&v78;
          v83 = [T1TPDUMapping alloc];
          device5 = [(Slot *)self device];
          cCIDDescriptor5 = [device5 CCIDDescriptor];
          automaticIFSD = [cCIDDescriptor5 automaticIFSD];
          v87 = v81;
          getParameters = v80;
          v8 = v79;
          *&v88 = *&v78 * v87;
          v89 = [(T1TPDUMapping *)v83 initWithTransmitter:self autoIfs:automaticIFSD ifs:v102 redundancyCode:v109 & 1 bwt:v88];
          v90 = self->_mapping;
          self->_mapping = v89;
        }

        else
        {
          v75 = [[APDUMapping alloc] initWithTransmitter:self];
          v68 = self->_mapping;
          self->_mapping = v75;
        }

LABEL_85:

        v56 = sub_100002620();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
        {
          sub_100015614();
        }

        goto LABEL_87;
      }
    }

    else
    {
    }

    v63 = +[CCIDFiAndDi createWithFIndexDIndex:](CCIDFiAndDi, "createWithFIndexDIndex:", [getParameters bmFindexDindex]);
    [(CCIDSlot *)self setDataRateAndClockFrequency:v63];

    goto LABEL_78;
  }

  v92 = v8;
  v107 = *v111;
LABEL_30:
  v33 = 0;
  while (1)
  {
    if (*v111 != v107)
    {
      objc_enumerationMutation(obj);
    }

    v34 = *(*(&v110 + 1) + 8 * v33);
    device6 = [(Slot *)self device];
    cCIDDescriptor6 = [device6 CCIDDescriptor];
    if ([cCIDDescriptor6 automaticPPS])
    {
      break;
    }

    device7 = [(Slot *)self device];
    [device7 CCIDDescriptor];
    protocol_v2Copy2 = protocol_v2;
    v40 = v39 = getParameters;
    automaticParametersNegotation = [v40 automaticParametersNegotation];

    getParameters = v39;
    protocol_v2 = protocol_v2Copy2;

    if (automaticParametersNegotation)
    {
      goto LABEL_36;
    }

    v48 = [(TKSmartCardATR *)self->_lastATR interfaceGroupForProtocol:0x8000];
    cCIDDescriptor6 = [v48 TB];

    if (cCIDDescriptor6 && ([cCIDDescriptor6 unsignedCharValue] & 0x80) != 0 && (objc_msgSend(cCIDDescriptor6, "unsignedCharValue") & 0x7F) != 0)
    {
      device6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [cCIDDescriptor6 unsignedCharValue] & 0x7F);
    }

    else
    {
      device6 = 0;
    }

    v49 = [(CCIDSlot *)self PPSForProtocol:protocol_v2Copy2 withFIndexDindex:v34 andSPU:device6];
    v50 = sub_100002620();
    v51 = os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG);
    if (v49)
    {
      if (v51)
      {
        *buf = 138543362;
        v115 = v34;
        _os_log_debug_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "card accepted FIndexDIndex: %{public}@", buf, 0xCu);
      }

      break;
    }

    if (v51)
    {
      *buf = 138543362;
      v115 = v34;
      _os_log_debug_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "card rejected FIndexDIndex: %{public}@", buf, 0xCu);
    }

    warmResetCard = [(CCIDSlot *)self warmResetCard];
LABEL_46:

    if (v108 == ++v33)
    {
      v53 = [obj countByEnumeratingWithState:&v110 objects:v116 count:16];
      v108 = v53;
      if (!v53)
      {
        protocol_v2 = 0;
LABEL_71:
        v8 = v92;
        goto LABEL_72;
      }

      goto LABEL_30;
    }
  }

LABEL_36:
  device8 = [(Slot *)self device];
  cCIDDescriptor7 = [device8 CCIDDescriptor];
  automaticParametersNegotation2 = [cCIDDescriptor7 automaticParametersNegotation];

  if ((automaticParametersNegotation2 & 1) == 0)
  {
    if (protocol_v2 == 1)
    {
      device6 = objc_opt_new();
      [device6 setBmFindexDindex:{objc_msgSend(v34, "fIndexDIndex")}];
      [device6 setBClockStop:v106];
      [device6 setBmTCCKS:0];
      [device6 setBGuardTime:unsignedCharValue];
      [device6 setBWaitingInteger:unsignedCharValue2];
    }

    else if (protocol_v2 == 2)
    {
      device6 = objc_opt_new();
      [device6 setBmFindexDindex:{objc_msgSend(v34, "fIndexDIndex")}];
      [device6 setBClockStop:v106];
      [device6 setBmTCCKS:v100];
      [device6 setBGuardTime:unsignedCharValue];
      [device6 setBmWaitingIntegers:unsignedCharValue4];
      [device6 setBIFSC:v102];
      [device6 setBNadValue:0];
    }

    else
    {
      device6 = 0;
    }

    v45 = [(CCIDSlot *)self setParameters:device6];

    if (v45)
    {
      v57 = objc_opt_class();
      if ([v57 isEqual:objc_opt_class()])
      {
        protocol_v2 = 2;
      }

      else
      {
        protocol_v2 = 1;
      }

      getParameters = v45;
      goto LABEL_71;
    }

    v46 = sub_100002620();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v115 = device6;
      _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "failed to set parameters: %{public}@", buf, 0xCu);
    }

    warmResetCard2 = [(CCIDSlot *)self warmResetCard];
    getParameters = 0;
    goto LABEL_46;
  }

  if (protocol_v2)
  {
    goto LABEL_71;
  }

  v54 = sub_100002620();
  v8 = v92;
  v55 = v98;
  if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
  {
    sub_100015730();
  }

  v56 = obj;
  protocol_v2Copy = 0;
LABEL_88:

  return protocol_v2Copy;
}

- (unint64_t)setProtocol:(unint64_t)protocol
{
  if (self->_PPSVersion == 1)
  {
    return [(CCIDSlot *)self setProtocol_v1:protocol];
  }

  else
  {
    return [(CCIDSlot *)self setProtocol_v2:protocol];
  }
}

- (void)setDataRateAndClockFrequency:(id)frequency
{
  frequencyCopy = frequency;
  getClockFrequencies = [(CCIDSlot *)self getClockFrequencies];
  selfCopy = self;
  [(CCIDSlot *)self getDataRates];
  v38 = v37 = getClockFrequencies;
  v50 = 0;
  if (getClockFrequencies)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v6 = getClockFrequencies;
    v7 = [v6 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v45;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v45 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v44 + 1) + 8 * i);
          unsignedIntValue = [v11 unsignedIntValue];
          if (unsignedIntValue <= [frequencyCopy fMax])
          {
            unsignedIntValue2 = [v11 unsignedIntValue];
            device = [(Slot *)selfCopy device];
            cCIDDescriptor = [device CCIDDescriptor];
            dwMaximumClock = [cCIDDescriptor dwMaximumClock];

            if (unsignedIntValue2 <= dwMaximumClock)
            {
              unsignedIntValue3 = [v11 unsignedIntValue];
              LODWORD(v50) = unsignedIntValue3;
              v18 = sub_100002620();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
              {
                sub_10001576C(unsignedIntValue3);
              }

              goto LABEL_15;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v44 objects:v49 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:

    getClockFrequencies = v37;
  }

  if (v38)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v19 = v38;
    v20 = [v19 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v41;
      while (2)
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v41 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v40 + 1) + 8 * j);
          unsignedIntValue4 = [v24 unsignedIntValue];
          if (unsignedIntValue4 <= [frequencyCopy bpsMax])
          {
            unsignedIntValue5 = [v24 unsignedIntValue];
            device2 = [(Slot *)selfCopy device];
            cCIDDescriptor2 = [device2 CCIDDescriptor];
            dwMaxDataRate = [cCIDDescriptor2 dwMaxDataRate];

            if (unsignedIntValue5 <= dwMaxDataRate)
            {
              unsignedIntValue6 = [v24 unsignedIntValue];
              HIDWORD(v50) = unsignedIntValue6;
              v31 = sub_100002620();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
              {
                sub_1000157E8(unsignedIntValue6);
              }

              goto LABEL_30;
            }
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v40 objects:v48 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

LABEL_30:

    getClockFrequencies = v37;
  }

  v32 = [NSData dataWithBytes:&v50 length:8];
  v33 = [CCIDMessageView create:115 withPayload:v32];
  v34 = [(CCIDSlot *)selfCopy transmitAndReceive:v33 maxPayload:0 sequence:&off_100026F40 outTimeout:0 inTimeout:0 transmitted:0];
  if ([v34 messageType] != 132)
  {
    goto LABEL_34;
  }

  status = [v34 status];
  if (![status bmCommandStatus])
  {
LABEL_36:

    goto LABEL_37;
  }

  bError = [v34 bError];

  if (bError != -2)
  {
LABEL_34:
    status = sub_100002620();
    if (os_log_type_enabled(status, OS_LOG_TYPE_ERROR))
    {
      sub_100015864();
    }

    goto LABEL_36;
  }

LABEL_37:
}

- (unint64_t)engine:(id)engine setProtocol:(unint64_t)protocol
{
  engineCopy = engine;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  synchronize = [(Slot *)self synchronize];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100005E74;
  v10[3] = &unk_100024610;
  v10[5] = &v11;
  v10[6] = protocol;
  v10[4] = self;
  [synchronize sync:v10];

  v8 = v12[3];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (id)engine:(id)engine transmit:(id)transmit
{
  engineCopy = engine;
  transmitCopy = transmit;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100002ED4;
  v19 = sub_100002EE4;
  v20 = 0;
  synchronize = [(Slot *)self synchronize];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000612C;
  v12[3] = &unk_100024638;
  v12[4] = self;
  v14 = &v15;
  v9 = transmitCopy;
  v13 = v9;
  [synchronize sync:v12];

  v10 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v10;
}

- (id)engine:(id)engine escape:(id)escape
{
  engineCopy = engine;
  escapeCopy = escape;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100002ED4;
  v19 = sub_100002EE4;
  v20 = 0;
  synchronize = [(Slot *)self synchronize];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100006334;
  v12[3] = &unk_100024660;
  v14 = &v15;
  v12[4] = self;
  v9 = escapeCopy;
  v13 = v9;
  [synchronize sync:v12];

  v10 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v10;
}

- (void)willSleepOnEngine:(id)engine
{
  synchronize = [(Slot *)self synchronize];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100006424;
  v5[3] = &unk_1000244F0;
  v5[4] = self;
  [synchronize sync:v5];
}

- (void)didWakeUpOnEngine:(id)engine
{
  synchronize = [(Slot *)self synchronize];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100006500;
  v5[3] = &unk_1000244F0;
  v5[4] = self;
  [synchronize sync:v5];
}

- (id)engine:(id)engine runUserInteraction:(id)interaction error:(id *)error
{
  engineCopy = engine;
  interactionCopy = interaction;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100002ED4;
  v22 = sub_100002EE4;
  v23 = 0;
  synchronize = [(Slot *)self synchronize];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100006768;
  v14[3] = &unk_100024688;
  v14[4] = self;
  v11 = interactionCopy;
  v15 = v11;
  v16 = &v18;
  errorCopy = error;
  [synchronize sync:v14];

  v12 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v12;
}

- (BOOL)simulateCardReinsertion
{
  objc_initWeak(&location, self);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  synchronize = [(Slot *)self synchronize];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100006AB0;
  v11[3] = &unk_1000246B0;
  objc_copyWeak(&v12, &location);
  v11[4] = &v13;
  [synchronize sync:v11];

  if (*(v14 + 24) == 1)
  {
    v4 = dispatch_time(0, 1000000000);
    synchronize2 = [(Slot *)self synchronize];
    queue = [synchronize2 queue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100006B58;
    v9[3] = &unk_1000246D8;
    objc_copyWeak(&v10, &location);
    dispatch_after(v4, queue, v9);

    objc_destroyWeak(&v10);
    v7 = *(v14 + 24);
  }

  else
  {
    v7 = 0;
  }

  objc_destroyWeak(&v12);
  _Block_object_dispose(&v13, 8);
  objc_destroyWeak(&location);
  return v7 & 1;
}

- (id)verifyPINSecure:(id)secure error:(id *)error
{
  secureCopy = secure;
  v7 = sub_100002620();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100015C88();
  }

  device = [(Slot *)self device];
  cCIDDescriptor = [device CCIDDescriptor];
  bPINSupport = [cCIDDescriptor bPINSupport];

  if (bPINSupport)
  {
    v11 = [PINVerificationDataView createWithInteraction:secureCopy error:error];
    if (v11)
    {
      mapping = self->_mapping;
      aPDU = [secureCopy APDU];
      v14 = [(APDUMapping *)mapping secure:v11 APDU:aPDU];

      goto LABEL_11;
    }
  }

  else
  {
    if (error)
    {
      *error = [NSError errorWithDomain:TKErrorDomain code:-8 userInfo:0];
    }

    v11 = sub_100002620();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100015CC4();
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (id)changePINSecure:(id)secure error:(id *)error
{
  secureCopy = secure;
  v7 = sub_100002620();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100015D00();
  }

  device = [(Slot *)self device];
  cCIDDescriptor = [device CCIDDescriptor];
  bPINSupport = [cCIDDescriptor bPINSupport];

  if ((bPINSupport & 2) != 0)
  {
    v11 = [PINModificationDataView createWithInteraction:secureCopy error:error];
    if (v11)
    {
      mapping = self->_mapping;
      aPDU = [secureCopy APDU];
      v14 = [(APDUMapping *)mapping secure:v11 APDU:aPDU];

      goto LABEL_11;
    }
  }

  else
  {
    if (error)
    {
      *error = [NSError errorWithDomain:TKErrorDomain code:-8 userInfo:0];
    }

    v11 = sub_100002620();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100015D3C();
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (id)findSuitableFIndexDIndex:(id)index
{
  indexCopy = index;
  v5 = indexCopy;
  if (indexCopy)
  {
    v6 = +[CCIDFiAndDi createWithFIndexDIndex:](CCIDFiAndDi, "createWithFIndexDIndex:", [indexCopy unsignedCharValue]);
    v7 = sub_100002620();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100015D78();
    }

    v42 = +[NSMutableArray array];
    device = [(Slot *)self device];
    cCIDDescriptor = [device CCIDDescriptor];
    dwMaximumClock = [cCIDDescriptor dwMaximumClock];

    device2 = [(Slot *)self device];
    cCIDDescriptor2 = [device2 CCIDDescriptor];
    dwMaxDataRate = [cCIDDescriptor2 dwMaxDataRate];

    v13 = sub_100002620();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_100015DE8(dwMaximumClock);
    }

    bytes = [(TKSmartCardATR *)self->_lastATR bytes];
    hexString = [bytes hexString];
    v16 = [(CCIDSlot *)self tryAlternativeFiDi:hexString];

    if (v16)
    {
      v37 = v5;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      obj = +[CCIDFiAndDi FIndexes];
      v40 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
      if (v40)
      {
        v39 = *v53;
        do
        {
          v17 = 0;
          do
          {
            if (*v53 != v39)
            {
              objc_enumerationMutation(obj);
            }

            v41 = v17;
            v18 = *(*(&v52 + 1) + 8 * v17);
            v48 = 0u;
            v49 = 0u;
            v50 = 0u;
            v51 = 0u;
            v19 = +[CCIDFiAndDi DIndexes];
            v20 = [v19 countByEnumeratingWithState:&v48 objects:v59 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v49;
              do
              {
                for (i = 0; i != v21; i = i + 1)
                {
                  if (*v49 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v24 = -[CCIDFiAndDi initWithFIndex:DIndex:]([CCIDFiAndDi alloc], "initWithFIndex:DIndex:", [v18 unsignedCharValue], objc_msgSend(*(*(&v48 + 1) + 8 * i), "unsignedCharValue"));
                  fIndex = [(CCIDFiAndDi *)v24 fIndex];
                  if (fIndex == [v6 fIndex])
                  {
                    bpsMax = [(CCIDFiAndDi *)v24 bpsMax];
                    if (bpsMax <= [v6 bpsMax] && -[CCIDFiAndDi baseBps](v24, "baseBps") <= dwMaxDataRate)
                    {
                      [v42 addObject:v24];
                    }
                  }
                }

                v21 = [v19 countByEnumeratingWithState:&v48 objects:v59 count:16];
              }

              while (v21);
            }

            v17 = v41 + 1;
          }

          while ((v41 + 1) != v40);
          v40 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
        }

        while (v40);
      }

      v5 = v37;
      if ([v42 count])
      {
        v27 = [v42 sortedArrayUsingComparator:&stru_100024718];
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v28 = [v27 countByEnumeratingWithState:&v44 objects:v58 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v45;
          do
          {
            v31 = 0;
            do
            {
              if (*v45 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v32 = *(*(&v44 + 1) + 8 * v31);
              v33 = sub_100002620();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                v57 = v32;
                _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "suitable FIndexDIndex: %{public}@", buf, 0xCu);
              }

              v31 = v31 + 1;
            }

            while (v29 != v31);
            v29 = [v27 countByEnumeratingWithState:&v44 objects:v58 count:16];
          }

          while (v29);
        }

        firstObject = [v27 firstObject];

        v5 = v37;
LABEL_40:

        if (firstObject)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }
    }

    else if ([v6 bpsMax] <= dwMaxDataRate && objc_msgSend(v6, "fMax") <= dwMaximumClock)
    {
      firstObject = v6;
      goto LABEL_40;
    }
  }

LABEL_41:
  firstObject = [CCIDFiAndDi createWithFIndexDIndex:17];
LABEL_42:
  v35 = sub_100002620();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    sub_100015E68();
  }

  return firstObject;
}

- (id)findSuitableFDIndexes:(id)indexes
{
  indexesCopy = indexes;
  v5 = indexesCopy;
  if (!indexesCopy)
  {
    goto LABEL_37;
  }

  v33 = indexesCopy;
  v6 = +[CCIDFiAndDi createWithFIndexDIndex:](CCIDFiAndDi, "createWithFIndexDIndex:", [indexesCopy unsignedCharValue]);
  v7 = sub_100002620();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100015D78();
  }

  v38 = +[NSMutableArray array];
  device = [(Slot *)self device];
  cCIDDescriptor = [device CCIDDescriptor];
  dwMaximumClock = [cCIDDescriptor dwMaximumClock];

  device2 = [(Slot *)self device];
  cCIDDescriptor2 = [device2 CCIDDescriptor];
  dwMaxDataRate = [cCIDDescriptor2 dwMaxDataRate];

  v13 = sub_100002620();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_100015DE8(dwMaximumClock);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = +[CCIDFiAndDi FIndexes];
  v36 = [obj countByEnumeratingWithState:&v48 objects:v57 count:16];
  if (v36)
  {
    v35 = *v49;
    do
    {
      v14 = 0;
      do
      {
        if (*v49 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v37 = v14;
        v15 = *(*(&v48 + 1) + 8 * v14);
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v16 = +[CCIDFiAndDi DIndexes];
        v17 = [v16 countByEnumeratingWithState:&v44 objects:v56 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v45;
          do
          {
            for (i = 0; i != v18; i = i + 1)
            {
              if (*v45 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = -[CCIDFiAndDi initWithFIndex:DIndex:]([CCIDFiAndDi alloc], "initWithFIndex:DIndex:", [v15 unsignedCharValue], objc_msgSend(*(*(&v44 + 1) + 8 * i), "unsignedCharValue"));
              fMax = [(CCIDFiAndDi *)v21 fMax];
              if (fMax <= [v6 fMax])
              {
                bpsMax = [(CCIDFiAndDi *)v21 bpsMax];
                if (bpsMax <= [v6 bpsMax] && -[CCIDFiAndDi baseBps](v21, "baseBps") <= dwMaxDataRate)
                {
                  [v38 addObject:v21];
                }
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v44 objects:v56 count:16];
          }

          while (v18);
        }

        v14 = v37 + 1;
      }

      while ((v37 + 1) != v36);
      v36 = [obj countByEnumeratingWithState:&v48 objects:v57 count:16];
    }

    while (v36);
  }

  if (![v38 count])
  {

    v5 = v33;
LABEL_37:
    v31 = [CCIDFiAndDi createWithFIndexDIndex:17];
    v52 = v31;
    v24 = [NSArray arrayWithObjects:&v52 count:1];

    goto LABEL_38;
  }

  v24 = [v38 sortedArrayUsingComparator:&stru_100024738];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v25 = [v24 countByEnumeratingWithState:&v40 objects:v55 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v41;
    do
    {
      v28 = 0;
      do
      {
        if (*v41 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v40 + 1) + 8 * v28);
        v30 = sub_100002620();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v54 = v29;
          _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "suitable FIndexDIndex: %{public}@", buf, 0xCu);
        }

        v28 = v28 + 1;
      }

      while (v26 != v28);
      v26 = [v24 countByEnumeratingWithState:&v40 objects:v55 count:16];
    }

    while (v26);
  }

  v5 = v33;
  if (!v24)
  {
    goto LABEL_37;
  }

LABEL_38:

  return v24;
}

- (id)receiveMessageWitMaxPayload:(unint64_t)payload sequenceNumber:(unsigned __int8)number duplicateMessage:(unsigned __int8)message timeout:(id)timeout
{
  messageCopy = message;
  numberCopy = number;
  timeoutCopy = timeout;
  v11 = +[NSDate date];
  v12 = +[NSDate date];
  [v12 timeIntervalSinceDate:v11];
  v14 = v13;

  if (v14 >= 60.0)
  {
LABEL_19:
    v34 = sub_100002620();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_100016058(v11);
    }

    [(CCIDSlot *)self sendAnalyticsFailure:3];
  }

  else
  {
    *&v15 = 67109632;
    v42 = v15;
    while (1)
    {
      pipeIn = self->_pipeIn;
      device = [(Slot *)self device];
      cCIDDescriptor = [device CCIDDescriptor];
      v19 = -[IOUSBHostPipe receive:timeout:](pipeIn, "receive:timeout:", [cCIDDescriptor dwMaxCCIDMessageLength], timeoutCopy);

      v20 = [v19 length];
      if (v20 < +[CCIDMessageView length])
      {
        break;
      }

      v21 = [v19 length];
      if (v21 > +[CCIDMessageView length]+ payload)
      {
        v22 = sub_100002620();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          sub_100015ED8(v52, v19);
        }
      }

      v23 = [CCIDMessageView createWithData:v19];
      bSlot = [v23 bSlot];
      if (bSlot != [(Slot *)self slotNumber])
      {
        v37 = sub_100002620();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          sub_100015F38();
        }

        selfCopy2 = self;
        v39 = 4;
LABEL_32:
        [(CCIDSlot *)selfCopy2 sendAnalyticsFailure:v39];
        v35 = 0;
LABEL_34:

        goto LABEL_35;
      }

      if ([v23 bSeq] == numberCopy || messageCopy > 0x1F)
      {
        if ([v23 bSeq] != numberCopy)
        {
          v40 = sub_100002620();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            sub_100015FA8();
          }

          selfCopy2 = self;
          v39 = 5;
          goto LABEL_32;
        }

        v43 = v19;
        v27 = v11;
        v28 = timeoutCopy;
        status = [v23 status];
        bmCommandStatus = [status bmCommandStatus];

        if (bmCommandStatus != 128)
        {
          v35 = v23;
          timeoutCopy = v28;
          v11 = v27;
          v19 = v43;
          goto LABEL_34;
        }

        [(APDUMapping *)self->_mapping waitingTime:1];
        v25 = sub_100002620();
        timeoutCopy = v28;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          sub_100016018(&v44, v45, v25);
        }

        v11 = v27;
        v19 = v43;
      }

      else
      {
        ++messageCopy;
        v25 = sub_100002620();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          bSeq = [v23 bSeq];
          *buf = v42;
          v47 = bSeq;
          v48 = 1024;
          v49 = numberCopy;
          v50 = 1024;
          v51 = messageCopy;
          _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Duplicate message detected (%u, %u, %u)!", buf, 0x14u);
        }
      }

      v31 = +[NSDate date];
      [v31 timeIntervalSinceDate:v11];
      v33 = v32;

      if (v33 >= 60.0)
      {
        goto LABEL_19;
      }
    }

    v36 = sub_100002620();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_100016100();
    }

    [(CCIDSlot *)self sendAnalyticsFailure:3];
  }

  v35 = 0;
LABEL_35:

  return v35;
}

- (id)transmitAndReceive:(id)receive maxPayload:(unint64_t)payload sequence:(id)sequence outTimeout:(id)timeout inTimeout:(id)inTimeout transmitted:(id)transmitted
{
  receiveCopy = receive;
  sequenceCopy = sequence;
  timeoutCopy = timeout;
  inTimeoutCopy = inTimeout;
  transmittedCopy = transmitted;
  device = [(Slot *)self device];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100007EE4;
  v27[3] = &unk_100024760;
  v32 = transmittedCopy;
  payloadCopy = payload;
  v27[4] = self;
  v28 = receiveCopy;
  v29 = sequenceCopy;
  v30 = timeoutCopy;
  v31 = inTimeoutCopy;
  v20 = inTimeoutCopy;
  v21 = transmittedCopy;
  v22 = timeoutCopy;
  v23 = sequenceCopy;
  v24 = receiveCopy;
  v25 = [device deviceAccessBlock:v27];

  return v25;
}

- (BOOL)allowAlternativeFiDi
{
  v2 = CFPreferencesCopyValue(@"AllowAlternativeFiDi", @"com.apple.security.smartcard", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)getCardsNeedsBaseFiDi
{
  v2 = CFPreferencesCopyValue(@"CardsNeedsBaseFiDi", @"com.apple.security.smartcard", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 mutableCopy];
  }

  else
  {
    v3 = +[NSMutableArray array];
  }

  v4 = v3;

  return v4;
}

- (void)cardNeedsBaseFiDi:(id)di
{
  diCopy = di;
  if (diCopy)
  {
    getCardsNeedsBaseFiDi = [(CCIDSlot *)self getCardsNeedsBaseFiDi];
    cardsNeedsBaseFiDi = self->_cardsNeedsBaseFiDi;
    self->_cardsNeedsBaseFiDi = getCardsNeedsBaseFiDi;

    if (([(NSMutableArray *)self->_cardsNeedsBaseFiDi containsObject:diCopy]& 1) == 0)
    {
      [(NSMutableArray *)self->_cardsNeedsBaseFiDi addObject:diCopy];
      [(CCIDSlot *)self setDeviceAndCardBaseFiDi:self->_cardsNeedsBaseFiDi];
    }
  }
}

- (unsigned)PPSVersion
{
  v2 = CFPreferencesCopyValue(@"PPSVersion", @"com.apple.security.smartcard", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedIntValue = [v2 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

@end