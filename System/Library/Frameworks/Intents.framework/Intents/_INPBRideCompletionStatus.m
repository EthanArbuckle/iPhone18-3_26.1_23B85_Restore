@interface _INPBRideCompletionStatus
- (BOOL)isEqual:(id)a3;
- (_INPBRideCompletionStatus)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsFeedbackTypes:(id)a3;
- (unint64_t)hash;
- (void)addDefaultTippingOptions:(id)a3;
- (void)addFeedbackType:(int)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setDefaultTippingOptions:(id)a3;
- (void)setHasCanceledByService:(BOOL)a3;
- (void)setHasCompleted:(BOOL)a3;
- (void)setHasMissedPickup:(BOOL)a3;
- (void)setHasOutstanding:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBRideCompletionStatus

- (id)dictionaryRepresentation
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBRideCompletionStatus *)self hasCanceled])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBRideCompletionStatus canceled](self, "canceled")}];
    [v3 setObject:v4 forKeyedSubscript:@"canceled"];
  }

  if ([(_INPBRideCompletionStatus *)self hasCanceledByService])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBRideCompletionStatus canceledByService](self, "canceledByService")}];
    [v3 setObject:v5 forKeyedSubscript:@"canceledByService"];
  }

  if ([(_INPBRideCompletionStatus *)self hasCompleted])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBRideCompletionStatus completed](self, "completed")}];
    [v3 setObject:v6 forKeyedSubscript:@"completed"];
  }

  v7 = [(_INPBRideCompletionStatus *)self completionUserActivity];
  v8 = [v7 dictionaryRepresentation];
  [v3 setObject:v8 forKeyedSubscript:@"completionUserActivity"];

  if ([(NSArray *)self->_defaultTippingOptions count])
  {
    v9 = [MEMORY[0x1E695DF70] array];
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

          v15 = [*(*(&v26 + 1) + 8 * i) dictionaryRepresentation];
          [v9 addObject:v15];
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v12);
    }

    [v3 setObject:v9 forKeyedSubscript:@"defaultTippingOptions"];
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

    [v3 setObject:v16 forKeyedSubscript:@"feedbackType"];
  }

  if ([(_INPBRideCompletionStatus *)self hasMissedPickup])
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBRideCompletionStatus missedPickup](self, "missedPickup")}];
    [v3 setObject:v20 forKeyedSubscript:@"missedPickup"];
  }

  if ([(_INPBRideCompletionStatus *)self hasOutstanding])
  {
    v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBRideCompletionStatus outstanding](self, "outstanding")}];
    [v3 setObject:v21 forKeyedSubscript:@"outstanding"];
  }

  v22 = [(_INPBRideCompletionStatus *)self paymentAmount];
  v23 = [v22 dictionaryRepresentation];
  [v3 setObject:v23 forKeyedSubscript:@"paymentAmount"];

  v24 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_38;
  }

  v5 = [(_INPBRideCompletionStatus *)self hasCanceled];
  if (v5 != [v4 hasCanceled])
  {
    goto LABEL_38;
  }

  if ([(_INPBRideCompletionStatus *)self hasCanceled])
  {
    if ([v4 hasCanceled])
    {
      canceled = self->_canceled;
      if (canceled != [v4 canceled])
      {
        goto LABEL_38;
      }
    }
  }

  v7 = [(_INPBRideCompletionStatus *)self hasCanceledByService];
  if (v7 != [v4 hasCanceledByService])
  {
    goto LABEL_38;
  }

  if ([(_INPBRideCompletionStatus *)self hasCanceledByService])
  {
    if ([v4 hasCanceledByService])
    {
      canceledByService = self->_canceledByService;
      if (canceledByService != [v4 canceledByService])
      {
        goto LABEL_38;
      }
    }
  }

  v9 = [(_INPBRideCompletionStatus *)self hasCompleted];
  if (v9 != [v4 hasCompleted])
  {
    goto LABEL_38;
  }

  if ([(_INPBRideCompletionStatus *)self hasCompleted])
  {
    if ([v4 hasCompleted])
    {
      completed = self->_completed;
      if (completed != [v4 completed])
      {
        goto LABEL_38;
      }
    }
  }

  v11 = [(_INPBRideCompletionStatus *)self completionUserActivity];
  v12 = [v4 completionUserActivity];
  if ((v11 != 0) == (v12 == 0))
  {
    goto LABEL_37;
  }

  v13 = [(_INPBRideCompletionStatus *)self completionUserActivity];
  if (v13)
  {
    v14 = v13;
    v15 = [(_INPBRideCompletionStatus *)self completionUserActivity];
    v16 = [v4 completionUserActivity];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v11 = [(_INPBRideCompletionStatus *)self defaultTippingOptions];
  v12 = [v4 defaultTippingOptions];
  if ((v11 != 0) == (v12 == 0))
  {
    goto LABEL_37;
  }

  v18 = [(_INPBRideCompletionStatus *)self defaultTippingOptions];
  if (v18)
  {
    v19 = v18;
    v20 = [(_INPBRideCompletionStatus *)self defaultTippingOptions];
    v21 = [v4 defaultTippingOptions];
    v22 = [v20 isEqual:v21];

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

  v23 = [(_INPBRideCompletionStatus *)self hasMissedPickup];
  if (v23 != [v4 hasMissedPickup])
  {
    goto LABEL_38;
  }

  if ([(_INPBRideCompletionStatus *)self hasMissedPickup])
  {
    if ([v4 hasMissedPickup])
    {
      missedPickup = self->_missedPickup;
      if (missedPickup != [v4 missedPickup])
      {
        goto LABEL_38;
      }
    }
  }

  v25 = [(_INPBRideCompletionStatus *)self hasOutstanding];
  if (v25 != [v4 hasOutstanding])
  {
    goto LABEL_38;
  }

  if ([(_INPBRideCompletionStatus *)self hasOutstanding])
  {
    if ([v4 hasOutstanding])
    {
      outstanding = self->_outstanding;
      if (outstanding != [v4 outstanding])
      {
        goto LABEL_38;
      }
    }
  }

  v11 = [(_INPBRideCompletionStatus *)self paymentAmount];
  v12 = [v4 paymentAmount];
  if ((v11 != 0) != (v12 == 0))
  {
    v27 = [(_INPBRideCompletionStatus *)self paymentAmount];
    if (!v27)
    {

LABEL_41:
      v32 = 1;
      goto LABEL_39;
    }

    v28 = v27;
    v29 = [(_INPBRideCompletionStatus *)self paymentAmount];
    v30 = [v4 paymentAmount];
    v31 = [v29 isEqual:v30];

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

- (id)copyWithZone:(_NSZone *)a3
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

  v6 = [(_INPBUserActivity *)self->_completionUserActivity copyWithZone:a3];
  [(_INPBRideCompletionStatus *)v5 setCompletionUserActivity:v6];

  v7 = [(NSArray *)self->_defaultTippingOptions copyWithZone:a3];
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

  v8 = [(_INPBCurrencyAmountValue *)self->_paymentAmount copyWithZone:a3];
  [(_INPBRideCompletionStatus *)v5 setPaymentAmount:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBRideCompletionStatus *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBRideCompletionStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBRideCompletionStatus *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)dealloc
{
  [(_INPBRideCompletionStatus *)self clearFeedbackTypes];
  v3.receiver = self;
  v3.super_class = _INPBRideCompletionStatus;
  [(_INPBRideCompletionStatus *)&v3 dealloc];
}

- (void)writeTo:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v8 = [(_INPBRideCompletionStatus *)self completionUserActivity];

  if (v8)
  {
    v9 = [(_INPBRideCompletionStatus *)self completionUserActivity];
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

  v20 = [(_INPBRideCompletionStatus *)self paymentAmount];

  if (v20)
  {
    v21 = [(_INPBRideCompletionStatus *)self paymentAmount];
    PBDataWriterWriteSubmessage();
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)setHasOutstanding:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasMissedPickup:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsFeedbackTypes:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"RATE"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"TIP"])
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

- (void)addFeedbackType:(int)a3
{
  if (a3 != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)addDefaultTippingOptions:(id)a3
{
  v4 = a3;
  defaultTippingOptions = self->_defaultTippingOptions;
  v8 = v4;
  if (!defaultTippingOptions)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_defaultTippingOptions;
    self->_defaultTippingOptions = v6;

    v4 = v8;
    defaultTippingOptions = self->_defaultTippingOptions;
  }

  [(NSArray *)defaultTippingOptions addObject:v4];
}

- (void)setDefaultTippingOptions:(id)a3
{
  v4 = [a3 mutableCopy];
  defaultTippingOptions = self->_defaultTippingOptions;
  self->_defaultTippingOptions = v4;

  MEMORY[0x1EEE66BB8](v4, defaultTippingOptions);
}

- (void)setHasCompleted:(BOOL)a3
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

- (void)setHasCanceledByService:(BOOL)a3
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