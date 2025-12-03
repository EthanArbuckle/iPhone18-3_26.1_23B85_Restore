@interface AVAudioInterruptionNotificationInternal
- (AVAudioInterruptionNotificationInternal)initWithInterruptionState:(unsigned int)state sessionOwnerPID:(unsigned int)d sourceSessionID:(unsigned int)iD nodeSessionID:(id)sessionID interruptionInfo:(id)info;
- (BOOL)isEqual:(id)equal;
@end

@implementation AVAudioInterruptionNotificationInternal

- (AVAudioInterruptionNotificationInternal)initWithInterruptionState:(unsigned int)state sessionOwnerPID:(unsigned int)d sourceSessionID:(unsigned int)iD nodeSessionID:(id)sessionID interruptionInfo:(id)info
{
  sessionIDCopy = sessionID;
  infoCopy = info;
  v18.receiver = self;
  v18.super_class = AVAudioInterruptionNotificationInternal;
  v15 = [(AVAudioInterruptionNotificationInternal *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_interruptionState = state;
    v15->_sessionOwnerPID = d;
    v15->_sourceSessionID = iD;
    objc_storeStrong(&v15->_nodeSessionID, sessionID);
    objc_storeStrong(&v16->_interruptionInfo, info);
  }

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    v9 = 0;
    if (self->_interruptionState == *(v5 + 2) && self->_sessionOwnerPID == *(v5 + 3))
    {
      nodeSessionID = self->_nodeSessionID;
      if ((nodeSessionID == 0) != (v6[3] != 0) && (!nodeSessionID || ![(NSNumber *)nodeSessionID isEqualToNumber:?]))
      {
        interruptionInfo = self->_interruptionInfo;
        if ((interruptionInfo == 0) != (v6[4] != 0) && (!interruptionInfo || ![(NSDictionary *)interruptionInfo isEqualToDictionary:?]))
        {
          v9 = 1;
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end