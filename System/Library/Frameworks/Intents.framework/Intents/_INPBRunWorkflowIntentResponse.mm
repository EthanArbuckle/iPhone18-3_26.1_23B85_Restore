@interface _INPBRunWorkflowIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBRunWorkflowIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addStep:(id)step;
- (void)encodeWithCoder:(id)coder;
- (void)setHasRequestsIntentExecution:(BOOL)execution;
- (void)setHasWaitingForResume:(BOOL)resume;
- (void)setSteps:(id)steps;
- (void)setUtterance:(id)utterance;
- (void)writeTo:(id)to;
@end

@implementation _INPBRunWorkflowIntentResponse

- (id)dictionaryRepresentation
{
  v27 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBRunWorkflowIntentResponse *)self hasContinueRunning])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBRunWorkflowIntentResponse continueRunning](self, "continueRunning")}];
    [dictionary setObject:v4 forKeyedSubscript:@"continueRunning"];
  }

  if ([(_INPBRunWorkflowIntentResponse *)self hasRequestsIntentExecution])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBRunWorkflowIntentResponse requestsIntentExecution](self, "requestsIntentExecution")}];
    [dictionary setObject:v5 forKeyedSubscript:@"requestsIntentExecution"];
  }

  if ([(NSArray *)self->_steps count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = self->_steps;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v22 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"step"];
  }

  underlyingIntent = [(_INPBRunWorkflowIntentResponse *)self underlyingIntent];
  dictionaryRepresentation2 = [underlyingIntent dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"underlyingIntent"];

  underlyingIntentResponse = [(_INPBRunWorkflowIntentResponse *)self underlyingIntentResponse];
  dictionaryRepresentation3 = [underlyingIntentResponse dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"underlyingIntentResponse"];

  if (self->_utterance)
  {
    utterance = [(_INPBRunWorkflowIntentResponse *)self utterance];
    v18 = [utterance copy];
    [dictionary setObject:v18 forKeyedSubscript:@"utterance"];
  }

  if ([(_INPBRunWorkflowIntentResponse *)self hasWaitingForResume])
  {
    v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBRunWorkflowIntentResponse waitingForResume](self, "waitingForResume")}];
    [dictionary setObject:v19 forKeyedSubscript:@"waitingForResume"];
  }

  v20 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBRunWorkflowIntentResponse *)self hasContinueRunning])
  {
    v3 = 2654435761 * self->_continueRunning;
  }

  else
  {
    v3 = 0;
  }

  if ([(_INPBRunWorkflowIntentResponse *)self hasRequestsIntentExecution])
  {
    v4 = 2654435761 * self->_requestsIntentExecution;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSArray *)self->_steps hash];
  v6 = [(_INPBArchivedObject *)self->_underlyingIntent hash];
  v7 = [(_INPBArchivedObject *)self->_underlyingIntentResponse hash];
  v8 = [(NSString *)self->_utterance hash];
  if ([(_INPBRunWorkflowIntentResponse *)self hasWaitingForResume])
  {
    v9 = 2654435761 * self->_waitingForResume;
  }

  else
  {
    v9 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  hasContinueRunning = [(_INPBRunWorkflowIntentResponse *)self hasContinueRunning];
  if (hasContinueRunning != [equalCopy hasContinueRunning])
  {
    goto LABEL_30;
  }

  if ([(_INPBRunWorkflowIntentResponse *)self hasContinueRunning])
  {
    if ([equalCopy hasContinueRunning])
    {
      continueRunning = self->_continueRunning;
      if (continueRunning != [equalCopy continueRunning])
      {
        goto LABEL_30;
      }
    }
  }

  hasRequestsIntentExecution = [(_INPBRunWorkflowIntentResponse *)self hasRequestsIntentExecution];
  if (hasRequestsIntentExecution != [equalCopy hasRequestsIntentExecution])
  {
    goto LABEL_30;
  }

  if ([(_INPBRunWorkflowIntentResponse *)self hasRequestsIntentExecution])
  {
    if ([equalCopy hasRequestsIntentExecution])
    {
      requestsIntentExecution = self->_requestsIntentExecution;
      if (requestsIntentExecution != [equalCopy requestsIntentExecution])
      {
        goto LABEL_30;
      }
    }
  }

  steps = [(_INPBRunWorkflowIntentResponse *)self steps];
  steps2 = [equalCopy steps];
  if ((steps != 0) == (steps2 == 0))
  {
    goto LABEL_29;
  }

  steps3 = [(_INPBRunWorkflowIntentResponse *)self steps];
  if (steps3)
  {
    v12 = steps3;
    steps4 = [(_INPBRunWorkflowIntentResponse *)self steps];
    steps5 = [equalCopy steps];
    v15 = [steps4 isEqual:steps5];

    if (!v15)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  steps = [(_INPBRunWorkflowIntentResponse *)self underlyingIntent];
  steps2 = [equalCopy underlyingIntent];
  if ((steps != 0) == (steps2 == 0))
  {
    goto LABEL_29;
  }

  underlyingIntent = [(_INPBRunWorkflowIntentResponse *)self underlyingIntent];
  if (underlyingIntent)
  {
    v17 = underlyingIntent;
    underlyingIntent2 = [(_INPBRunWorkflowIntentResponse *)self underlyingIntent];
    underlyingIntent3 = [equalCopy underlyingIntent];
    v20 = [underlyingIntent2 isEqual:underlyingIntent3];

    if (!v20)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  steps = [(_INPBRunWorkflowIntentResponse *)self underlyingIntentResponse];
  steps2 = [equalCopy underlyingIntentResponse];
  if ((steps != 0) == (steps2 == 0))
  {
    goto LABEL_29;
  }

  underlyingIntentResponse = [(_INPBRunWorkflowIntentResponse *)self underlyingIntentResponse];
  if (underlyingIntentResponse)
  {
    v22 = underlyingIntentResponse;
    underlyingIntentResponse2 = [(_INPBRunWorkflowIntentResponse *)self underlyingIntentResponse];
    underlyingIntentResponse3 = [equalCopy underlyingIntentResponse];
    v25 = [underlyingIntentResponse2 isEqual:underlyingIntentResponse3];

    if (!v25)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  steps = [(_INPBRunWorkflowIntentResponse *)self utterance];
  steps2 = [equalCopy utterance];
  if ((steps != 0) == (steps2 == 0))
  {
LABEL_29:

    goto LABEL_30;
  }

  utterance = [(_INPBRunWorkflowIntentResponse *)self utterance];
  if (utterance)
  {
    v27 = utterance;
    utterance2 = [(_INPBRunWorkflowIntentResponse *)self utterance];
    utterance3 = [equalCopy utterance];
    v30 = [utterance2 isEqual:utterance3];

    if (!v30)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  hasWaitingForResume = [(_INPBRunWorkflowIntentResponse *)self hasWaitingForResume];
  if (hasWaitingForResume == [equalCopy hasWaitingForResume])
  {
    if (!-[_INPBRunWorkflowIntentResponse hasWaitingForResume](self, "hasWaitingForResume") || ![equalCopy hasWaitingForResume] || (waitingForResume = self->_waitingForResume, waitingForResume == objc_msgSend(equalCopy, "waitingForResume")))
    {
      v31 = 1;
      goto LABEL_31;
    }
  }

LABEL_30:
  v31 = 0;
LABEL_31:

  return v31;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBRunWorkflowIntentResponse allocWithZone:](_INPBRunWorkflowIntentResponse init];
  if ([(_INPBRunWorkflowIntentResponse *)self hasContinueRunning])
  {
    [(_INPBRunWorkflowIntentResponse *)v5 setContinueRunning:[(_INPBRunWorkflowIntentResponse *)self continueRunning]];
  }

  if ([(_INPBRunWorkflowIntentResponse *)self hasRequestsIntentExecution])
  {
    [(_INPBRunWorkflowIntentResponse *)v5 setRequestsIntentExecution:[(_INPBRunWorkflowIntentResponse *)self requestsIntentExecution]];
  }

  v6 = [(NSArray *)self->_steps copyWithZone:zone];
  [(_INPBRunWorkflowIntentResponse *)v5 setSteps:v6];

  v7 = [(_INPBArchivedObject *)self->_underlyingIntent copyWithZone:zone];
  [(_INPBRunWorkflowIntentResponse *)v5 setUnderlyingIntent:v7];

  v8 = [(_INPBArchivedObject *)self->_underlyingIntentResponse copyWithZone:zone];
  [(_INPBRunWorkflowIntentResponse *)v5 setUnderlyingIntentResponse:v8];

  v9 = [(NSString *)self->_utterance copyWithZone:zone];
  [(_INPBRunWorkflowIntentResponse *)v5 setUtterance:v9];

  if ([(_INPBRunWorkflowIntentResponse *)self hasWaitingForResume])
  {
    [(_INPBRunWorkflowIntentResponse *)v5 setWaitingForResume:[(_INPBRunWorkflowIntentResponse *)self waitingForResume]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBRunWorkflowIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBRunWorkflowIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBRunWorkflowIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v26 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if ([(_INPBRunWorkflowIntentResponse *)self hasContinueRunning])
  {
    continueRunning = self->_continueRunning;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBRunWorkflowIntentResponse *)self hasRequestsIntentExecution])
  {
    requestsIntentExecution = self->_requestsIntentExecution;
    PBDataWriterWriteBOOLField();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = self->_steps;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  underlyingIntent = [(_INPBRunWorkflowIntentResponse *)self underlyingIntent];

  if (underlyingIntent)
  {
    underlyingIntent2 = [(_INPBRunWorkflowIntentResponse *)self underlyingIntent];
    PBDataWriterWriteSubmessage();
  }

  underlyingIntentResponse = [(_INPBRunWorkflowIntentResponse *)self underlyingIntentResponse];

  if (underlyingIntentResponse)
  {
    underlyingIntentResponse2 = [(_INPBRunWorkflowIntentResponse *)self underlyingIntentResponse];
    PBDataWriterWriteSubmessage();
  }

  utterance = [(_INPBRunWorkflowIntentResponse *)self utterance];

  if (utterance)
  {
    utterance = self->_utterance;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBRunWorkflowIntentResponse *)self hasWaitingForResume])
  {
    waitingForResume = self->_waitingForResume;
    PBDataWriterWriteBOOLField();
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)setHasWaitingForResume:(BOOL)resume
{
  if (resume)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setUtterance:(id)utterance
{
  v4 = [utterance copy];
  utterance = self->_utterance;
  self->_utterance = v4;

  MEMORY[0x1EEE66BB8](v4, utterance);
}

- (void)addStep:(id)step
{
  stepCopy = step;
  steps = self->_steps;
  v8 = stepCopy;
  if (!steps)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_steps;
    self->_steps = array;

    stepCopy = v8;
    steps = self->_steps;
  }

  [(NSArray *)steps addObject:stepCopy];
}

- (void)setSteps:(id)steps
{
  v4 = [steps mutableCopy];
  steps = self->_steps;
  self->_steps = v4;

  MEMORY[0x1EEE66BB8](v4, steps);
}

- (void)setHasRequestsIntentExecution:(BOOL)execution
{
  if (execution)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

@end