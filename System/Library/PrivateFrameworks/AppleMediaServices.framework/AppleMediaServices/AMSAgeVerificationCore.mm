@interface AMSAgeVerificationCore
+ (BOOL)_isTimestamp:(id)timestamp validAsOf:(id)of;
+ (id)_ageVerificationPresentationResultFromVerificationResult:(id)result;
+ (id)_momentOfExpiryFrom:(id)from;
+ (id)_resultForAccountVerificationExpirationTimestamp:(id)timestamp withBagControlledAgeVerificationRequired:(id)required bagWarningThresholdDays:(id)days at:(id)at;
+ (id)_timestampForWarningThresholdDays:(id)days addedTo:(id)to;
@end

@implementation AMSAgeVerificationCore

+ (id)_resultForAccountVerificationExpirationTimestamp:(id)timestamp withBagControlledAgeVerificationRequired:(id)required bagWarningThresholdDays:(id)days at:(id)at
{
  timestampCopy = timestamp;
  daysCopy = days;
  atCopy = at;
  requiredCopy = required;
  v14 = objc_alloc_init(AMSAgeVerificationRequiredResult);
  [(AMSAgeVerificationRequiredResult *)v14 setRequiredType:1];
  bOOLValue = [requiredCopy BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    goto LABEL_4;
  }

  if ([self _isAgeVerificationNeededForExpiration:timestampCopy at:atCopy])
  {
    [(AMSAgeVerificationRequiredResult *)v14 setRequiredType:2];
LABEL_4:
    v16 = v14;
    goto LABEL_8;
  }

  v17 = [objc_opt_class() _timestampForWarningThresholdDays:daysCopy addedTo:atCopy];
  if ([self _isAgeVerificationNeededForExpiration:timestampCopy at:v17])
  {
    [(AMSAgeVerificationRequiredResult *)v14 setRequiredType:3];
  }

  v18 = v14;

LABEL_8:

  return v14;
}

+ (id)_timestampForWarningThresholdDays:(id)days addedTo:(id)to
{
  toCopy = to;
  if (days)
  {
    integerValue = [days integerValue];
  }

  else
  {
    integerValue = 30;
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v7 setDay:integerValue];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v9 = [currentCalendar dateByAddingComponents:v7 toDate:toCopy options:0];

  return v9;
}

+ (BOOL)_isTimestamp:(id)timestamp validAsOf:(id)of
{
  ofCopy = of;
  v7 = [self _momentOfExpiryFrom:timestamp];
  if (v7)
  {
    v8 = [ofCopy compare:v7] == -1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_momentOfExpiryFrom:(id)from
{
  fromCopy = from;
  if (fromCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{(objc_msgSend(fromCopy, "longLongValue") / 1000)}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_ageVerificationPresentationResultFromVerificationResult:(id)result
{
  resultCopy = result;
  v4 = objc_alloc_init(AMSPromiseResult);
  v5 = objc_alloc_init(AMSAgeVerificationPresentationResult);
  v6 = AMSError(6, @"Age verification screen dismissed without successful age verification", 0, 0);
  v7 = AMSError(0, @"Invalid age verification result", 0, 0);
  requiredType = [resultCopy requiredType];

  if (requiredType == 1 || requiredType == 3)
  {
    [(AMSAgeVerificationPresentationResult *)v5 setSuccessType:1];
    [(AMSPromiseResult *)v4 setResult:v5];
  }

  else
  {
    if (requiredType == 2)
    {
      v9 = v6;
    }

    else
    {
      v9 = v7;
    }

    [(AMSPromiseResult *)v4 setError:v9];
  }

  return v4;
}

@end