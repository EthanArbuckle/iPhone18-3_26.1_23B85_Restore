@interface T1TPDUMapping
- (T1TPDUMapping)initWithTransmitter:(id)transmitter autoIfs:(BOOL)ifs ifs:(unsigned __int8)a5 redundancyCode:(char)code bwt:(float)bwt;
- (id)secure:(id)secure APDU:(id)u;
- (id)transmit:(id)transmit;
- (id)transmitCCIDMessage:(id)message maxPayload:(unint64_t)payload transmitted:(id)transmitted;
- (void)fillQueue:(id)queue request:(id)request ifs:(unsigned __int8)ifs;
- (void)handleIBlock:(id)block ackBlock:(id)ackBlock queue:(id)queue resultData:(id)data;
- (void)handleRBlock:(id)block ackBlock:(id)ackBlock queue:(id)queue resultData:(id)data;
- (void)handleSBlock:(id)block ackBlock:(id)ackBlock queue:(id)queue abortBlock:(id)abortBlock resynchBlock:(id)resynchBlock;
@end

@implementation T1TPDUMapping

- (T1TPDUMapping)initWithTransmitter:(id)transmitter autoIfs:(BOOL)ifs ifs:(unsigned __int8)a5 redundancyCode:(char)code bwt:(float)bwt
{
  codeCopy = code;
  v9 = a5;
  ifsCopy = ifs;
  transmitterCopy = transmitter;
  v13 = sub_100008B80();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109888;
    v18 = ifsCopy;
    v19 = 1024;
    v20 = v9;
    v21 = 1024;
    v22 = codeCopy;
    v23 = 2048;
    bwtCopy = bwt;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "T1TPDUMapping initWithTransmitter autoIFS: %d IFS: %d RC: %d BWT %f", buf, 0x1Eu);
  }

  v16.receiver = self;
  v16.super_class = T1TPDUMapping;
  v14 = [(APDUMapping *)&v16 initWithTransmitter:transmitterCopy];

  if (v14)
  {
    *(&v14->super._wt + 6) = ifsCopy;
    v14->_cardSequence = v9;
    LOBYTE(v14->_bwt) = codeCopy;
    *&v14->_deactivated = bwt;
    BYTE1(v14->_bwt) = [T1TPDUBlock nodeAddressWithSource:0 andDestination:0];
  }

  return v14;
}

- (id)transmitCCIDMessage:(id)message maxPayload:(unint64_t)payload transmitted:(id)transmitted
{
  transmittedCopy = transmitted;
  v9 = [CCIDMessageView create:111 withPayload:message];
  [v9 setWLevelParameter:0];
  [v9 setBBWI:0];
  WeakRetained = objc_loadWeakRetained(&self->super._transmitter);
  v11 = WeakRetained;
  if (payload)
  {
    v12 = payload + 5;
  }

  else
  {
    v12 = 0;
  }

  v13 = [WeakRetained transmitAndReceive:v9 maxPayload:v12 outTimeout:0 inTimeout:0 transmitted:transmittedCopy];

  if ([v13 messageType] == 128)
  {
    aPayload = [v13 aPayload];
  }

  else
  {
    v15 = sub_100008B80();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100016444();
    }

    aPayload = 0;
  }

  return aPayload;
}

- (void)fillQueue:(id)queue request:(id)request ifs:(unsigned __int8)ifs
{
  ifsCopy = ifs;
  queueCopy = queue;
  requestCopy = request;
  if ([requestCopy length] <= ifsCopy)
  {
    v24 = *(&self->super._wt + 4);
    *(&self->super._wt + 4) = v24 + 1;
    v21 = [T1InformationBlock informationBlockWithNad:BYTE1(self->_bwt) sequence:v24 & 1 moreData:0 informationField:requestCopy redundancyCode:SLOBYTE(self->_bwt)];
    [queueCopy enqueueBlock:v21];
  }

  else
  {
    v9 = ifsCopy;
    v10 = +[NSMutableArray array];
    [requestCopy length];
    v11 = 0;
    v12 = 0;
    v26 = v10;
    do
    {
      v13 = *(&self->super._wt + 4);
      *(&self->super._wt + 4) = v13 + 1;
      v14 = &v9[v12];
      v15 = [requestCopy length];
      v16 = v9;
      v17 = v15;
      v18 = BYTE1(self->_bwt);
      if (v15 <= &v9[v12])
      {
        v16 = [requestCopy length] + v11;
      }

      v19 = [requestCopy subdataWithRange:{v12, v16}];
      v20 = [T1InformationBlock informationBlockWithNad:v18 sequence:v13 & 1 moreData:v17 > v14 informationField:v19 redundancyCode:SLOBYTE(self->_bwt)];

      v21 = v26;
      [v26 addObject:v20];

      v11 -= v9;
      v12 = v14;
    }

    while ([requestCopy length] >= v14);
    reverseObjectEnumerator = [v26 reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
    [queueCopy enqueueArray:allObjects];
  }
}

- (void)handleIBlock:(id)block ackBlock:(id)ackBlock queue:(id)queue resultData:(id)data
{
  blockCopy = block;
  queueCopy = queue;
  dataCopy = data;
  v13 = sub_100008B80();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_1000164E8();
  }

  sequence = [blockCopy sequence];
  v15 = *(&self->super._wt + 5);
  *(&self->super._wt + 5) = v15 + 1;
  if (sequence != (v15 & 1))
  {
    v16 = sub_100008B80();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_10001651C();
    }

    ++*(&self->super._wt + 5);
  }

  if (ackBlock)
  {
    dequeueBlock = [queueCopy dequeueBlock];
    v18 = sub_100008B80();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_100016550();
    }
  }

  if ([blockCopy lengthByte])
  {
    informationField = [blockCopy informationField];
    if (informationField)
    {
      [dataCopy appendData:informationField];
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

  if ([blockCopy moreData])
  {
    v21 = [T1ReadyBlock readyBlockWithNad:BYTE1(self->_bwt) sequence:*(&self->super._wt + 5) & 1 status:0 redundancyCode:SLOBYTE(self->_bwt)];
    [queueCopy enqueueBlock:v21];

    v22 = sub_100008B80();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_1000165C0();
    }
  }
}

- (void)handleRBlock:(id)block ackBlock:(id)ackBlock queue:(id)queue resultData:(id)data
{
  blockCopy = block;
  ackBlockCopy = ackBlock;
  queueCopy = queue;
  v12 = sub_100008B80();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_1000165F4();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = ackBlockCopy;
    moreData = [v13 moreData];
    sequence = [v13 sequence];
    sequence2 = [blockCopy sequence];
    if (moreData)
    {
      if (sequence != sequence2)
      {
        dequeueBlock = [queueCopy dequeueBlock];
        v18 = sub_100008B80();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          sub_10001665C();
        }

LABEL_14:
      }
    }

    else if (sequence != sequence2)
    {
      v20 = [T1ReadyBlock readyBlockWithNad:BYTE1(self->_bwt) sequence:*(&self->super._wt + 5) & 1 status:2 redundancyCode:SLOBYTE(self->_bwt)];
      [queueCopy enqueueBlock:v20];

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

  if (!ackBlockCopy)
  {
    v19 = [T1ReadyBlock readyBlockWithNad:BYTE1(self->_bwt) sequence:*(&self->super._wt + 5) & 1 status:0 redundancyCode:SLOBYTE(self->_bwt)];
    [queueCopy enqueueBlock:v19];

    v13 = sub_100008B80();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_1000165C0();
    }

    goto LABEL_15;
  }

LABEL_16:
}

- (void)handleSBlock:(id)block ackBlock:(id)ackBlock queue:(id)queue abortBlock:(id)abortBlock resynchBlock:(id)resynchBlock
{
  blockCopy = block;
  queueCopy = queue;
  abortBlockCopy = abortBlock;
  resynchBlockCopy = resynchBlock;
  v15 = sub_100008B80();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_100016690();
  }

  type = [blockCopy type];
  operation = [blockCopy operation];
  if (type)
  {
    if (operation == 1)
    {
      self->_cardSequence = [blockCopy uint8Value];
      dequeueBlock = [queueCopy dequeueBlock];
      v19 = sub_100008B80();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_1000167A0();
      }
    }

    else if ([blockCopy operation] == 2)
    {
      abortBlockCopy[2](abortBlockCopy);
      v19 = sub_100008B80();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_10001676C();
      }
    }

    else if ([blockCopy operation])
    {
      v19 = sub_100008B80();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000166C4();
      }
    }

    else
    {
      dequeueBlock2 = [queueCopy dequeueBlock];
      resynchBlockCopy[2](resynchBlockCopy);
      v19 = sub_100008B80();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_100016738();
      }
    }

LABEL_27:

    goto LABEL_28;
  }

  if (operation == 3)
  {
    v20 = BYTE1(self->_bwt);
    informationField = [blockCopy informationField];
    v22 = [T1SupervisoryBlock supervisoryBlockWithNad:v20 operation:3 type:1 informationField:informationField redundancyCode:SLOBYTE(self->_bwt)];
    [queueCopy enqueueBlock:v22];

    v19 = sub_100008B80();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_1000168B8(blockCopy);
    }

    goto LABEL_27;
  }

  if ([blockCopy operation] == 1)
  {
    self->_cardSequence = [blockCopy uint8Value];
    v23 = BYTE1(self->_bwt);
    informationField2 = [blockCopy informationField];
    v25 = [T1SupervisoryBlock supervisoryBlockWithNad:v23 operation:1 type:1 informationField:informationField2 redundancyCode:SLOBYTE(self->_bwt)];
    [queueCopy enqueueBlock:v25];

    v19 = sub_100008B80();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_10001683C(blockCopy);
    }

    goto LABEL_27;
  }

  if ([blockCopy operation] == 2)
  {
    abortBlockCopy[2](abortBlockCopy);
    v26 = [T1SupervisoryBlock supervisoryBlockWithNad:BYTE1(self->_bwt) operation:2 type:1 informationField:0 redundancyCode:SLOBYTE(self->_bwt)];
    [queueCopy enqueueBlock:v26];

    v19 = sub_100008B80();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_100016808();
    }

    goto LABEL_27;
  }

  if (![blockCopy operation])
  {
    resynchBlockCopy[2](resynchBlockCopy);
    v28 = [T1SupervisoryBlock supervisoryBlockWithNad:BYTE1(self->_bwt) operation:0 type:1 informationField:0 redundancyCode:SLOBYTE(self->_bwt)];
    [queueCopy enqueueBlock:v28];

    v19 = sub_100008B80();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_1000167D4();
    }

    goto LABEL_27;
  }

LABEL_28:
}

- (id)transmit:(id)transmit
{
  transmitCopy = transmit;
  v5 = sub_100008B80();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100016934();
  }

  v45 = [[APDU alloc] initWithData:transmitCopy];
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
  selfCopy = self;
  v41 = transmitCopy;
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

      firstBlock = [(FIFOQueue *)v11 firstBlock];
      if (([firstBlock needAck] & 1) == 0)
      {
        dequeueBlock = [(FIFOQueue *)v11 dequeueBlock];
      }

      v20 = sub_100008B80();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v64 = firstBlock;
        _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, ">>> block: %@", buf, 0xCu);
      }

      data = [firstBlock data];
      maxPayload = [(APDU *)v45 maxPayload];
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_10000AF7C;
      v53[3] = &unk_100024800;
      v23 = firstBlock;
      v54 = v23;
      selfCopy2 = self;
      v24 = [(T1TPDUMapping *)self transmitCCIDMessage:data maxPayload:maxPayload transmitted:v53];

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
        firstBlock2 = [(FIFOQueue *)v11 firstBlock];
        [(T1TPDUMapping *)self handleRBlock:v25 ackBlock:firstBlock2 queue:v11 resultData:v44];
        goto LABEL_27;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        firstBlock2 = [(FIFOQueue *)v11 firstBlock];
        [(T1TPDUMapping *)self handleSBlock:v25 ackBlock:firstBlock2 queue:v11 abortBlock:v43 resynchBlock:v42];
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
        firstBlock3 = [(FIFOQueue *)v11 firstBlock];
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

    firstBlock2 = [(FIFOQueue *)v11 firstBlock];
    [(T1TPDUMapping *)self handleIBlock:v25 ackBlock:firstBlock2 queue:v11 resultData:v44];
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

- (id)secure:(id)secure APDU:(id)u
{
  secureCopy = secure;
  uCopy = u;
  v8 = sub_100008B80();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100016A28();
  }

  v9 = objc_alloc_init(FIFOQueue);
  v26 = uCopy;
  [(T1TPDUMapping *)self fillQueue:v9 request:uCopy ifs:self->_cardSequence];
  dequeueBlock = [(FIFOQueue *)v9 dequeueBlock];
  [secureCopy setNodeAddressByte:{objc_msgSend(dequeueBlock, "nodeAddressByte")}];
  [secureCopy setProtocolControlByte:{objc_msgSend(dequeueBlock, "protocolControlByte")}];
  [secureCopy setLengthByte:{objc_msgSend(dequeueBlock, "lengthByte")}];
  v27 = secureCopy;
  buffer = [secureCopy buffer];
  v12 = [NSMutableData dataWithData:buffer];

  informationField = [dequeueBlock informationField];
  [v12 appendData:informationField];

  v14 = [CCIDMessageView create:105 withPayload:v12];
  [v14 setWLevelParameter:0];
  [v14 setBBWI:0];
  WeakRetained = objc_loadWeakRetained(&self->super._transmitter);
  v16 = [WeakRetained transmitAndReceive:v14 maxPayload:0 outTimeout:0 inTimeout:&off_100027330 transmitted:0];

  v28 = 6;
  dequeueBlock2 = [(FIFOQueue *)v9 dequeueBlock];

  if (dequeueBlock2)
  {
    do
    {
      BYTE1(v28) = [dequeueBlock2 nodeAddressByte];
      BYTE2(v28) = [dequeueBlock2 protocolControlByte];
      HIBYTE(v28) = [dequeueBlock2 lengthByte];
      v18 = [NSMutableData dataWithBytes:&v28 length:4];

      informationField2 = [dequeueBlock2 informationField];
      [v18 appendData:informationField2];

      v20 = [CCIDMessageView create:105 withPayload:v18];

      [v20 setWLevelParameter:0];
      [v20 setBBWI:0];
      v21 = objc_loadWeakRetained(&self->super._transmitter);
      v22 = [v21 transmitAndReceive:v20 maxPayload:0 outTimeout:0 inTimeout:&off_100027330 transmitted:0];

      dequeueBlock3 = [(FIFOQueue *)v9 dequeueBlock];

      dequeueBlock2 = dequeueBlock3;
      v16 = v22;
      v14 = v20;
      v12 = v18;
    }

    while (dequeueBlock3);
  }

  else
  {
    v18 = v12;
    v20 = v14;
    v22 = v16;
  }

  aPayload = [v22 aPayload];

  return aPayload;
}

@end