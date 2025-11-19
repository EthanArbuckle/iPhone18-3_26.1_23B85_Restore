@interface AFMyriadAccessoryMessage
+ (BOOL)isMyriadRequestMessage:(id)a3;
+ (id)myriadRequestTypeAsString:(unint64_t)a3;
- (AFMyriadAccessoryMessage)initWithAccessoryMessage:(id)a3 accessoryId:(id)a4;
- (AFMyriadAccessoryMessage)initWithAccessoryMessageAsDictionary:(id)a3 accessoryId:(id)a4;
- (AFMyriadAccessoryMessage)initWithRequestType:(unint64_t)a3 session:(unint64_t)a4 voiceTriggerEndTime:(double)a5 audioHash:(unsigned __int16)a6 goodnessScore:(unsigned __int8)a7 userConfidenceScore:(unsigned __int8)a8 tieBreaker:(unsigned __int8)a9 deviceClass:(unsigned __int8)a10 deviceGroup:(unsigned __int8)a11 productType:(unsigned __int8)a12 electionDecision:(unsigned __int8)a13 emergencyHandled:(unsigned __int8)a14 ack:(unsigned __int8)a15 accessoryId:(id)a16;
- (id)description;
- (id)initElectionDecisionMessageWithSessionId:(unint64_t)a3 decision:(BOOL)a4 accessoryId:(id)a5;
- (id)initPreheatMessageWithSessionId:(unint64_t)a3 accessoryId:(id)a4;
- (id)initResetMessageWithSessionId:(unint64_t)a3 accessoryId:(id)a4;
- (id)messageAsData;
- (void)_initWithMessage:(const myrAccessoryMessage *)a3;
- (void)_initializeMessageObj:(id)a3;
- (void)_initializeMessageObjFromDictionary:(id)a3;
@end

@implementation AFMyriadAccessoryMessage

- (id)description
{
  v29[16] = *MEMORY[0x1E69E9840];
  v28[0] = @"iSane";
  v27 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSane];
  v29[0] = v27;
  v28[1] = @"ACK";
  ack = self->_message.ack;
  if (self->_message.ack)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"1 (ACKNOWLEDGEMENT)"];
  }

  else
  {
    v3 = @"0";
  }

  v19 = v3;
  v29[1] = v3;
  v28[2] = @"usesSerializedProtocol";
  v25 = [MEMORY[0x1E696AD98] numberWithBool:self->_serializedProtocol];
  v29[2] = v25;
  v28[3] = @"Version";
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_message.version];
  v29[3] = v24;
  v28[4] = @"RequestType";
  v4 = MEMORY[0x1E696AEC0];
  requestType = self->_message.requestType;
  v23 = [AFMyriadAccessoryMessage myriadRequestTypeAsString:requestType];
  v22 = [v4 stringWithFormat:@"%llu (%@)", requestType, v23];
  v29[4] = v22;
  v28[5] = @"Session";
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_message.session];
  v29[5] = v21;
  v28[6] = @"VoiceTrigger endtime";
  v20 = [MEMORY[0x1E696AD98] numberWithDouble:self->_message.voiceTriggerEndTime];
  v29[6] = v20;
  v28[7] = @"AudioHash";
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hash=%#04x", self->_message.audioHash];
  v29[7] = v6;
  v28[8] = @"GoodnessScore";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_message.goodnessScore];
  v29[8] = v7;
  v28[9] = @"UserConfidence";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_message.userConfidenceScore];
  v29[9] = v8;
  v28[10] = @"TieBreaker";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_message.tieBreaker];
  v29[10] = v9;
  v28[11] = @"DeviceClass";
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_message.deviceClass];
  v29[11] = v10;
  v28[12] = @"DeviceGroup";
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_message.deviceGroup];
  v29[12] = v11;
  v28[13] = @"ProductType";
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_message.productType];
  v29[13] = v12;
  v28[14] = @"ElectionDecision";
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_message.electionDecision];
  v29[14] = v13;
  v28[15] = @"EmergencyHandled";
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_message.emergencyHandled];
  v29[15] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:16];

  if (ack)
  {
  }

  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v15];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)messageAsData
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF88]);
  [v3 appendBytes:&self->_message length:48];

  return v3;
}

- (AFMyriadAccessoryMessage)initWithAccessoryMessageAsDictionary:(id)a3 accessoryId:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = AFMyriadAccessoryMessage;
  v8 = [(AFMyriadAccessoryMessage *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_accessoryId, a4);
    *&v9->_message.audioHash = 0u;
    *&v9->_message.session = 0u;
    *&v9->_message.version = 0u;
    [(AFMyriadAccessoryMessage *)v9 _initializeMessageObjFromDictionary:v6];
  }

  return v9;
}

- (AFMyriadAccessoryMessage)initWithAccessoryMessage:(id)a3 accessoryId:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = AFMyriadAccessoryMessage;
  v8 = [(AFMyriadAccessoryMessage *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_accessoryId, a4);
    *&v9->_message.audioHash = 0u;
    *&v9->_message.session = 0u;
    *&v9->_message.version = 0u;
    [(AFMyriadAccessoryMessage *)v9 _initializeMessageObj:v6];
  }

  return v9;
}

- (id)initResetMessageWithSessionId:(unint64_t)a3 accessoryId:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = AFMyriadAccessoryMessage;
  v8 = [(AFMyriadAccessoryMessage *)&v11 init];
  v9 = v8;
  if (v8)
  {
    *(v8 + 9) = 0u;
    *(v8 + 25) = 0u;
    *(v8 + 40) = 0u;
    v8[8] = 1;
    *(v8 + 2) = 1;
    *(v8 + 3) = a3;
    objc_storeStrong(v8 + 12, a4);
    v9[33] = 257;
    [v9 _initWithMessage:v9 + 4];
  }

  return v9;
}

- (id)initElectionDecisionMessageWithSessionId:(unint64_t)a3 decision:(BOOL)a4 accessoryId:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = AFMyriadAccessoryMessage;
  v10 = [(AFMyriadAccessoryMessage *)&v13 init];
  v11 = v10;
  if (v10)
  {
    *(v10 + 9) = 0u;
    *(v10 + 25) = 0u;
    *(v10 + 40) = 0u;
    v10[8] = 1;
    *(v10 + 2) = 10;
    *(v10 + 3) = a3;
    v10[48] = a4;
    objc_storeStrong(v10 + 12, a5);
    v11[33] = 257;
    [v11 _initWithMessage:v11 + 4];
  }

  return v11;
}

- (id)initPreheatMessageWithSessionId:(unint64_t)a3 accessoryId:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = AFMyriadAccessoryMessage;
  v8 = [(AFMyriadAccessoryMessage *)&v11 init];
  v9 = v8;
  if (v8)
  {
    *(v8 + 9) = 0u;
    *(v8 + 25) = 0u;
    *(v8 + 40) = 0u;
    v8[8] = 1;
    *(v8 + 2) = 6;
    *(v8 + 3) = a3;
    objc_storeStrong(v8 + 12, a4);
    v9[33] = 257;
    [v9 _initWithMessage:v9 + 4];
  }

  return v9;
}

- (AFMyriadAccessoryMessage)initWithRequestType:(unint64_t)a3 session:(unint64_t)a4 voiceTriggerEndTime:(double)a5 audioHash:(unsigned __int16)a6 goodnessScore:(unsigned __int8)a7 userConfidenceScore:(unsigned __int8)a8 tieBreaker:(unsigned __int8)a9 deviceClass:(unsigned __int8)a10 deviceGroup:(unsigned __int8)a11 productType:(unsigned __int8)a12 electionDecision:(unsigned __int8)a13 emergencyHandled:(unsigned __int8)a14 ack:(unsigned __int8)a15 accessoryId:(id)a16
{
  v24 = a16;
  v28.receiver = self;
  v28.super_class = AFMyriadAccessoryMessage;
  v25 = [(AFMyriadAccessoryMessage *)&v28 init];
  v26 = v25;
  if (v25)
  {
    *(v25 + 9) = 0u;
    *(v25 + 25) = 0u;
    *(v25 + 40) = 0u;
    v25[8] = 1;
    *(v25 + 2) = a3;
    *(v25 + 3) = a4;
    *(v25 + 4) = a5;
    *(v25 + 20) = a6;
    v25[42] = a7;
    v25[43] = a8;
    v25[44] = a9;
    v25[45] = a10;
    v25[46] = a11;
    v25[47] = a12;
    v25[48] = a13;
    v25[49] = a14;
    v25[50] = a15;
    objc_storeStrong(v25 + 12, a16);
    *(v26 + 33) = 257;
    [v26 _initWithMessage:v26 + 8];
  }

  return v26;
}

- (void)_initWithMessage:(const myrAccessoryMessage *)a3
{
  if (a3)
  {
    self->_version = a3->version;
    self->_requestType = a3->requestType;
    self->_session = a3->session;
    self->_voiceTriggerEndTime = a3->voiceTriggerEndTime;
    self->_audioHash = a3->audioHash;
    self->_goodnessScore = a3->goodnessScore;
    self->_userConfidenceScore = a3->userConfidenceScore;
    self->_tieBreaker = a3->tieBreaker;
    self->_deviceClass = a3->deviceClass;
    self->_deviceGroup = a3->deviceGroup;
    self->_productType = a3->productType;
    self->_electionDecision = a3->electionDecision;
    self->_emergencyHandled = a3->emergencyHandled;
    self->_ack = a3->ack;
  }
}

- (void)_initializeMessageObjFromDictionary:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[AFMyriadAccessoryMessage acknowledgeRequestKey];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = +[AFMyriadAccessoryMessage sessionIdKey];
  v8 = [v4 objectForKeyedSubscript:v7];

  v9 = +[AFMyriadAccessoryMessage requestTypeKey];
  v10 = [v4 objectForKeyedSubscript:v9];

  v11 = +[AFMyriadAccessoryMessage messageKey];
  v12 = [v4 objectForKeyedSubscript:v11];

  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(AFMyriadAccessoryMessage *)self _initializeMessageObj:v12];
      goto LABEL_31;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v8;
      v14 = v10;
      self->_serializedProtocol = 0;
      self->_message.requestType = [v14 unsignedLongValue];
      self->_message.session = [(NSUUID *)v13 unsignedLongValue];
      if (v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v6 unsignedIntValue])
          {
            self->_message.ack = 1;
            self->_isSane = 1;
LABEL_30:

            goto LABEL_31;
          }
        }
      }

      if (v14)
      {
        v17 = [v14 intValue];
        switch(v17)
        {
          case 10:
            self->_isSane = 1;
            v22 = +[AFMyriadAccessoryMessage electionDecisionKey];
            v20 = [v4 objectForKeyedSubscript:v22];

            if (v20)
            {
              v23 = [v20 unsignedIntValue];
            }

            else
            {
              v23 = 0;
            }

            self->_message.electionDecision = v23;
            break;
          case 9:
            self->_isSane = 1;
            v19 = +[AFMyriadAccessoryMessage emergencyHandledKey];
            v20 = [v4 objectForKeyedSubscript:v19];

            if (v20)
            {
              v21 = [v20 unsignedIntValue];
            }

            else
            {
              v21 = 0;
            }

            self->_message.emergencyHandled = v21;
            break;
          case 8:
            self->_isSane = 1;
            [(AFMyriadAccessoryMessage *)self _initWithMessage:&self->_message];
            goto LABEL_30;
          default:
            goto LABEL_18;
        }

        [(AFMyriadAccessoryMessage *)self _initWithMessage:&self->_message];

        goto LABEL_30;
      }

LABEL_18:
      v18 = AFSiriLogContextMyriad;
      if (os_log_type_enabled(AFSiriLogContextMyriad, OS_LOG_TYPE_DEBUG))
      {
        accessoryId = self->_accessoryId;
        v26 = 136315650;
        v27 = "[AFMyriadAccessoryMessage _initializeMessageObjFromDictionary:]";
        v28 = 2112;
        v29 = v14;
        v30 = 2112;
        v31 = accessoryId;
        _os_log_debug_impl(&dword_1912FE000, v18, OS_LOG_TYPE_DEBUG, "%s Unknown request type %@ for accessory id: %@, Ignoring.", &v26, 0x20u);
      }

      self->_isSane = 0;
      goto LABEL_30;
    }
  }

  v15 = AFSiriLogContextMyriad;
  if (os_log_type_enabled(AFSiriLogContextMyriad, OS_LOG_TYPE_INFO))
  {
    v16 = self->_accessoryId;
    v26 = 136315906;
    v27 = "[AFMyriadAccessoryMessage _initializeMessageObjFromDictionary:]";
    v28 = 2112;
    v29 = v4;
    v30 = 2112;
    v31 = v8;
    v32 = 2112;
    v33 = v16;
    _os_log_impl(&dword_1912FE000, v15, OS_LOG_TYPE_INFO, "%s Received a payload %@ with session id %@ for accessory id: %@, Ignoring.", &v26, 0x2Au);
  }

  self->_isSane = 0;
LABEL_31:

  v24 = *MEMORY[0x1E69E9840];
}

- (void)_initializeMessageObj:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  self->_serializedProtocol = 1;
  if (v4)
  {
    if ([v4 length])
    {
      v15 = 0;
      [v5 getBytes:&v15 range:{0, 1}];
      if (v15)
      {
        v6 = [v5 length];
        v7 = v6;
        v8 = v15;
        if (v15 && v6 >= 0x30)
        {
          v9 = [v5 bytes];
          p_message = &self->_message;
          v11 = self;
          v12 = 48;
        }

        else
        {
          if (v15 || v6 > 0x2F)
          {
            self->_isSane = 0;
            v13 = AFSiriLogContextMyriad;
            if (os_log_type_enabled(AFSiriLogContextMyriad, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v17 = "[AFMyriadAccessoryMessage _initializeMessageObj:]";
              v18 = 1024;
              v19 = v8;
              v20 = 2048;
              v21 = v7;
              _os_log_error_impl(&dword_1912FE000, v13, OS_LOG_TYPE_ERROR, "%s Wedged message received with version: %hhu and message length: %zu", buf, 0x1Cu);
            }

            goto LABEL_13;
          }

          v9 = [v5 bytes];
          p_message = &self->_message;
          v11 = self;
          v12 = v7;
        }

        [(AFMyriadAccessoryMessage *)v11 _copyRawBytesFromSource:v9 toDest:p_message length:v12];
        self->_isSane = 1;
LABEL_13:
        [(AFMyriadAccessoryMessage *)self _initWithMessage:&self->_message];
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

+ (id)myriadRequestTypeAsString:(unint64_t)a3
{
  if (a3 - 1 > 9)
  {
    return @"myrRequestTypeUnknown";
  }

  else
  {
    return off_1E7346860[a3 - 1];
  }
}

+ (BOOL)isMyriadRequestMessage:(id)a3
{
  v3 = a3;
  v4 = +[AFMyriadAccessoryMessage acknowledgeRequestKey];
  v5 = [v3 objectForKeyedSubscript:v4];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = +[AFMyriadAccessoryMessage requestTypeKey];
    v8 = [v3 objectForKeyedSubscript:v7];
    if (v8)
    {
      v6 = 1;
    }

    else
    {
      v9 = +[AFMyriadAccessoryMessage messageKey];
      v10 = [v3 objectForKeyedSubscript:v9];
      v6 = v10 != 0;
    }
  }

  return v6;
}

@end