@interface PDDPStateChangesIOS134MACOS10154
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPStateChangesIOS134MACOS10154

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPStateChangesIOS134MACOS10154;
  v3 = [(PDDPStateChangesIOS134MACOS10154 *)&v7 description];
  v4 = [(PDDPStateChangesIOS134MACOS10154 *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  activityState = self->_activityState;
  if (activityState)
  {
    v5 = [(PDDPStateChangesIOS134MACOS10154ActivityDomainState *)activityState dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"activity_state"];
  }

  progressState = self->_progressState;
  if (progressState)
  {
    v7 = [(PDDPStateChangesIOS134MACOS10154ProgressDomainState *)progressState dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"progress_state"];
  }

  personalState = self->_personalState;
  if (personalState)
  {
    v9 = [(PDDPStateChangesIOS134MACOS10154PersonalDomainState *)personalState dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"personal_state"];
  }

  messageState = self->_messageState;
  if (messageState)
  {
    v11 = [(PDDPStateChangesIOS134MACOS10154MessageDomainState *)messageState dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"message_state"];
  }

  handoutState = self->_handoutState;
  if (handoutState)
  {
    v13 = [(PDDPStateChangesIOS134MACOS10154HandoutDomainState *)handoutState dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"handout_state"];
  }

  return v3;
}

- (BOOL)readFrom:(id)a3
{
  v5 = [a3 position];
  if (v5 < [a3 length])
  {
    do
    {
      if ([a3 hasError])
      {
        return [a3 hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v18) = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v18 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
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

      v13 = [a3 hasError] ? 0 : v8;
LABEL_15:
      if (([a3 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [a3 hasError] ^ 1;
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
          if (!PBReaderPlaceMark() || !sub_100139E0C(v15, a3))
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
          if (!PBReaderPlaceMark() || !sub_10015E7E4(v15, a3))
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
            if (!PBReaderPlaceMark() || !sub_100172D44(v15, a3))
            {
              goto LABEL_43;
            }

            goto LABEL_37;
          case 4:
            v15 = objc_alloc_init(PDDPStateChangesIOS134MACOS10154MessageDomainState);
            objc_storeStrong(&self->_messageState, v15);
            v18 = 0;
            v19 = 0;
            if (!PBReaderPlaceMark() || !sub_10011A690(v15, a3))
            {
              goto LABEL_43;
            }

            goto LABEL_37;
          case 5:
            v15 = objc_alloc_init(PDDPStateChangesIOS134MACOS10154HandoutDomainState);
            objc_storeStrong(&self->_handoutState, v15);
            v18 = 0;
            v19 = 0;
            if (!PBReaderPlaceMark() || !sub_1000910A8(v15, a3))
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
      v16 = [a3 position];
    }

    while (v16 < [a3 length]);
  }

  return [a3 hasError] ^ 1;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_activityState)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_progressState)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_personalState)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_messageState)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_handoutState)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_activityState)
  {
    [v4 setActivityState:?];
    v4 = v5;
  }

  if (self->_progressState)
  {
    [v5 setProgressState:?];
    v4 = v5;
  }

  if (self->_personalState)
  {
    [v5 setPersonalState:?];
    v4 = v5;
  }

  if (self->_messageState)
  {
    [v5 setMessageState:?];
    v4 = v5;
  }

  if (self->_handoutState)
  {
    [v5 setHandoutState:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PDDPStateChangesIOS134MACOS10154ActivityDomainState *)self->_activityState copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(PDDPStateChangesIOS134MACOS10154ProgressDomainState *)self->_progressState copyWithZone:a3];
  v9 = v5[5];
  v5[5] = v8;

  v10 = [(PDDPStateChangesIOS134MACOS10154PersonalDomainState *)self->_personalState copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(PDDPStateChangesIOS134MACOS10154MessageDomainState *)self->_messageState copyWithZone:a3];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(PDDPStateChangesIOS134MACOS10154HandoutDomainState *)self->_handoutState copyWithZone:a3];
  v15 = v5[2];
  v5[2] = v14;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((activityState = self->_activityState, !(activityState | v4[1])) || -[PDDPStateChangesIOS134MACOS10154ActivityDomainState isEqual:](activityState, "isEqual:")) && ((progressState = self->_progressState, !(progressState | v4[5])) || -[PDDPStateChangesIOS134MACOS10154ProgressDomainState isEqual:](progressState, "isEqual:")) && ((personalState = self->_personalState, !(personalState | v4[4])) || -[PDDPStateChangesIOS134MACOS10154PersonalDomainState isEqual:](personalState, "isEqual:")) && ((messageState = self->_messageState, !(messageState | v4[3])) || -[PDDPStateChangesIOS134MACOS10154MessageDomainState isEqual:](messageState, "isEqual:")))
  {
    handoutState = self->_handoutState;
    if (handoutState | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  activityState = self->_activityState;
  v15 = v4;
  v6 = v4[1];
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