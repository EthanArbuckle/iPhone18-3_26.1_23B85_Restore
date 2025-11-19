@interface APDUMapping
- (APDUMapping)initWithTransmitter:(id)a3;
- (APDUMapping)initWithTransmitter:(id)a3 wt:(float)a4;
- (id)secure:(id)a3 APDU:(id)a4;
- (id)transmit:(id)a3;
- (id)transmit:(id)a3 maxPayload:(unint64_t)a4 outTimeout:(id)a5 inTimeout:(id)a6 transmitted:(id)a7;
@end

@implementation APDUMapping

- (APDUMapping)initWithTransmitter:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = APDUMapping;
  v5 = [(APDUMapping *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_transmitter, v4);
    v6->_wt = 0.001;
  }

  return v6;
}

- (APDUMapping)initWithTransmitter:(id)a3 wt:(float)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = APDUMapping;
  v7 = [(APDUMapping *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_transmitter, v6);
    v8->_wt = a4;
  }

  return v8;
}

- (id)transmit:(id)a3 maxPayload:(unint64_t)a4 outTimeout:(id)a5 inTimeout:(id)a6 transmitted:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  WeakRetained = objc_loadWeakRetained(&self->_transmitter);
  v17 = [WeakRetained transmitAndReceive:v12 maxPayload:a4 outTimeout:v13 inTimeout:v14 transmitted:v15];

  if ([v17 messageType] == 128)
  {
    if ([v17 bChainParameter] == 1)
    {
      v18 = [v17 aPayload];
      v19 = [NSMutableData dataWithData:v18];

      do
      {
        v20 = v17;
        v21 = +[CCIDMessageView create:withPayload:](CCIDMessageView, "create:withPayload:", [v12 messageType], 0);
        [v21 setWLevelParameter:16];
        [v21 setBBWI:0];
        v22 = objc_loadWeakRetained(&self->_transmitter);
        v17 = [v22 transmitAndReceive:v21 maxPayload:0 outTimeout:v13 inTimeout:v14 transmitted:v15];

        v23 = [v17 aPayload];
        [v19 appendData:v23];
      }

      while ([v17 bChainParameter] != 2);
      v24 = [NSData dataWithData:v19];
    }

    else
    {
      v24 = [v17 aPayload];
    }
  }

  else
  {
    v25 = sub_100008B80();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_100016444();
    }

    v24 = 0;
  }

  return v24;
}

- (id)transmit:(id)a3
{
  v4 = a3;
  v5 = sub_100008B80();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100016480();
  }

  v6 = [[APDU alloc] initWithData:v4];
  v7 = [(APDU *)v6 data];
  v8 = [CCIDMessageView create:111 withPayload:v7];

  [v8 setWLevelParameter:0];
  [v8 setBBWI:0];
  v9 = [(APDUMapping *)self transmit:v8 maxPayload:[(APDU *)v6 maxPayload] outTimeout:0 inTimeout:0 transmitted:0];

  return v9;
}

- (id)secure:(id)a3 APDU:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = sub_100008B80();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000164B4();
  }

  v9 = [v7 buffer];

  v10 = [NSMutableData dataWithData:v9];

  [v10 appendData:v6];
  v11 = [CCIDMessageView create:105 withPayload:v10];
  [v11 setWLevelParameter:0];
  [v11 setBBWI:0];
  v12 = [(APDUMapping *)self transmit:v11 maxPayload:0 outTimeout:0 inTimeout:&off_100027330 transmitted:0];

  return v12;
}

@end