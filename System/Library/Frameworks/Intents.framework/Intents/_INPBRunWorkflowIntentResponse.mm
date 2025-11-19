@interface _INPBRunWorkflowIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBRunWorkflowIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addStep:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setHasRequestsIntentExecution:(BOOL)a3;
- (void)setHasWaitingForResume:(BOOL)a3;
- (void)setSteps:(id)a3;
- (void)setUtterance:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBRunWorkflowIntentResponse

- (id)dictionaryRepresentation
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBRunWorkflowIntentResponse *)self hasContinueRunning])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBRunWorkflowIntentResponse continueRunning](self, "continueRunning")}];
    [v3 setObject:v4 forKeyedSubscript:@"continueRunning"];
  }

  if ([(_INPBRunWorkflowIntentResponse *)self hasRequestsIntentExecution])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBRunWorkflowIntentResponse requestsIntentExecution](self, "requestsIntentExecution")}];
    [v3 setObject:v5 forKeyedSubscript:@"requestsIntentExecution"];
  }

  if ([(NSArray *)self->_steps count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
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

          v12 = [*(*(&v22 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"step"];
  }

  v13 = [(_INPBRunWorkflowIntentResponse *)self underlyingIntent];
  v14 = [v13 dictionaryRepresentation];
  [v3 setObject:v14 forKeyedSubscript:@"underlyingIntent"];

  v15 = [(_INPBRunWorkflowIntentResponse *)self underlyingIntentResponse];
  v16 = [v15 dictionaryRepresentation];
  [v3 setObject:v16 forKeyedSubscript:@"underlyingIntentResponse"];

  if (self->_utterance)
  {
    v17 = [(_INPBRunWorkflowIntentResponse *)self utterance];
    v18 = [v17 copy];
    [v3 setObject:v18 forKeyedSubscript:@"utterance"];
  }

  if ([(_INPBRunWorkflowIntentResponse *)self hasWaitingForResume])
  {
    v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBRunWorkflowIntentResponse waitingForResume](self, "waitingForResume")}];
    [v3 setObject:v19 forKeyedSubscript:@"waitingForResume"];
  }

  v20 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  v5 = [(_INPBRunWorkflowIntentResponse *)self hasContinueRunning];
  if (v5 != [v4 hasContinueRunning])
  {
    goto LABEL_30;
  }

  if ([(_INPBRunWorkflowIntentResponse *)self hasContinueRunning])
  {
    if ([v4 hasContinueRunning])
    {
      continueRunning = self->_continueRunning;
      if (continueRunning != [v4 continueRunning])
      {
        goto LABEL_30;
      }
    }
  }

  v7 = [(_INPBRunWorkflowIntentResponse *)self hasRequestsIntentExecution];
  if (v7 != [v4 hasRequestsIntentExecution])
  {
    goto LABEL_30;
  }

  if ([(_INPBRunWorkflowIntentResponse *)self hasRequestsIntentExecution])
  {
    if ([v4 hasRequestsIntentExecution])
    {
      requestsIntentExecution = self->_requestsIntentExecution;
      if (requestsIntentExecution != [v4 requestsIntentExecution])
      {
        goto LABEL_30;
      }
    }
  }

  v9 = [(_INPBRunWorkflowIntentResponse *)self steps];
  v10 = [v4 steps];
  if ((v9 != 0) == (v10 == 0))
  {
    goto LABEL_29;
  }

  v11 = [(_INPBRunWorkflowIntentResponse *)self steps];
  if (v11)
  {
    v12 = v11;
    v13 = [(_INPBRunWorkflowIntentResponse *)self steps];
    v14 = [v4 steps];
    v15 = [v13 isEqual:v14];

    if (!v15)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  v9 = [(_INPBRunWorkflowIntentResponse *)self underlyingIntent];
  v10 = [v4 underlyingIntent];
  if ((v9 != 0) == (v10 == 0))
  {
    goto LABEL_29;
  }

  v16 = [(_INPBRunWorkflowIntentResponse *)self underlyingIntent];
  if (v16)
  {
    v17 = v16;
    v18 = [(_INPBRunWorkflowIntentResponse *)self underlyingIntent];
    v19 = [v4 underlyingIntent];
    v20 = [v18 isEqual:v19];

    if (!v20)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  v9 = [(_INPBRunWorkflowIntentResponse *)self underlyingIntentResponse];
  v10 = [v4 underlyingIntentResponse];
  if ((v9 != 0) == (v10 == 0))
  {
    goto LABEL_29;
  }

  v21 = [(_INPBRunWorkflowIntentResponse *)self underlyingIntentResponse];
  if (v21)
  {
    v22 = v21;
    v23 = [(_INPBRunWorkflowIntentResponse *)self underlyingIntentResponse];
    v24 = [v4 underlyingIntentResponse];
    v25 = [v23 isEqual:v24];

    if (!v25)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  v9 = [(_INPBRunWorkflowIntentResponse *)self utterance];
  v10 = [v4 utterance];
  if ((v9 != 0) == (v10 == 0))
  {
LABEL_29:

    goto LABEL_30;
  }

  v26 = [(_INPBRunWorkflowIntentResponse *)self utterance];
  if (v26)
  {
    v27 = v26;
    v28 = [(_INPBRunWorkflowIntentResponse *)self utterance];
    v29 = [v4 utterance];
    v30 = [v28 isEqual:v29];

    if (!v30)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  v33 = [(_INPBRunWorkflowIntentResponse *)self hasWaitingForResume];
  if (v33 == [v4 hasWaitingForResume])
  {
    if (!-[_INPBRunWorkflowIntentResponse hasWaitingForResume](self, "hasWaitingForResume") || ![v4 hasWaitingForResume] || (waitingForResume = self->_waitingForResume, waitingForResume == objc_msgSend(v4, "waitingForResume")))
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

- (id)copyWithZone:(_NSZone *)a3
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

  v6 = [(NSArray *)self->_steps copyWithZone:a3];
  [(_INPBRunWorkflowIntentResponse *)v5 setSteps:v6];

  v7 = [(_INPBArchivedObject *)self->_underlyingIntent copyWithZone:a3];
  [(_INPBRunWorkflowIntentResponse *)v5 setUnderlyingIntent:v7];

  v8 = [(_INPBArchivedObject *)self->_underlyingIntentResponse copyWithZone:a3];
  [(_INPBRunWorkflowIntentResponse *)v5 setUnderlyingIntentResponse:v8];

  v9 = [(NSString *)self->_utterance copyWithZone:a3];
  [(_INPBRunWorkflowIntentResponse *)v5 setUtterance:v9];

  if ([(_INPBRunWorkflowIntentResponse *)self hasWaitingForResume])
  {
    [(_INPBRunWorkflowIntentResponse *)v5 setWaitingForResume:[(_INPBRunWorkflowIntentResponse *)self waitingForResume]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBRunWorkflowIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBRunWorkflowIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBRunWorkflowIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v13 = [(_INPBRunWorkflowIntentResponse *)self underlyingIntent];

  if (v13)
  {
    v14 = [(_INPBRunWorkflowIntentResponse *)self underlyingIntent];
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_INPBRunWorkflowIntentResponse *)self underlyingIntentResponse];

  if (v15)
  {
    v16 = [(_INPBRunWorkflowIntentResponse *)self underlyingIntentResponse];
    PBDataWriterWriteSubmessage();
  }

  v17 = [(_INPBRunWorkflowIntentResponse *)self utterance];

  if (v17)
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

- (void)setHasWaitingForResume:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setUtterance:(id)a3
{
  v4 = [a3 copy];
  utterance = self->_utterance;
  self->_utterance = v4;

  MEMORY[0x1EEE66BB8](v4, utterance);
}

- (void)addStep:(id)a3
{
  v4 = a3;
  steps = self->_steps;
  v8 = v4;
  if (!steps)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_steps;
    self->_steps = v6;

    v4 = v8;
    steps = self->_steps;
  }

  [(NSArray *)steps addObject:v4];
}

- (void)setSteps:(id)a3
{
  v4 = [a3 mutableCopy];
  steps = self->_steps;
  self->_steps = v4;

  MEMORY[0x1EEE66BB8](v4, steps);
}

- (void)setHasRequestsIntentExecution:(BOOL)a3
{
  if (a3)
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