@interface APDUMapping
- (APDUMapping)initWithTransmitter:(id)transmitter;
- (APDUMapping)initWithTransmitter:(id)transmitter wt:(float)wt;
- (id)secure:(id)secure APDU:(id)u;
- (id)transmit:(id)transmit;
- (id)transmit:(id)transmit maxPayload:(unint64_t)payload outTimeout:(id)timeout inTimeout:(id)inTimeout transmitted:(id)transmitted;
@end

@implementation APDUMapping

- (APDUMapping)initWithTransmitter:(id)transmitter
{
  transmitterCopy = transmitter;
  v8.receiver = self;
  v8.super_class = APDUMapping;
  v5 = [(APDUMapping *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_transmitter, transmitterCopy);
    v6->_wt = 0.001;
  }

  return v6;
}

- (APDUMapping)initWithTransmitter:(id)transmitter wt:(float)wt
{
  transmitterCopy = transmitter;
  v10.receiver = self;
  v10.super_class = APDUMapping;
  v7 = [(APDUMapping *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_transmitter, transmitterCopy);
    v8->_wt = wt;
  }

  return v8;
}

- (id)transmit:(id)transmit maxPayload:(unint64_t)payload outTimeout:(id)timeout inTimeout:(id)inTimeout transmitted:(id)transmitted
{
  transmitCopy = transmit;
  timeoutCopy = timeout;
  inTimeoutCopy = inTimeout;
  transmittedCopy = transmitted;
  WeakRetained = objc_loadWeakRetained(&self->_transmitter);
  v17 = [WeakRetained transmitAndReceive:transmitCopy maxPayload:payload outTimeout:timeoutCopy inTimeout:inTimeoutCopy transmitted:transmittedCopy];

  if ([v17 messageType] == 128)
  {
    if ([v17 bChainParameter] == 1)
    {
      aPayload = [v17 aPayload];
      v19 = [NSMutableData dataWithData:aPayload];

      do
      {
        v20 = v17;
        v21 = +[CCIDMessageView create:withPayload:](CCIDMessageView, "create:withPayload:", [transmitCopy messageType], 0);
        [v21 setWLevelParameter:16];
        [v21 setBBWI:0];
        v22 = objc_loadWeakRetained(&self->_transmitter);
        v17 = [v22 transmitAndReceive:v21 maxPayload:0 outTimeout:timeoutCopy inTimeout:inTimeoutCopy transmitted:transmittedCopy];

        aPayload2 = [v17 aPayload];
        [v19 appendData:aPayload2];
      }

      while ([v17 bChainParameter] != 2);
      aPayload3 = [NSData dataWithData:v19];
    }

    else
    {
      aPayload3 = [v17 aPayload];
    }
  }

  else
  {
    v25 = sub_100008B80();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_100016444();
    }

    aPayload3 = 0;
  }

  return aPayload3;
}

- (id)transmit:(id)transmit
{
  transmitCopy = transmit;
  v5 = sub_100008B80();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100016480();
  }

  v6 = [[APDU alloc] initWithData:transmitCopy];
  data = [(APDU *)v6 data];
  v8 = [CCIDMessageView create:111 withPayload:data];

  [v8 setWLevelParameter:0];
  [v8 setBBWI:0];
  v9 = [(APDUMapping *)self transmit:v8 maxPayload:[(APDU *)v6 maxPayload] outTimeout:0 inTimeout:0 transmitted:0];

  return v9;
}

- (id)secure:(id)secure APDU:(id)u
{
  uCopy = u;
  secureCopy = secure;
  v8 = sub_100008B80();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000164B4();
  }

  buffer = [secureCopy buffer];

  v10 = [NSMutableData dataWithData:buffer];

  [v10 appendData:uCopy];
  v11 = [CCIDMessageView create:105 withPayload:v10];
  [v11 setWLevelParameter:0];
  [v11 setBBWI:0];
  v12 = [(APDUMapping *)self transmit:v11 maxPayload:0 outTimeout:0 inTimeout:&off_100027330 transmitted:0];

  return v12;
}

@end