@interface INRideCompletionStatus
+ (INRideCompletionStatus)canceledByService;
+ (INRideCompletionStatus)canceledByUser;
+ (INRideCompletionStatus)canceledMissedPickup;
+ (INRideCompletionStatus)completed;
+ (INRideCompletionStatus)completedWithOutstandingFeedbackType:(INRideFeedbackTypeOptions)feedbackType;
+ (INRideCompletionStatus)completedWithOutstandingPaymentAmount:(INCurrencyAmount *)outstandingPaymentAmount;
+ (INRideCompletionStatus)completedWithSettledPaymentAmount:(INCurrencyAmount *)settledPaymentAmount;
- (INRideCompletionStatus)initWithCoder:(id)coder;
- (id)_dictionaryRepresentation;
- (id)_initCompleted:(BOOL)completed canceledByService:(BOOL)service missedPickup:(BOOL)pickup amount:(id)amount feedbackType:(unint64_t)type outstanding:(BOOL)outstanding;
- (id)_initWithValue:(id)value;
- (id)_intents_cacheableObjects;
- (id)_newValue;
- (id)descriptionAtIndent:(unint64_t)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INRideCompletionStatus

- (id)_dictionaryRepresentation
{
  v19[8] = *MEMORY[0x1E69E9840];
  v18[0] = @"completionUserActivity";
  completionUserActivity = self->_completionUserActivity;
  null = completionUserActivity;
  if (!completionUserActivity)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v19[0] = null;
  v18[1] = @"completed";
  v17 = [MEMORY[0x1E696AD98] numberWithBool:{self->_completed, null}];
  v19[1] = v17;
  v18[2] = @"isCanceled";
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[INRideCompletionStatus isCompleted](self, "isCompleted") ^ 1}];
  v19[2] = v5;
  v18[3] = @"missedPickup";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_missedPickup];
  v19[3] = v6;
  v18[4] = @"paymentAmount";
  paymentAmount = self->_paymentAmount;
  null2 = paymentAmount;
  if (!paymentAmount)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v19[4] = null2;
  v18[5] = @"defaultTippingOptions";
  defaultTippingOptions = self->_defaultTippingOptions;
  null3 = defaultTippingOptions;
  if (!defaultTippingOptions)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v19[5] = null3;
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

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INRideCompletionStatus;
  v6 = [(INRideCompletionStatus *)&v11 description];
  _dictionaryRepresentation = [(INRideCompletionStatus *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_newValue
{
  v3 = objc_alloc_init(_INPBRideCompletionStatus);
  [(_INPBRideCompletionStatus *)v3 setCompleted:[(INRideCompletionStatus *)self isCompleted]];
  [(_INPBRideCompletionStatus *)v3 setCanceledByService:[(INRideCompletionStatus *)self isCanceledByService]];
  [(_INPBRideCompletionStatus *)v3 setMissedPickup:[(INRideCompletionStatus *)self isMissedPickup]];
  paymentAmount = [(INRideCompletionStatus *)self paymentAmount];
  v5 = INIntentSlotValueTransformToCurrencyAmountValue(paymentAmount);
  [(_INPBRideCompletionStatus *)v3 setPaymentAmount:v5];

  [(_INPBRideCompletionStatus *)v3 setOutstanding:[(INRideCompletionStatus *)self isOutstanding]];
  completionUserActivity = self->_completionUserActivity;
  if (completionUserActivity)
  {
    v7 = INUserActivitySerializeToBackingStore(completionUserActivity);
    [(_INPBRideCompletionStatus *)v3 setCompletionUserActivity:v7];
  }

  feedbackType = [(INRideCompletionStatus *)self feedbackType];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __35__INRideCompletionStatus__newValue__block_invoke;
  v16[3] = &unk_1E7288628;
  v9 = v3;
  v17 = v9;
  INRideFeedbackTypeOptionsEnumerateBackingTypes(feedbackType, v16);
  v10 = MEMORY[0x1E695DF70];
  defaultTippingOptions = [(INRideCompletionStatus *)self defaultTippingOptions];
  allObjects = [defaultTippingOptions allObjects];
  v13 = INIntentSlotValueTransformToCurrencyAmountValues(allObjects);
  v14 = [v10 arrayWithArray:v13];
  [(_INPBRideCompletionStatus *)v9 setDefaultTippingOptions:v14];

  return v9;
}

- (id)_initWithValue:(id)value
{
  valueCopy = value;
  v24.receiver = self;
  v24.super_class = INRideCompletionStatus;
  v5 = [(INRideCompletionStatus *)&v24 init];
  if (v5)
  {
    v5->_completed = [valueCopy completed];
    v5->_canceledByService = [valueCopy canceledByService];
    v5->_missedPickup = [valueCopy missedPickup];
    paymentAmount = [valueCopy paymentAmount];
    v7 = INIntentSlotValueTransformFromCurrencyAmountValue(paymentAmount);
    paymentAmount = v5->_paymentAmount;
    v5->_paymentAmount = v7;

    v5->_outstanding = [valueCopy outstanding];
    completionUserActivity = [valueCopy completionUserActivity];
    v10 = INUserActivityDeserializeFromBackingStore(completionUserActivity);
    completionUserActivity = v5->_completionUserActivity;
    v5->_completionUserActivity = v10;

    v5->_feedbackType = 0;
    feedbackTypesCount = [valueCopy feedbackTypesCount];
    if (feedbackTypesCount)
    {
      v13 = feedbackTypesCount;
      for (i = 0; i != v13; ++i)
      {
        v15 = [valueCopy feedbackTypeAtIndex:i];
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
    defaultTippingOptions = [valueCopy defaultTippingOptions];
    v20 = INIntentSlotValueTransformFromCurrencyAmountValues(defaultTippingOptions);
    v21 = [v18 setWithArray:v20];
    defaultTippingOptions = v5->_defaultTippingOptions;
    v5->_defaultTippingOptions = v21;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  completed = self->_completed;
  coderCopy = coder;
  [coderCopy encodeBool:completed forKey:@"isCompleted"];
  [coderCopy encodeBool:self->_canceledByService forKey:@"isCanceledByService"];
  [coderCopy encodeBool:self->_missedPickup forKey:@"isMissedPickup"];
  [coderCopy encodeObject:self->_paymentAmount forKey:@"paymentAmount"];
  [coderCopy encodeInteger:self->_feedbackType forKey:@"feedbackType"];
  [coderCopy encodeObject:self->_defaultTippingOptions forKey:@"defaultTippingOptions"];
  [coderCopy encodeBool:self->_outstanding forKey:@"isOutstanding"];
  v6 = INUserActivitySerializeToData(self->_completionUserActivity);
  [coderCopy encodeObject:v6 forKey:@"completionUserActivity"];
}

- (INRideCompletionStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = INRideCompletionStatus;
  v5 = [(INRideCompletionStatus *)&v14 init];
  if (v5)
  {
    v5->_completed = [coderCopy decodeBoolForKey:@"isCompleted"];
    v5->_canceledByService = [coderCopy decodeBoolForKey:@"isCanceledByService"];
    v5->_missedPickup = [coderCopy decodeBoolForKey:@"isMissedPickup"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentAmount"];
    paymentAmount = v5->_paymentAmount;
    v5->_paymentAmount = v6;

    v5->_feedbackType = [coderCopy decodeIntegerForKey:@"feedbackType"];
    v8 = [coderCopy decodeObjectForKey:@"defaultTippingOptions"];
    defaultTippingOptions = v5->_defaultTippingOptions;
    v5->_defaultTippingOptions = v8;

    v5->_outstanding = [coderCopy decodeBoolForKey:@"isOutstanding"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"completionUserActivity"];
    v11 = INUserActivityDeserializeFromData(v10);
    completionUserActivity = v5->_completionUserActivity;
    v5->_completionUserActivity = v11;
  }

  return v5;
}

- (id)_initCompleted:(BOOL)completed canceledByService:(BOOL)service missedPickup:(BOOL)pickup amount:(id)amount feedbackType:(unint64_t)type outstanding:(BOOL)outstanding
{
  amountCopy = amount;
  v20.receiver = self;
  v20.super_class = INRideCompletionStatus;
  v15 = [(INRideCompletionStatus *)&v20 init];
  v16 = v15;
  if (v15)
  {
    v15->_completed = completed;
    v15->_canceledByService = service;
    v15->_missedPickup = pickup;
    v17 = [amountCopy copy];
    paymentAmount = v16->_paymentAmount;
    v16->_paymentAmount = v17;

    v16->_feedbackType = type;
    v16->_outstanding = outstanding;
  }

  return v16;
}

+ (INRideCompletionStatus)canceledMissedPickup
{
  v2 = [[self alloc] _initCompleted:0 canceledByService:1 missedPickup:1 amount:0 feedbackType:0 outstanding:0];

  return v2;
}

+ (INRideCompletionStatus)canceledByService
{
  v2 = [[self alloc] _initCompleted:0 canceledByService:1 missedPickup:0 amount:0 feedbackType:0 outstanding:0];

  return v2;
}

+ (INRideCompletionStatus)canceledByUser
{
  v2 = [[self alloc] _initCompleted:0 canceledByService:0 missedPickup:0 amount:0 feedbackType:0 outstanding:0];

  return v2;
}

+ (INRideCompletionStatus)completedWithOutstandingFeedbackType:(INRideFeedbackTypeOptions)feedbackType
{
  v3 = [[self alloc] _initCompleted:1 canceledByService:0 missedPickup:0 amount:0 feedbackType:feedbackType outstanding:1];

  return v3;
}

+ (INRideCompletionStatus)completedWithOutstandingPaymentAmount:(INCurrencyAmount *)outstandingPaymentAmount
{
  v4 = outstandingPaymentAmount;
  v5 = [[self alloc] _initCompleted:1 canceledByService:0 missedPickup:0 amount:v4 feedbackType:0 outstanding:1];

  return v5;
}

+ (INRideCompletionStatus)completedWithSettledPaymentAmount:(INCurrencyAmount *)settledPaymentAmount
{
  v4 = settledPaymentAmount;
  v5 = [[self alloc] _initCompleted:1 canceledByService:0 missedPickup:0 amount:v4 feedbackType:0 outstanding:0];

  return v5;
}

+ (INRideCompletionStatus)completed
{
  v2 = [[self alloc] _initCompleted:1 canceledByService:0 missedPickup:0 amount:0 feedbackType:0 outstanding:0];

  return v2;
}

- (id)_intents_cacheableObjects
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  completionUserActivity = [(INRideCompletionStatus *)self completionUserActivity];

  if (completionUserActivity)
  {
    completionUserActivity2 = [(INRideCompletionStatus *)self completionUserActivity];
    [v3 addObject:completionUserActivity2];
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