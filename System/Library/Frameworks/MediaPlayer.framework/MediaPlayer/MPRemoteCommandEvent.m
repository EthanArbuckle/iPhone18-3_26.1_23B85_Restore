@interface MPRemoteCommandEvent
+ (MPRemoteCommandEvent)eventWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5;
- (MPRemoteCommandEvent)init;
- (MPRemoteCommandEvent)initWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5;
- (NSString)associatedParticipantIdentifier;
- (NSString)contentItemID;
- (NSString)interfaceID;
- (NSString)sourceID;
- (id)description;
- (int64_t)playbackQueueOffset;
- (unsigned)mediaRemoteCommandType;
- (void)_updateDispatch:(id)a3;
@end

@implementation MPRemoteCommandEvent

- (void)_updateDispatch:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&self->_deliveryDate, v4[6]);
    v6 = v5[7];
  }

  else
  {
    objc_storeStrong(&self->_deliveryDate, 0);
    v6 = 0;
  }

  objc_storeStrong(&self->_dispatchDate, v6);
  if (v5)
  {
    objc_storeStrong(&self->_responseDate, v5[9]);
    v7 = v5[8];
  }

  else
  {
    objc_storeStrong(&self->_responseDate, 0);
    v7 = 0;
  }

  v8 = v7;

  timeoutDate = self->_timeoutDate;
  self->_timeoutDate = v8;
}

- (int64_t)playbackQueueOffset
{
  v2 = [(MPRemoteCommandEvent *)self mediaRemoteOptions];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69B1180]];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

- (NSString)contentItemID
{
  v2 = [(MPRemoteCommandEvent *)self mediaRemoteOptions];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69B10C8]];

  return v3;
}

- (NSString)associatedParticipantIdentifier
{
  v2 = [(MPRemoteCommandEvent *)self mediaRemoteOptions];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69B1098]];

  return v3;
}

- (NSString)sourceID
{
  v3 = [(MPRemoteCommandEvent *)self mediaRemoteOptions];
  v4 = [v3 objectForKeyedSubscript:@"kMRMediaRemoteOptionSenderID"];

  v5 = [(MPRemoteCommandEvent *)self mediaRemoteOptions];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69B1200]];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@)", v4, v6];

  return v7;
}

- (NSString)interfaceID
{
  v2 = [(MPRemoteCommandEvent *)self mediaRemoteOptions];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69B1200]];

  return v3;
}

- (unsigned)mediaRemoteCommandType
{
  v2 = [(MPRemoteCommandEvent *)self command];
  v3 = [v2 mediaRemoteCommandType];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MPRemoteCommandEvent *)self commandID];
  v6 = [(MPRemoteCommandEvent *)self command];
  v7 = [(MPRemoteCommandEvent *)self sourceID];
  v8 = [v3 stringWithFormat:@"<%@: %p commandID=%@ command=%@ sourceID=%@>", v4, self, v5, v6, v7];

  return v8;
}

- (MPRemoteCommandEvent)initWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5
{
  v8 = a3;
  v9 = a5;
  v33.receiver = self;
  v33.super_class = MPRemoteCommandEvent;
  v10 = [(MPRemoteCommandEvent *)&v33 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_command, a3);
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v11->_timestamp = v12;
    [v8 timeout];
    v11->_timeout = v13;
    v14 = *MEMORY[0x1E69B10C0];
    v15 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69B10C0]];

    if (v15)
    {
      v16 = [v9 objectForKeyedSubscript:v14];
      [v16 doubleValue];
      v11->_timeout = v17;
    }

    v18 = [v9 copy];
    mediaRemoteOptions = v11->_mediaRemoteOptions;
    v11->_mediaRemoteOptions = v18;

    v20 = [v9 objectForKey:*MEMORY[0x1E69B10D0]];
    v21 = [v20 copy];
    contextID = v11->_contextID;
    v11->_contextID = v21;

    v23 = [v9 objectForKey:*MEMORY[0x1E69B10B0]];
    v24 = [v23 copy];
    v25 = v24;
    if (v24)
    {
      v26 = v24;
      commandID = v11->_commandID;
      v11->_commandID = v26;
    }

    else
    {
      v28 = MEMORY[0x1E696AEC0];
      commandID = [MEMORY[0x1E696AFB0] UUID];
      v29 = [commandID UUIDString];
      v30 = [v28 stringWithFormat:@"<missing: %@>", v29];
      v31 = v11->_commandID;
      v11->_commandID = v30;
    }
  }

  return v11;
}

- (MPRemoteCommandEvent)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D920];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 raise:v4 format:{@"%@s cannot be initialized externally.", v6}];

  return 0;
}

+ (MPRemoteCommandEvent)eventWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5
{
  v5 = *&a4;
  v7 = a5;
  v8 = a3;
  v9 = objc_opt_class();
  if (v5 <= 25)
  {
    if (v5 <= 16)
    {
      if (v5 > 7)
      {
        if ((v5 - 8) >= 4)
        {
          goto LABEL_27;
        }
      }

      else if ((v5 - 4) >= 2 && v5 != 6 && v5 != 7)
      {
        goto LABEL_27;
      }
    }

    else if (v5 <= 20)
    {
      if ((v5 - 17) >= 2 && v5 != 19 && v5 != 20)
      {
        goto LABEL_27;
      }
    }

    else if ((v5 - 21) >= 3 && v5 != 24 && v5 != 25)
    {
      goto LABEL_27;
    }

LABEL_26:
    v9 = objc_opt_class();
    goto LABEL_27;
  }

  switch(v5)
  {
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 121:
    case 122:
    case 124:
    case 125:
    case 127:
    case 128:
    case 130:
    case 131:
    case 132:
    case 133:
    case 135:
    case 136:
    case 137:
    case 138:
    case 139:
    case 140:
    case 142:
    case 146:
    case 147:
      goto LABEL_26;
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 123:
    case 126:
    case 129:
    case 134:
    case 141:
    case 143:
    case 144:
    case 145:
      break;
    default:
      if ((v5 - 27) < 2 || v5 == 26)
      {
        goto LABEL_26;
      }

      break;
  }

LABEL_27:
  v10 = [[v9 alloc] initWithCommand:v8 mediaRemoteType:v5 options:v7];

  return v10;
}

@end