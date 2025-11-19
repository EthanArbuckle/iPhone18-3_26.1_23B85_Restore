@interface AMSAgeVerificationCore
+ (BOOL)_isTimestamp:(id)a3 validAsOf:(id)a4;
+ (id)_ageVerificationPresentationResultFromVerificationResult:(id)a3;
+ (id)_momentOfExpiryFrom:(id)a3;
+ (id)_resultForAccountVerificationExpirationTimestamp:(id)a3 withBagControlledAgeVerificationRequired:(id)a4 bagWarningThresholdDays:(id)a5 at:(id)a6;
+ (id)_timestampForWarningThresholdDays:(id)a3 addedTo:(id)a4;
@end

@implementation AMSAgeVerificationCore

+ (id)_resultForAccountVerificationExpirationTimestamp:(id)a3 withBagControlledAgeVerificationRequired:(id)a4 bagWarningThresholdDays:(id)a5 at:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = a4;
  v14 = objc_alloc_init(AMSAgeVerificationRequiredResult);
  [(AMSAgeVerificationRequiredResult *)v14 setRequiredType:1];
  v15 = [v13 BOOLValue];

  if ((v15 & 1) == 0)
  {
    goto LABEL_4;
  }

  if ([a1 _isAgeVerificationNeededForExpiration:v10 at:v12])
  {
    [(AMSAgeVerificationRequiredResult *)v14 setRequiredType:2];
LABEL_4:
    v16 = v14;
    goto LABEL_8;
  }

  v17 = [objc_opt_class() _timestampForWarningThresholdDays:v11 addedTo:v12];
  if ([a1 _isAgeVerificationNeededForExpiration:v10 at:v17])
  {
    [(AMSAgeVerificationRequiredResult *)v14 setRequiredType:3];
  }

  v18 = v14;

LABEL_8:

  return v14;
}

+ (id)_timestampForWarningThresholdDays:(id)a3 addedTo:(id)a4
{
  v5 = a4;
  if (a3)
  {
    v6 = [a3 integerValue];
  }

  else
  {
    v6 = 30;
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v7 setDay:v6];
  v8 = [MEMORY[0x1E695DEE8] currentCalendar];
  v9 = [v8 dateByAddingComponents:v7 toDate:v5 options:0];

  return v9;
}

+ (BOOL)_isTimestamp:(id)a3 validAsOf:(id)a4
{
  v6 = a4;
  v7 = [a1 _momentOfExpiryFrom:a3];
  if (v7)
  {
    v8 = [v6 compare:v7] == -1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_momentOfExpiryFrom:(id)a3
{
  v3 = a3;
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{(objc_msgSend(v3, "longLongValue") / 1000)}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_ageVerificationPresentationResultFromVerificationResult:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(AMSPromiseResult);
  v5 = objc_alloc_init(AMSAgeVerificationPresentationResult);
  v6 = AMSError(6, @"Age verification screen dismissed without successful age verification", 0, 0);
  v7 = AMSError(0, @"Invalid age verification result", 0, 0);
  v8 = [v3 requiredType];

  if (v8 == 1 || v8 == 3)
  {
    [(AMSAgeVerificationPresentationResult *)v5 setSuccessType:1];
    [(AMSPromiseResult *)v4 setResult:v5];
  }

  else
  {
    if (v8 == 2)
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