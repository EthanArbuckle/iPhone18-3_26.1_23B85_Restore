@interface AVAudioInterruptionNotificationInternal
- (AVAudioInterruptionNotificationInternal)initWithInterruptionState:(unsigned int)a3 sessionOwnerPID:(unsigned int)a4 sourceSessionID:(unsigned int)a5 nodeSessionID:(id)a6 interruptionInfo:(id)a7;
- (BOOL)isEqual:(id)a3;
@end

@implementation AVAudioInterruptionNotificationInternal

- (AVAudioInterruptionNotificationInternal)initWithInterruptionState:(unsigned int)a3 sessionOwnerPID:(unsigned int)a4 sourceSessionID:(unsigned int)a5 nodeSessionID:(id)a6 interruptionInfo:(id)a7
{
  v13 = a6;
  v14 = a7;
  v18.receiver = self;
  v18.super_class = AVAudioInterruptionNotificationInternal;
  v15 = [(AVAudioInterruptionNotificationInternal *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_interruptionState = a3;
    v15->_sessionOwnerPID = a4;
    v15->_sourceSessionID = a5;
    objc_storeStrong(&v15->_nodeSessionID, a6);
    objc_storeStrong(&v16->_interruptionInfo, a7);
  }

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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