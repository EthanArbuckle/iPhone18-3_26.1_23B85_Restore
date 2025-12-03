@interface PDDPStateChangesIOS134MACOS10154
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDDPStateChangesIOS134MACOS10154

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPStateChangesIOS134MACOS10154;
  v3 = [(PDDPStateChangesIOS134MACOS10154 *)&v7 description];
  dictionaryRepresentation = [(PDDPStateChangesIOS134MACOS10154 *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  activityState = self->_activityState;
  if (activityState)
  {
    dictionaryRepresentation = [(PDDPStateChangesIOS134MACOS10154ActivityDomainState *)activityState dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"activity_state"];
  }

  progressState = self->_progressState;
  if (progressState)
  {
    dictionaryRepresentation2 = [(PDDPStateChangesIOS134MACOS10154ProgressDomainState *)progressState dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"progress_state"];
  }

  personalState = self->_personalState;
  if (personalState)
  {
    dictionaryRepresentation3 = [(PDDPStateChangesIOS134MACOS10154PersonalDomainState *)personalState dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation3 forKey:@"personal_state"];
  }

  messageState = self->_messageState;
  if (messageState)
  {
    dictionaryRepresentation4 = [(PDDPStateChangesIOS134MACOS10154MessageDomainState *)messageState dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation4 forKey:@"message_state"];
  }

  handoutState = self->_handoutState;
  if (handoutState)
  {
    dictionaryRepresentation5 = [(PDDPStateChangesIOS134MACOS10154HandoutDomainState *)handoutState dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation5 forKey:@"handout_state"];
  }

  return v3;
}

- (BOOL)readFrom:(id)from
{
  position = [from position];
  if (position < [from length])
  {
    do
    {
      if ([from hasError])
      {
        return [from hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v18) = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v18 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v18 & 0x7F) << v6;
        if ((v18 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        if (v7++ >= 9)
        {
          v13 = 0;
          goto LABEL_15;
        }
      }

      v13 = [from hasError] ? 0 : v8;
LABEL_15:
      if (([from hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [from hasError] ^ 1;
      }

      v14 = v13 >> 3;
      if ((v13 >> 3) <= 2)
      {
        if (v14 == 1)
        {
          v15 = objc_alloc_init(PDDPStateChangesIOS134MACOS10154ActivityDomainState);
          objc_storeStrong(&self->_activityState, v15);
          v18 = 0;
          v19 = 0;
          if (!PBReaderPlaceMark() || !sub_100139E0C(v15, from))
          {
LABEL_43:

            return 0;
          }

          goto LABEL_37;
        }

        if (v14 == 2)
        {
          v15 = objc_alloc_init(PDDPStateChangesIOS134MACOS10154ProgressDomainState);
          objc_storeStrong(&self->_progressState, v15);
          v18 = 0;
          v19 = 0;
          if (!PBReaderPlaceMark() || !sub_10015E7E4(v15, from))
          {
            goto LABEL_43;
          }

          goto LABEL_37;
        }
      }

      else
      {
        switch(v14)
        {
          case 3:
            v15 = objc_alloc_init(PDDPStateChangesIOS134MACOS10154PersonalDomainState);
            objc_storeStrong(&self->_personalState, v15);
            v18 = 0;
            v19 = 0;
            if (!PBReaderPlaceMark() || !sub_100172D44(v15, from))
            {
              goto LABEL_43;
            }

            goto LABEL_37;
          case 4:
            v15 = objc_alloc_init(PDDPStateChangesIOS134MACOS10154MessageDomainState);
            objc_storeStrong(&self->_messageState, v15);
            v18 = 0;
            v19 = 0;
            if (!PBReaderPlaceMark() || !sub_10011A690(v15, from))
            {
              goto LABEL_43;
            }

            goto LABEL_37;
          case 5:
            v15 = objc_alloc_init(PDDPStateChangesIOS134MACOS10154HandoutDomainState);
            objc_storeStrong(&self->_handoutState, v15);
            v18 = 0;
            v19 = 0;
            if (!PBReaderPlaceMark() || !sub_1000910A8(v15, from))
            {
              goto LABEL_43;
            }

LABEL_37:
            PBReaderRecallMark();

            goto LABEL_38;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_38:
      position2 = [from position];
    }

    while (position2 < [from length]);
  }

  return [from hasError] ^ 1;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_activityState)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_progressState)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_personalState)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_messageState)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_handoutState)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_activityState)
  {
    [toCopy setActivityState:?];
    toCopy = v5;
  }

  if (self->_progressState)
  {
    [v5 setProgressState:?];
    toCopy = v5;
  }

  if (self->_personalState)
  {
    [v5 setPersonalState:?];
    toCopy = v5;
  }

  if (self->_messageState)
  {
    [v5 setMessageState:?];
    toCopy = v5;
  }

  if (self->_handoutState)
  {
    [v5 setHandoutState:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PDDPStateChangesIOS134MACOS10154ActivityDomainState *)self->_activityState copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(PDDPStateChangesIOS134MACOS10154ProgressDomainState *)self->_progressState copyWithZone:zone];
  v9 = v5[5];
  v5[5] = v8;

  v10 = [(PDDPStateChangesIOS134MACOS10154PersonalDomainState *)self->_personalState copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(PDDPStateChangesIOS134MACOS10154MessageDomainState *)self->_messageState copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(PDDPStateChangesIOS134MACOS10154HandoutDomainState *)self->_handoutState copyWithZone:zone];
  v15 = v5[2];
  v5[2] = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((activityState = self->_activityState, !(activityState | equalCopy[1])) || -[PDDPStateChangesIOS134MACOS10154ActivityDomainState isEqual:](activityState, "isEqual:")) && ((progressState = self->_progressState, !(progressState | equalCopy[5])) || -[PDDPStateChangesIOS134MACOS10154ProgressDomainState isEqual:](progressState, "isEqual:")) && ((personalState = self->_personalState, !(personalState | equalCopy[4])) || -[PDDPStateChangesIOS134MACOS10154PersonalDomainState isEqual:](personalState, "isEqual:")) && ((messageState = self->_messageState, !(messageState | equalCopy[3])) || -[PDDPStateChangesIOS134MACOS10154MessageDomainState isEqual:](messageState, "isEqual:")))
  {
    handoutState = self->_handoutState;
    if (handoutState | equalCopy[2])
    {
      v10 = [(PDDPStateChangesIOS134MACOS10154HandoutDomainState *)handoutState isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(PDDPStateChangesIOS134MACOS10154ActivityDomainState *)self->_activityState hash];
  v4 = [(PDDPStateChangesIOS134MACOS10154ProgressDomainState *)self->_progressState hash]^ v3;
  v5 = [(PDDPStateChangesIOS134MACOS10154PersonalDomainState *)self->_personalState hash];
  v6 = v4 ^ v5 ^ [(PDDPStateChangesIOS134MACOS10154MessageDomainState *)self->_messageState hash];
  return v6 ^ [(PDDPStateChangesIOS134MACOS10154HandoutDomainState *)self->_handoutState hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  activityState = self->_activityState;
  v15 = fromCopy;
  v6 = fromCopy[1];
  if (activityState)
  {
    if (v6)
    {
      [(PDDPStateChangesIOS134MACOS10154ActivityDomainState *)activityState mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PDDPStateChangesIOS134MACOS10154 *)self setActivityState:?];
  }

  progressState = self->_progressState;
  v8 = v15[5];
  if (progressState)
  {
    if (v8)
    {
      [(PDDPStateChangesIOS134MACOS10154ProgressDomainState *)progressState mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(PDDPStateChangesIOS134MACOS10154 *)self setProgressState:?];
  }

  personalState = self->_personalState;
  v10 = v15[4];
  if (personalState)
  {
    if (v10)
    {
      [(PDDPStateChangesIOS134MACOS10154PersonalDomainState *)personalState mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(PDDPStateChangesIOS134MACOS10154 *)self setPersonalState:?];
  }

  messageState = self->_messageState;
  v12 = v15[3];
  if (messageState)
  {
    if (v12)
    {
      [(PDDPStateChangesIOS134MACOS10154MessageDomainState *)messageState mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(PDDPStateChangesIOS134MACOS10154 *)self setMessageState:?];
  }

  handoutState = self->_handoutState;
  v14 = v15[2];
  if (handoutState)
  {
    if (v14)
    {
      [(PDDPStateChangesIOS134MACOS10154HandoutDomainState *)handoutState mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(PDDPStateChangesIOS134MACOS10154 *)self setHandoutState:?];
  }
}

@end