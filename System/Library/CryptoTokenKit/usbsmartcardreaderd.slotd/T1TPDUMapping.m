@interface T1TPDUMapping
- (T1TPDUMapping)initWithTransmitter:(id)a3 autoIfs:(BOOL)a4 ifs:(unsigned __int8)a5 redundancyCode:(char)a6 bwt:(float)a7;
- (id)secure:(id)a3 APDU:(id)a4;
- (id)transmit:(id)a3;
- (id)transmitCCIDMessage:(id)a3 maxPayload:(unint64_t)a4 transmitted:(id)a5;
- (void)fillQueue:(id)a3 request:(id)a4 ifs:(unsigned __int8)a5;
- (void)handleIBlock:(id)a3 ackBlock:(id)a4 queue:(id)a5 resultData:(id)a6;
- (void)handleRBlock:(id)a3 ackBlock:(id)a4 queue:(id)a5 resultData:(id)a6;
- (void)handleSBlock:(id)a3 ackBlock:(id)a4 queue:(id)a5 abortBlock:(id)a6 resynchBlock:(id)a7;
@end

@implementation T1TPDUMapping

- (T1TPDUMapping)initWithTransmitter:(id)a3 autoIfs:(BOOL)a4 ifs:(unsigned __int8)a5 redundancyCode:(char)a6 bwt:(float)a7
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v12 = a3;
  v13 = sub_100008B80();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109888;
    v18 = v10;
    v19 = 1024;
    v20 = v9;
    v21 = 1024;
    v22 = v8;
    v23 = 2048;
    v24 = a7;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "T1TPDUMapping initWithTransmitter autoIFS: %d IFS: %d RC: %d BWT %f", buf, 0x1Eu);
  }

  v16.receiver = self;
  v16.super_class = T1TPDUMapping;
  v14 = [(APDUMapping *)&v16 initWithTransmitter:v12];

  if (v14)
  {
    *(&v14->super._wt + 6) = v10;
    v14->_cardSequence = v9;
    LOBYTE(v14->_bwt) = v8;
    *&v14->_deactivated = a7;
    BYTE1(v14->_bwt) = [T1TPDUBlock nodeAddressWithSource:0 andDestination:0];
  }

  return v14;
}

- (id)transmitCCIDMessage:(id)a3 maxPayload:(unint64_t)a4 transmitted:(id)a5
{
  v8 = a5;
  v9 = [CCIDMessageView create:111 withPayload:a3];
  [v9 setWLevelParameter:0];
  [v9 setBBWI:0];
  WeakRetained = objc_loadWeakRetained(&self->super._transmitter);
  v11 = WeakRetained;
  if (a4)
  {
    v12 = a4 + 5;
  }

  else
  {
    v12 = 0;
  }

  v13 = [WeakRetained transmitAndReceive:v9 maxPayload:v12 outTimeout:0 inTimeout:0 transmitted:v8];

  if ([v13 messageType] == 128)
  {
    v14 = [v13 aPayload];
  }

  else
  {
    v15 = sub_100008B80();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100016444();
    }

    v14 = 0;
  }

  return v14;
}

- (void)fillQueue:(id)a3 request:(id)a4 ifs:(unsigned __int8)a5
{
  v5 = a5;
  v25 = a3;
  v8 = a4;
  if ([v8 length] <= v5)
  {
    v24 = *(&self->super._wt + 4);
    *(&self->super._wt + 4) = v24 + 1;
    v21 = [T1InformationBlock informationBlockWithNad:BYTE1(self->_bwt) sequence:v24 & 1 moreData:0 informationField:v8 redundancyCode:SLOBYTE(self->_bwt)];
    [v25 enqueueBlock:v21];
  }

  else
  {
    v9 = v5;
    v10 = +[NSMutableArray array];
    [v8 length];
    v11 = 0;
    v12 = 0;
    v26 = v10;
    do
    {
      v13 = *(&self->super._wt + 4);
      *(&self->super._wt + 4) = v13 + 1;
      v14 = &v9[v12];
      v15 = [v8 length];
      v16 = v9;
      v17 = v15;
      v18 = BYTE1(self->_bwt);
      if (v15 <= &v9[v12])
      {
        v16 = [v8 length] + v11;
      }

      v19 = [v8 subdataWithRange:{v12, v16}];
      v20 = [T1InformationBlock informationBlockWithNad:v18 sequence:v13 & 1 moreData:v17 > v14 informationField:v19 redundancyCode:SLOBYTE(self->_bwt)];

      v21 = v26;
      [v26 addObject:v20];

      v11 -= v9;
      v12 = v14;
    }

    while ([v8 length] >= v14);
    v22 = [v26 reverseObjectEnumerator];
    v23 = [v22 allObjects];
    [v25 enqueueArray:v23];
  }
}

- (void)handleIBlock:(id)a3 ackBlock:(id)a4 queue:(id)a5 resultData:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = sub_100008B80();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_1000164E8();
  }

  v14 = [v10 sequence];
  v15 = *(&self->super._wt + 5);
  *(&self->super._wt + 5) = v15 + 1;
  if (v14 != (v15 & 1))
  {
    v16 = sub_100008B80();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_10001651C();
    }

    ++*(&self->super._wt + 5);
  }

  if (a4)
  {
    v17 = [v11 dequeueBlock];
    v18 = sub_100008B80();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_100016550();
    }
  }

  if ([v10 lengthByte])
  {
    v19 = [v10 informationField];
    if (v19)
    {
      [v12 appendData:v19];
    }

    else
    {
      v20 = sub_100008B80();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100016584();
      }
    }
  }

  if ([v10 moreData])
  {
    v21 = [T1ReadyBlock readyBlockWithNad:BYTE1(self->_bwt) sequence:*(&self->super._wt + 5) & 1 status:0 redundancyCode:SLOBYTE(self->_bwt)];
    [v11 enqueueBlock:v21];

    v22 = sub_100008B80();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_1000165C0();
    }
  }
}

- (void)handleRBlock:(id)a3 ackBlock:(id)a4 queue:(id)a5 resultData:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = sub_100008B80();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_1000165F4();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v10;
    v14 = [v13 moreData];
    v15 = [v13 sequence];
    v16 = [v9 sequence];
    if (v14)
    {
      if (v15 != v16)
      {
        v17 = [v11 dequeueBlock];
        v18 = sub_100008B80();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          sub_10001665C();
        }

LABEL_14:
      }
    }

    else if (v15 != v16)
    {
      v20 = [T1ReadyBlock readyBlockWithNad:BYTE1(self->_bwt) sequence:*(&self->super._wt + 5) & 1 status:2 redundancyCode:SLOBYTE(self->_bwt)];
      [v11 enqueueBlock:v20];

      v18 = sub_100008B80();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_100016628();
      }

      goto LABEL_14;
    }

LABEL_15:

    goto LABEL_16;
  }

  if (!v10)
  {
    v19 = [T1ReadyBlock readyBlockWithNad:BYTE1(self->_bwt) sequence:*(&self->super._wt + 5) & 1 status:0 redundancyCode:SLOBYTE(self->_bwt)];
    [v11 enqueueBlock:v19];

    v13 = sub_100008B80();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_1000165C0();
    }

    goto LABEL_15;
  }

LABEL_16:
}

- (void)handleSBlock:(id)a3 ackBlock:(id)a4 queue:(id)a5 abortBlock:(id)a6 resynchBlock:(id)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = sub_100008B80();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_100016690();
  }

  v16 = [v11 type];
  v17 = [v11 operation];
  if (v16)
  {
    if (v17 == 1)
    {
      self->_cardSequence = [v11 uint8Value];
      v18 = [v12 dequeueBlock];
      v19 = sub_100008B80();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_1000167A0();
      }
    }

    else if ([v11 operation] == 2)
    {
      v13[2](v13);
      v19 = sub_100008B80();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_10001676C();
      }
    }

    else if ([v11 operation])
    {
      v19 = sub_100008B80();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000166C4();
      }
    }

    else
    {
      v27 = [v12 dequeueBlock];
      v14[2](v14);
      v19 = sub_100008B80();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_100016738();
      }
    }

LABEL_27:

    goto LABEL_28;
  }

  if (v17 == 3)
  {
    v20 = BYTE1(self->_bwt);
    v21 = [v11 informationField];
    v22 = [T1SupervisoryBlock supervisoryBlockWithNad:v20 operation:3 type:1 informationField:v21 redundancyCode:SLOBYTE(self->_bwt)];
    [v12 enqueueBlock:v22];

    v19 = sub_100008B80();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_1000168B8(v11);
    }

    goto LABEL_27;
  }

  if ([v11 operation] == 1)
  {
    self->_cardSequence = [v11 uint8Value];
    v23 = BYTE1(self->_bwt);
    v24 = [v11 informationField];
    v25 = [T1SupervisoryBlock supervisoryBlockWithNad:v23 operation:1 type:1 informationField:v24 redundancyCode:SLOBYTE(self->_bwt)];
    [v12 enqueueBlock:v25];

    v19 = sub_100008B80();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_10001683C(v11);
    }

    goto LABEL_27;
  }

  if ([v11 operation] == 2)
  {
    v13[2](v13);
    v26 = [T1SupervisoryBlock supervisoryBlockWithNad:BYTE1(self->_bwt) operation:2 type:1 informationField:0 redundancyCode:SLOBYTE(self->_bwt)];
    [v12 enqueueBlock:v26];

    v19 = sub_100008B80();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_100016808();
    }

    goto LABEL_27;
  }

  if (![v11 operation])
  {
    v14[2](v14);
    v28 = [T1SupervisoryBlock supervisoryBlockWithNad:BYTE1(self->_bwt) operation:0 type:1 informationField:0 redundancyCode:SLOBYTE(self->_bwt)];
    [v12 enqueueBlock:v28];

    v19 = sub_100008B80();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_1000167D4();
    }

    goto LABEL_27;
  }

LABEL_28:
}

- (id)transmit:(id)a3
{
  v4 = a3;
  v5 = sub_100008B80();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100016934();
  }

  v45 = [[APDU alloc] initWithData:v4];
  v6 = +[NSMutableData data];
  v7 = objc_alloc_init(FIFOQueue);
  if (self->_sequence == 1)
  {
    v8 = sub_100008B80();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100016968();
    }
  }

  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_10000AECC;
  v58[3] = &unk_1000247D8;
  v44 = v6;
  v59 = v44;
  v9 = v7;
  v60 = v9;
  v61 = self;
  v41 = v4;
  v62 = v41;
  v10 = objc_retainBlock(v58);
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_10000AF24;
  v56[3] = &unk_100024800;
  v56[4] = self;
  v11 = v9;
  v57 = v11;
  v42 = objc_retainBlock(v56);
  v43 = v10;
  (v10[2])(v10);
  if ([(FIFOQueue *)v11 count])
  {
    v13 = 0;
    *&v12 = 138543362;
    v40 = v12;
    while (1)
    {
      if (self->_sequence)
      {
        goto LABEL_52;
      }

      ++self->_transmissionCounter;
      if ((*(&self->super._wt + 6) & 1) == 0 && (*(&self->super._wt + 7) & 1) == 0)
      {
        v14 = BYTE1(self->_bwt);
        v15 = [NSData dataWithBytes:&self->_cardSequence length:1];
        v16 = [T1SupervisoryBlock supervisoryBlockWithNad:v14 operation:1 type:0 informationField:v15 redundancyCode:SLOBYTE(self->_bwt)];

        v17 = sub_100008B80();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = v40;
          v64 = v16;
          _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Requesting IFS %{public}@", buf, 0xCu);
        }

        [(FIFOQueue *)v11 enqueueBlock:v16];
        *(&self->super._wt + 7) = 1;
      }

      v18 = [(FIFOQueue *)v11 firstBlock];
      if (([v18 needAck] & 1) == 0)
      {
        v19 = [(FIFOQueue *)v11 dequeueBlock];
      }

      v20 = sub_100008B80();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v64 = v18;
        _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, ">>> block: %@", buf, 0xCu);
      }

      v21 = [v18 data];
      v22 = [(APDU *)v45 maxPayload];
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_10000AF7C;
      v53[3] = &unk_100024800;
      v23 = v18;
      v54 = v23;
      v55 = self;
      v24 = [(T1TPDUMapping *)self transmitCCIDMessage:v21 maxPayload:v22 transmitted:v53];

      v52 = 0;
      v25 = +[T1TPDUBlock blockWithData:redundacyCode:sequence:rcError:](T1TPDUBlock, "blockWithData:redundacyCode:sequence:rcError:", v24, SLOBYTE(self->_bwt), [v23 sequence], &v52);
      v26 = sub_100008B80();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v64 = v25;
        _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "<<< block: %@", buf, 0xCu);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = [(FIFOQueue *)v11 firstBlock];
        [(T1TPDUMapping *)self handleRBlock:v25 ackBlock:v27 queue:v11 resultData:v44];
        goto LABEL_27;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = [(FIFOQueue *)v11 firstBlock];
        [(T1TPDUMapping *)self handleSBlock:v25 ackBlock:v27 queue:v11 abortBlock:v43 resynchBlock:v42];
        goto LABEL_27;
      }

      if (v13 == 5)
      {
        if (self->_transmissionCounter >= 4)
        {
          v30 = sub_100008B80();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            sub_1000169A4(&v46, v47);
          }

          self->_sequence = 1;
          v13 = 6;
          goto LABEL_28;
        }

LABEL_45:
        ++v13;
        v33 = [(FIFOQueue *)v11 firstBlock];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(FIFOQueue *)v11 enqueueBlock:v23];
          }

          else
          {
            if (v52)
            {
              v35 = 1;
            }

            else
            {
              v35 = 2;
            }

            v36 = [T1ReadyBlock readyBlockWithNad:BYTE1(self->_bwt) sequence:*(&self->super._wt + 5) & 1 status:v35 redundancyCode:SLOBYTE(self->_bwt)];
            [(FIFOQueue *)v11 enqueueBlock:v36];
          }
        }

        goto LABEL_28;
      }

      if (v13 != 2)
      {
        goto LABEL_45;
      }

      transmissionCounter = self->_transmissionCounter;
      if (transmissionCounter == 3)
      {
        v29 = sub_100008B80();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          sub_1000169FC(&v50, v51);
        }

        self->_sequence = 1;
      }

      else
      {
        if (transmissionCounter < 4)
        {
          goto LABEL_45;
        }

        v31 = sub_100008B80();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          sub_1000169D0(&v48, v49);
        }

        v32 = [T1SupervisoryBlock supervisoryBlockWithNad:BYTE1(self->_bwt) operation:0 type:0 informationField:0 redundancyCode:SLOBYTE(self->_bwt)];
        [(FIFOQueue *)v11 enqueueBlock:v32];
      }

      v13 = 3;
LABEL_28:

      if (![(FIFOQueue *)v11 count])
      {
        goto LABEL_52;
      }
    }

    v27 = [(FIFOQueue *)v11 firstBlock];
    [(T1TPDUMapping *)self handleIBlock:v25 ackBlock:v27 queue:v11 resultData:v44];
LABEL_27:

    v13 = 0;
    goto LABEL_28;
  }

LABEL_52:
  if (self->_sequence)
  {
    v37 = 0;
  }

  else
  {
    v37 = v44;
  }

  v38 = v37;

  return v37;
}

- (id)secure:(id)a3 APDU:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100008B80();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100016A28();
  }

  v9 = objc_alloc_init(FIFOQueue);
  v26 = v7;
  [(T1TPDUMapping *)self fillQueue:v9 request:v7 ifs:self->_cardSequence];
  v10 = [(FIFOQueue *)v9 dequeueBlock];
  [v6 setNodeAddressByte:{objc_msgSend(v10, "nodeAddressByte")}];
  [v6 setProtocolControlByte:{objc_msgSend(v10, "protocolControlByte")}];
  [v6 setLengthByte:{objc_msgSend(v10, "lengthByte")}];
  v27 = v6;
  v11 = [v6 buffer];
  v12 = [NSMutableData dataWithData:v11];

  v13 = [v10 informationField];
  [v12 appendData:v13];

  v14 = [CCIDMessageView create:105 withPayload:v12];
  [v14 setWLevelParameter:0];
  [v14 setBBWI:0];
  WeakRetained = objc_loadWeakRetained(&self->super._transmitter);
  v16 = [WeakRetained transmitAndReceive:v14 maxPayload:0 outTimeout:0 inTimeout:&off_100027330 transmitted:0];

  v28 = 6;
  v17 = [(FIFOQueue *)v9 dequeueBlock];

  if (v17)
  {
    do
    {
      BYTE1(v28) = [v17 nodeAddressByte];
      BYTE2(v28) = [v17 protocolControlByte];
      HIBYTE(v28) = [v17 lengthByte];
      v18 = [NSMutableData dataWithBytes:&v28 length:4];

      v19 = [v17 informationField];
      [v18 appendData:v19];

      v20 = [CCIDMessageView create:105 withPayload:v18];

      [v20 setWLevelParameter:0];
      [v20 setBBWI:0];
      v21 = objc_loadWeakRetained(&self->super._transmitter);
      v22 = [v21 transmitAndReceive:v20 maxPayload:0 outTimeout:0 inTimeout:&off_100027330 transmitted:0];

      v23 = [(FIFOQueue *)v9 dequeueBlock];

      v17 = v23;
      v16 = v22;
      v14 = v20;
      v12 = v18;
    }

    while (v23);
  }

  else
  {
    v18 = v12;
    v20 = v14;
    v22 = v16;
  }

  v24 = [v22 aPayload];

  return v24;
}

@end