@interface INStartCallContactResolutionResult
+ (INStartCallContactResolutionResult)unsupportedForReason:(INStartCallContactUnsupportedReason)reason;
+ (id)confirmationRequiredWithPersonToConfirm:(id)confirm forReason:(int64_t)reason;
- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)description;
- (id)_initWithIntentSlotResolutionResult:(id)result slotDescription:(id)description;
@end

@implementation INStartCallContactResolutionResult

- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)description
{
  v19.receiver = self;
  v19.super_class = INStartCallContactResolutionResult;
  v4 = [(INIntentResolutionResult *)&v19 _buildIntentSlotResolutionResultWithIntentSlotDescription:description];
  if ([(INIntentResolutionResult *)self resolutionResultCode]== 3 && [(INIntentResolutionResult *)self confirmationReason])
  {
    payloadConfirmation = [v4 payloadConfirmation];
    [payloadConfirmation setReason:1000];

    payloadConfirmation2 = [v4 payloadConfirmation];
    v7 = [(INIntentResolutionResult *)self confirmationReason]- 1;
    if (v7 < 5)
    {
      v8 = (v7 + 1);
    }

    else
    {
      v8 = 0x7FFFFFFFLL;
    }

    [payloadConfirmation2 setStartCallIntentContactsConfirmationReason:v8];
  }

  if ([(INIntentResolutionResult *)self resolutionResultCode]== 1 && [(INIntentResolutionResult *)self unsupportedReason])
  {
    payloadUnsupported = [v4 payloadUnsupported];
    [payloadUnsupported setReason:1000];

    payloadUnsupported2 = [v4 payloadUnsupported];
    unsupportedReason = [(INIntentResolutionResult *)self unsupportedReason];
    v12 = 0x7FFFFFFFLL;
    if (unsupportedReason <= 4)
    {
      if (unsupportedReason == 4)
      {
        v13 = 4;
      }

      else
      {
        v13 = 0x7FFFFFFF;
      }

      if (unsupportedReason == 3)
      {
        v14 = 3;
      }

      else
      {
        v14 = v13;
      }

      if (unsupportedReason == 2)
      {
        v15 = 2;
      }

      else
      {
        v15 = 0x7FFFFFFF;
      }

      if (unsupportedReason == 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = v15;
      }

      if (unsupportedReason <= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = v14;
      }
    }

    else if (unsupportedReason <= 6)
    {
      if (unsupportedReason == 6)
      {
        v17 = 6;
      }

      else
      {
        v17 = 0x7FFFFFFF;
      }

      if (unsupportedReason == 5)
      {
        v12 = 5;
      }

      else
      {
        v12 = v17;
      }
    }

    else
    {
      switch(unsupportedReason)
      {
        case 7:
          v12 = 7;
          break;
        case 8:
          v12 = 10;
          break;
        case 1000:
          v12 = 8;
          break;
      }
    }

    [payloadUnsupported2 setStartCallIntentContactsUnsupportedReason:v12];
  }

  return v4;
}

- (id)_initWithIntentSlotResolutionResult:(id)result slotDescription:(id)description
{
  resultCopy = result;
  v19.receiver = self;
  v19.super_class = INStartCallContactResolutionResult;
  v7 = [(INIntentResolutionResult *)&v19 _initWithIntentSlotResolutionResult:resultCopy slotDescription:description];
  if (v7)
  {
    payloadConfirmation = [resultCopy payloadConfirmation];
    hasStartCallIntentContactsConfirmationReason = [payloadConfirmation hasStartCallIntentContactsConfirmationReason];

    if (hasStartCallIntentContactsConfirmationReason)
    {
      payloadConfirmation2 = [resultCopy payloadConfirmation];
      v11 = [payloadConfirmation2 startCallIntentContactsConfirmationReason] - 1;
      if (v11 < 5)
      {
        v12 = v11 + 1;
      }

      else
      {
        v12 = 0;
      }

      [v7 setConfirmationReason:v12];
    }

    payloadUnsupported = [resultCopy payloadUnsupported];
    hasStartCallIntentContactsUnsupportedReason = [payloadUnsupported hasStartCallIntentContactsUnsupportedReason];

    if (hasStartCallIntentContactsUnsupportedReason)
    {
      payloadUnsupported2 = [resultCopy payloadUnsupported];
      v16 = [payloadUnsupported2 startCallIntentContactsUnsupportedReason] - 1;
      if (v16 > 9)
      {
        v17 = 0;
      }

      else
      {
        v17 = qword_18EE5F518[v16];
      }

      [v7 setUnsupportedReason:v17];
    }
  }

  return v7;
}

+ (INStartCallContactResolutionResult)unsupportedForReason:(INStartCallContactUnsupportedReason)reason
{
  unsupported = [self unsupported];
  [unsupported setUnsupportedReason:reason];

  return unsupported;
}

+ (id)confirmationRequiredWithPersonToConfirm:(id)confirm forReason:(int64_t)reason
{
  v5 = [self confirmationRequiredWithPersonToConfirm:confirm];
  [v5 setConfirmationReason:reason];

  return v5;
}

@end