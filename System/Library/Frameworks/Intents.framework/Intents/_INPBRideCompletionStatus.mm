@interface _INPBRideCompletionStatus
- (BOOL)isEqual:(id)equal;
- (_INPBRideCompletionStatus)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsFeedbackTypes:(id)types;
- (unint64_t)hash;
- (void)addDefaultTippingOptions:(id)options;
- (void)addFeedbackType:(int)type;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setDefaultTippingOptions:(id)options;
- (void)setHasCanceledByService:(BOOL)service;
- (void)setHasCompleted:(BOOL)completed;
- (void)setHasMissedPickup:(BOOL)pickup;
- (void)setHasOutstanding:(BOOL)outstanding;
- (void)writeTo:(id)to;
@end

@implementation _INPBRideCompletionStatus

- (id)dictionaryRepresentation
{
  v31 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBRideCompletionStatus *)self hasCanceled])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBRideCompletionStatus canceled](self, "canceled")}];
    [dictionary setObject:v4 forKeyedSubscript:@"canceled"];
  }

  if ([(_INPBRideCompletionStatus *)self hasCanceledByService])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBRideCompletionStatus canceledByService](self, "canceledByService")}];
    [dictionary setObject:v5 forKeyedSubscript:@"canceledByService"];
  }

  if ([(_INPBRideCompletionStatus *)self hasCompleted])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBRideCompletionStatus completed](self, "completed")}];
    [dictionary setObject:v6 forKeyedSubscript:@"completed"];
  }

  completionUserActivity = [(_INPBRideCompletionStatus *)self completionUserActivity];
  dictionaryRepresentation = [completionUserActivity dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"completionUserActivity"];

  if ([(NSArray *)self->_defaultTippingOptions count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = self->_defaultTippingOptions;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v27;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(v10);
          }

          dictionaryRepresentation2 = [*(*(&v26 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation2];
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v12);
    }

    [dictionary setObject:array forKeyedSubscript:@"defaultTippingOptions"];
  }

  if (self->_feedbackTypes.count)
  {
    v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[_INPBRideCompletionStatus feedbackTypesCount](self, "feedbackTypesCount")}];
    if ([(_INPBRideCompletionStatus *)self feedbackTypesCount])
    {
      v17 = 0;
      do
      {
        v18 = self->_feedbackTypes.list[v17];
        if (v18 == 1)
        {
          v19 = @"RATE";
        }

        else if (v18 == 2)
        {
          v19 = @"TIP";
        }

        else
        {
          v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_feedbackTypes.list[v17]];
        }

        [v16 addObject:v19];

        ++v17;
      }

      while (v17 < [(_INPBRideCompletionStatus *)self feedbackTypesCount]);
    }

    [dictionary setObject:v16 forKeyedSubscript:@"feedbackType"];
  }

  if ([(_INPBRideCompletionStatus *)self hasMissedPickup])
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBRideCompletionStatus missedPickup](self, "missedPickup")}];
    [dictionary setObject:v20 forKeyedSubscript:@"missedPickup"];
  }

  if ([(_INPBRideCompletionStatus *)self hasOutstanding])
  {
    v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBRideCompletionStatus outstanding](self, "outstanding")}];
    [dictionary setObject:v21 forKeyedSubscript:@"outstanding"];
  }

  paymentAmount = [(_INPBRideCompletionStatus *)self paymentAmount];
  dictionaryRepresentation3 = [paymentAmount dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"paymentAmount"];

  v24 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBRideCompletionStatus *)self hasCanceled])
  {
    v3 = 2654435761 * self->_canceled;
  }

  else
  {
    v3 = 0;
  }

  if ([(_INPBRideCompletionStatus *)self hasCanceledByService])
  {
    v4 = 2654435761 * self->_canceledByService;
  }

  else
  {
    v4 = 0;
  }

  if ([(_INPBRideCompletionStatus *)self hasCompleted])
  {
    v5 = 2654435761 * self->_completed;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(_INPBUserActivity *)self->_completionUserActivity hash];
  v7 = [(NSArray *)self->_defaultTippingOptions hash];
  v8 = PBRepeatedInt32Hash();
  if ([(_INPBRideCompletionStatus *)self hasMissedPickup])
  {
    v9 = 2654435761 * self->_missedPickup;
  }

  else
  {
    v9 = 0;
  }

  if ([(_INPBRideCompletionStatus *)self hasOutstanding])
  {
    v10 = 2654435761 * self->_outstanding;
  }

  else
  {
    v10 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ [(_INPBCurrencyAmountValue *)self->_paymentAmount hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_38;
  }

  hasCanceled = [(_INPBRideCompletionStatus *)self hasCanceled];
  if (hasCanceled != [equalCopy hasCanceled])
  {
    goto LABEL_38;
  }

  if ([(_INPBRideCompletionStatus *)self hasCanceled])
  {
    if ([equalCopy hasCanceled])
    {
      canceled = self->_canceled;
      if (canceled != [equalCopy canceled])
      {
        goto LABEL_38;
      }
    }
  }

  hasCanceledByService = [(_INPBRideCompletionStatus *)self hasCanceledByService];
  if (hasCanceledByService != [equalCopy hasCanceledByService])
  {
    goto LABEL_38;
  }

  if ([(_INPBRideCompletionStatus *)self hasCanceledByService])
  {
    if ([equalCopy hasCanceledByService])
    {
      canceledByService = self->_canceledByService;
      if (canceledByService != [equalCopy canceledByService])
      {
        goto LABEL_38;
      }
    }
  }

  hasCompleted = [(_INPBRideCompletionStatus *)self hasCompleted];
  if (hasCompleted != [equalCopy hasCompleted])
  {
    goto LABEL_38;
  }

  if ([(_INPBRideCompletionStatus *)self hasCompleted])
  {
    if ([equalCopy hasCompleted])
    {
      completed = self->_completed;
      if (completed != [equalCopy completed])
      {
        goto LABEL_38;
      }
    }
  }

  completionUserActivity = [(_INPBRideCompletionStatus *)self completionUserActivity];
  completionUserActivity2 = [equalCopy completionUserActivity];
  if ((completionUserActivity != 0) == (completionUserActivity2 == 0))
  {
    goto LABEL_37;
  }

  completionUserActivity3 = [(_INPBRideCompletionStatus *)self completionUserActivity];
  if (completionUserActivity3)
  {
    v14 = completionUserActivity3;
    completionUserActivity4 = [(_INPBRideCompletionStatus *)self completionUserActivity];
    completionUserActivity5 = [equalCopy completionUserActivity];
    v17 = [completionUserActivity4 isEqual:completionUserActivity5];

    if (!v17)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  completionUserActivity = [(_INPBRideCompletionStatus *)self defaultTippingOptions];
  completionUserActivity2 = [equalCopy defaultTippingOptions];
  if ((completionUserActivity != 0) == (completionUserActivity2 == 0))
  {
    goto LABEL_37;
  }

  defaultTippingOptions = [(_INPBRideCompletionStatus *)self defaultTippingOptions];
  if (defaultTippingOptions)
  {
    v19 = defaultTippingOptions;
    defaultTippingOptions2 = [(_INPBRideCompletionStatus *)self defaultTippingOptions];
    defaultTippingOptions3 = [equalCopy defaultTippingOptions];
    v22 = [defaultTippingOptions2 isEqual:defaultTippingOptions3];

    if (!v22)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_38;
  }

  hasMissedPickup = [(_INPBRideCompletionStatus *)self hasMissedPickup];
  if (hasMissedPickup != [equalCopy hasMissedPickup])
  {
    goto LABEL_38;
  }

  if ([(_INPBRideCompletionStatus *)self hasMissedPickup])
  {
    if ([equalCopy hasMissedPickup])
    {
      missedPickup = self->_missedPickup;
      if (missedPickup != [equalCopy missedPickup])
      {
        goto LABEL_38;
      }
    }
  }

  hasOutstanding = [(_INPBRideCompletionStatus *)self hasOutstanding];
  if (hasOutstanding != [equalCopy hasOutstanding])
  {
    goto LABEL_38;
  }

  if ([(_INPBRideCompletionStatus *)self hasOutstanding])
  {
    if ([equalCopy hasOutstanding])
    {
      outstanding = self->_outstanding;
      if (outstanding != [equalCopy outstanding])
      {
        goto LABEL_38;
      }
    }
  }

  completionUserActivity = [(_INPBRideCompletionStatus *)self paymentAmount];
  completionUserActivity2 = [equalCopy paymentAmount];
  if ((completionUserActivity != 0) != (completionUserActivity2 == 0))
  {
    paymentAmount = [(_INPBRideCompletionStatus *)self paymentAmount];
    if (!paymentAmount)
    {

LABEL_41:
      v32 = 1;
      goto LABEL_39;
    }

    v28 = paymentAmount;
    paymentAmount2 = [(_INPBRideCompletionStatus *)self paymentAmount];
    paymentAmount3 = [equalCopy paymentAmount];
    v31 = [paymentAmount2 isEqual:paymentAmount3];

    if (v31)
    {
      goto LABEL_41;
    }
  }

  else
  {
LABEL_37:
  }

LABEL_38:
  v32 = 0;
LABEL_39:

  return v32;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBRideCompletionStatus allocWithZone:](_INPBRideCompletionStatus init];
  if ([(_INPBRideCompletionStatus *)self hasCanceled])
  {
    [(_INPBRideCompletionStatus *)v5 setCanceled:[(_INPBRideCompletionStatus *)self canceled]];
  }

  if ([(_INPBRideCompletionStatus *)self hasCanceledByService])
  {
    [(_INPBRideCompletionStatus *)v5 setCanceledByService:[(_INPBRideCompletionStatus *)self canceledByService]];
  }

  if ([(_INPBRideCompletionStatus *)self hasCompleted])
  {
    [(_INPBRideCompletionStatus *)v5 setCompleted:[(_INPBRideCompletionStatus *)self completed]];
  }

  v6 = [(_INPBUserActivity *)self->_completionUserActivity copyWithZone:zone];
  [(_INPBRideCompletionStatus *)v5 setCompletionUserActivity:v6];

  v7 = [(NSArray *)self->_defaultTippingOptions copyWithZone:zone];
  [(_INPBRideCompletionStatus *)v5 setDefaultTippingOptions:v7];

  PBRepeatedInt32Copy();
  if ([(_INPBRideCompletionStatus *)self hasMissedPickup])
  {
    [(_INPBRideCompletionStatus *)v5 setMissedPickup:[(_INPBRideCompletionStatus *)self missedPickup]];
  }

  if ([(_INPBRideCompletionStatus *)self hasOutstanding])
  {
    [(_INPBRideCompletionStatus *)v5 setOutstanding:[(_INPBRideCompletionStatus *)self outstanding]];
  }

  v8 = [(_INPBCurrencyAmountValue *)self->_paymentAmount copyWithZone:zone];
  [(_INPBRideCompletionStatus *)v5 setPaymentAmount:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBRideCompletionStatus *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBRideCompletionStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBRideCompletionStatus *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)dealloc
{
  [(_INPBRideCompletionStatus *)self clearFeedbackTypes];
  v3.receiver = self;
  v3.super_class = _INPBRideCompletionStatus;
  [(_INPBRideCompletionStatus *)&v3 dealloc];
}

- (void)writeTo:(id)to
{
  v28 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if ([(_INPBRideCompletionStatus *)self hasCanceled])
  {
    canceled = self->_canceled;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBRideCompletionStatus *)self hasCanceledByService])
  {
    canceledByService = self->_canceledByService;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBRideCompletionStatus *)self hasCompleted])
  {
    completed = self->_completed;
    PBDataWriterWriteBOOLField();
  }

  completionUserActivity = [(_INPBRideCompletionStatus *)self completionUserActivity];

  if (completionUserActivity)
  {
    completionUserActivity2 = [(_INPBRideCompletionStatus *)self completionUserActivity];
    PBDataWriterWriteSubmessage();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = self->_defaultTippingOptions;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  if (self->_feedbackTypes.count)
  {
    v16 = 0;
    do
    {
      v17 = self->_feedbackTypes.list[v16];
      PBDataWriterWriteInt32Field();
      ++v16;
    }

    while (v16 < self->_feedbackTypes.count);
  }

  if ([(_INPBRideCompletionStatus *)self hasMissedPickup])
  {
    missedPickup = self->_missedPickup;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBRideCompletionStatus *)self hasOutstanding])
  {
    outstanding = self->_outstanding;
    PBDataWriterWriteBOOLField();
  }

  paymentAmount = [(_INPBRideCompletionStatus *)self paymentAmount];

  if (paymentAmount)
  {
    paymentAmount2 = [(_INPBRideCompletionStatus *)self paymentAmount];
    PBDataWriterWriteSubmessage();
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)setHasOutstanding:(BOOL)outstanding
{
  if (outstanding)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasMissedPickup:(BOOL)pickup
{
  if (pickup)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsFeedbackTypes:(id)types
{
  typesCopy = types;
  v4 = 1;
  if (([typesCopy isEqualToString:@"RATE"] & 1) == 0)
  {
    if ([typesCopy isEqualToString:@"TIP"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)addFeedbackType:(int)type
{
  if (type != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)addDefaultTippingOptions:(id)options
{
  optionsCopy = options;
  defaultTippingOptions = self->_defaultTippingOptions;
  v8 = optionsCopy;
  if (!defaultTippingOptions)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_defaultTippingOptions;
    self->_defaultTippingOptions = array;

    optionsCopy = v8;
    defaultTippingOptions = self->_defaultTippingOptions;
  }

  [(NSArray *)defaultTippingOptions addObject:optionsCopy];
}

- (void)setDefaultTippingOptions:(id)options
{
  v4 = [options mutableCopy];
  defaultTippingOptions = self->_defaultTippingOptions;
  self->_defaultTippingOptions = v4;

  MEMORY[0x1EEE66BB8](v4, defaultTippingOptions);
}

- (void)setHasCompleted:(BOOL)completed
{
  if (completed)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasCanceledByService:(BOOL)service
{
  if (service)
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