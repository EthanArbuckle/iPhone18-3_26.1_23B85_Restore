@interface INRideCompletionStatus
+ (INRideCompletionStatus)canceledByService;
+ (INRideCompletionStatus)canceledByUser;
+ (INRideCompletionStatus)canceledMissedPickup;
+ (INRideCompletionStatus)completed;
+ (INRideCompletionStatus)completedWithOutstandingFeedbackType:(INRideFeedbackTypeOptions)feedbackType;
+ (INRideCompletionStatus)completedWithOutstandingPaymentAmount:(INCurrencyAmount *)outstandingPaymentAmount;
+ (INRideCompletionStatus)completedWithSettledPaymentAmount:(INCurrencyAmount *)settledPaymentAmount;
- (INRideCompletionStatus)initWithCoder:(id)a3;
- (id)_dictionaryRepresentation;
- (id)_initCompleted:(BOOL)a3 canceledByService:(BOOL)a4 missedPickup:(BOOL)a5 amount:(id)a6 feedbackType:(unint64_t)a7 outstanding:(BOOL)a8;
- (id)_initWithValue:(id)a3;
- (id)_intents_cacheableObjects;
- (id)_newValue;
- (id)descriptionAtIndent:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INRideCompletionStatus

- (id)_dictionaryRepresentation
{
  v19[8] = *MEMORY[0x1E69E9840];
  v18[0] = @"completionUserActivity";
  completionUserActivity = self->_completionUserActivity;
  v4 = completionUserActivity;
  if (!completionUserActivity)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v19[0] = v4;
  v18[1] = @"completed";
  v17 = [MEMORY[0x1E696AD98] numberWithBool:{self->_completed, v4}];
  v19[1] = v17;
  v18[2] = @"isCanceled";
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[INRideCompletionStatus isCompleted](self, "isCompleted") ^ 1}];
  v19[2] = v5;
  v18[3] = @"missedPickup";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_missedPickup];
  v19[3] = v6;
  v18[4] = @"paymentAmount";
  paymentAmount = self->_paymentAmount;
  v8 = paymentAmount;
  if (!paymentAmount)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v19[4] = v8;
  v18[5] = @"defaultTippingOptions";
  defaultTippingOptions = self->_defaultTippingOptions;
  v10 = defaultTippingOptions;
  if (!defaultTippingOptions)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v19[5] = v10;
  v18[6] = @"feedbackType";
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_feedbackType];
  v19[6] = v11;
  v18[7] = @"outstanding";
  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_outstanding];
  v19[7] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:8];

  if (defaultTippingOptions)
  {
    if (paymentAmount)
    {
      goto LABEL_9;
    }
  }

  else
  {

    if (paymentAmount)
    {
      goto LABEL_9;
    }
  }

LABEL_9:
  if (!completionUserActivity)
  {
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INRideCompletionStatus;
  v6 = [(INRideCompletionStatus *)&v11 description];
  v7 = [(INRideCompletionStatus *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_newValue
{
  v3 = objc_alloc_init(_INPBRideCompletionStatus);
  [(_INPBRideCompletionStatus *)v3 setCompleted:[(INRideCompletionStatus *)self isCompleted]];
  [(_INPBRideCompletionStatus *)v3 setCanceledByService:[(INRideCompletionStatus *)self isCanceledByService]];
  [(_INPBRideCompletionStatus *)v3 setMissedPickup:[(INRideCompletionStatus *)self isMissedPickup]];
  v4 = [(INRideCompletionStatus *)self paymentAmount];
  v5 = INIntentSlotValueTransformToCurrencyAmountValue(v4);
  [(_INPBRideCompletionStatus *)v3 setPaymentAmount:v5];

  [(_INPBRideCompletionStatus *)v3 setOutstanding:[(INRideCompletionStatus *)self isOutstanding]];
  completionUserActivity = self->_completionUserActivity;
  if (completionUserActivity)
  {
    v7 = INUserActivitySerializeToBackingStore(completionUserActivity);
    [(_INPBRideCompletionStatus *)v3 setCompletionUserActivity:v7];
  }

  v8 = [(INRideCompletionStatus *)self feedbackType];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __35__INRideCompletionStatus__newValue__block_invoke;
  v16[3] = &unk_1E7288628;
  v9 = v3;
  v17 = v9;
  INRideFeedbackTypeOptionsEnumerateBackingTypes(v8, v16);
  v10 = MEMORY[0x1E695DF70];
  v11 = [(INRideCompletionStatus *)self defaultTippingOptions];
  v12 = [v11 allObjects];
  v13 = INIntentSlotValueTransformToCurrencyAmountValues(v12);
  v14 = [v10 arrayWithArray:v13];
  [(_INPBRideCompletionStatus *)v9 setDefaultTippingOptions:v14];

  return v9;
}

- (id)_initWithValue:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = INRideCompletionStatus;
  v5 = [(INRideCompletionStatus *)&v24 init];
  if (v5)
  {
    v5->_completed = [v4 completed];
    v5->_canceledByService = [v4 canceledByService];
    v5->_missedPickup = [v4 missedPickup];
    v6 = [v4 paymentAmount];
    v7 = INIntentSlotValueTransformFromCurrencyAmountValue(v6);
    paymentAmount = v5->_paymentAmount;
    v5->_paymentAmount = v7;

    v5->_outstanding = [v4 outstanding];
    v9 = [v4 completionUserActivity];
    v10 = INUserActivityDeserializeFromBackingStore(v9);
    completionUserActivity = v5->_completionUserActivity;
    v5->_completionUserActivity = v10;

    v5->_feedbackType = 0;
    v12 = [v4 feedbackTypesCount];
    if (v12)
    {
      v13 = v12;
      for (i = 0; i != v13; ++i)
      {
        v15 = [v4 feedbackTypeAtIndex:i];
        feedbackType = v5->_feedbackType;
        v17 = feedbackType | 2;
        if (v15 == 1)
        {
          feedbackType |= 1uLL;
        }

        if (v15 == 2)
        {
          feedbackType = v17;
        }

        v5->_feedbackType = feedbackType;
      }
    }

    v18 = MEMORY[0x1E695DFD8];
    v19 = [v4 defaultTippingOptions];
    v20 = INIntentSlotValueTransformFromCurrencyAmountValues(v19);
    v21 = [v18 setWithArray:v20];
    defaultTippingOptions = v5->_defaultTippingOptions;
    v5->_defaultTippingOptions = v21;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  completed = self->_completed;
  v5 = a3;
  [v5 encodeBool:completed forKey:@"isCompleted"];
  [v5 encodeBool:self->_canceledByService forKey:@"isCanceledByService"];
  [v5 encodeBool:self->_missedPickup forKey:@"isMissedPickup"];
  [v5 encodeObject:self->_paymentAmount forKey:@"paymentAmount"];
  [v5 encodeInteger:self->_feedbackType forKey:@"feedbackType"];
  [v5 encodeObject:self->_defaultTippingOptions forKey:@"defaultTippingOptions"];
  [v5 encodeBool:self->_outstanding forKey:@"isOutstanding"];
  v6 = INUserActivitySerializeToData(self->_completionUserActivity);
  [v5 encodeObject:v6 forKey:@"completionUserActivity"];
}

- (INRideCompletionStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = INRideCompletionStatus;
  v5 = [(INRideCompletionStatus *)&v14 init];
  if (v5)
  {
    v5->_completed = [v4 decodeBoolForKey:@"isCompleted"];
    v5->_canceledByService = [v4 decodeBoolForKey:@"isCanceledByService"];
    v5->_missedPickup = [v4 decodeBoolForKey:@"isMissedPickup"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paymentAmount"];
    paymentAmount = v5->_paymentAmount;
    v5->_paymentAmount = v6;

    v5->_feedbackType = [v4 decodeIntegerForKey:@"feedbackType"];
    v8 = [v4 decodeObjectForKey:@"defaultTippingOptions"];
    defaultTippingOptions = v5->_defaultTippingOptions;
    v5->_defaultTippingOptions = v8;

    v5->_outstanding = [v4 decodeBoolForKey:@"isOutstanding"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"completionUserActivity"];
    v11 = INUserActivityDeserializeFromData(v10);
    completionUserActivity = v5->_completionUserActivity;
    v5->_completionUserActivity = v11;
  }

  return v5;
}

- (id)_initCompleted:(BOOL)a3 canceledByService:(BOOL)a4 missedPickup:(BOOL)a5 amount:(id)a6 feedbackType:(unint64_t)a7 outstanding:(BOOL)a8
{
  v14 = a6;
  v20.receiver = self;
  v20.super_class = INRideCompletionStatus;
  v15 = [(INRideCompletionStatus *)&v20 init];
  v16 = v15;
  if (v15)
  {
    v15->_completed = a3;
    v15->_canceledByService = a4;
    v15->_missedPickup = a5;
    v17 = [v14 copy];
    paymentAmount = v16->_paymentAmount;
    v16->_paymentAmount = v17;

    v16->_feedbackType = a7;
    v16->_outstanding = a8;
  }

  return v16;
}

+ (INRideCompletionStatus)canceledMissedPickup
{
  v2 = [[a1 alloc] _initCompleted:0 canceledByService:1 missedPickup:1 amount:0 feedbackType:0 outstanding:0];

  return v2;
}

+ (INRideCompletionStatus)canceledByService
{
  v2 = [[a1 alloc] _initCompleted:0 canceledByService:1 missedPickup:0 amount:0 feedbackType:0 outstanding:0];

  return v2;
}

+ (INRideCompletionStatus)canceledByUser
{
  v2 = [[a1 alloc] _initCompleted:0 canceledByService:0 missedPickup:0 amount:0 feedbackType:0 outstanding:0];

  return v2;
}

+ (INRideCompletionStatus)completedWithOutstandingFeedbackType:(INRideFeedbackTypeOptions)feedbackType
{
  v3 = [[a1 alloc] _initCompleted:1 canceledByService:0 missedPickup:0 amount:0 feedbackType:feedbackType outstanding:1];

  return v3;
}

+ (INRideCompletionStatus)completedWithOutstandingPaymentAmount:(INCurrencyAmount *)outstandingPaymentAmount
{
  v4 = outstandingPaymentAmount;
  v5 = [[a1 alloc] _initCompleted:1 canceledByService:0 missedPickup:0 amount:v4 feedbackType:0 outstanding:1];

  return v5;
}

+ (INRideCompletionStatus)completedWithSettledPaymentAmount:(INCurrencyAmount *)settledPaymentAmount
{
  v4 = settledPaymentAmount;
  v5 = [[a1 alloc] _initCompleted:1 canceledByService:0 missedPickup:0 amount:v4 feedbackType:0 outstanding:0];

  return v5;
}

+ (INRideCompletionStatus)completed
{
  v2 = [[a1 alloc] _initCompleted:1 canceledByService:0 missedPickup:0 amount:0 feedbackType:0 outstanding:0];

  return v2;
}

- (id)_intents_cacheableObjects
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = [(INRideCompletionStatus *)self completionUserActivity];

  if (v4)
  {
    v5 = [(INRideCompletionStatus *)self completionUserActivity];
    [v3 addObject:v5];
  }

  if ([v3 count])
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

@end