@interface AVAudioIONodeDescription
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation AVAudioIONodeDescription

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    sourceSession = self->_sourceSession;
    if (sourceSession == [v5 sourceSession])
    {
      sessionOwnerPID = self->_sessionOwnerPID;
      sessionOwnerPID = [v5 sessionOwnerPID];
      if (sessionOwnerPID == sessionOwnerPID)
      {
        playerType = self->_playerType;
        v9 = playerType == [v5 playerType];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(AVAudioIONodeDescription);
  [(AVAudioIONodeDescription *)v4 setSourceSession:self->_sourceSession];
  [(AVAudioIONodeDescription *)v4 setSessionOwnerPID:self->_sessionOwnerPID];
  [(AVAudioIONodeDescription *)v4 setPlayerType:self->_playerType];
  return v4;
}

@end