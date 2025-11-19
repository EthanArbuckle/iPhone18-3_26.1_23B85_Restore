@interface INStartCallContactResolutionResult
+ (INStartCallContactResolutionResult)unsupportedForReason:(INStartCallContactUnsupportedReason)reason;
+ (id)confirmationRequiredWithPersonToConfirm:(id)a3 forReason:(int64_t)a4;
- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)a3;
- (id)_initWithIntentSlotResolutionResult:(id)a3 slotDescription:(id)a4;
@end

@implementation INStartCallContactResolutionResult

- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)a3
{
  v19.receiver = self;
  v19.super_class = INStartCallContactResolutionResult;
  v4 = [(INIntentResolutionResult *)&v19 _buildIntentSlotResolutionResultWithIntentSlotDescription:a3];
  if ([(INIntentResolutionResult *)self resolutionResultCode]== 3 && [(INIntentResolutionResult *)self confirmationReason])
  {
    v5 = [v4 payloadConfirmation];
    [v5 setReason:1000];

    v6 = [v4 payloadConfirmation];
    v7 = [(INIntentResolutionResult *)self confirmationReason]- 1;
    if (v7 < 5)
    {
      v8 = (v7 + 1);
    }

    else
    {
      v8 = 0x7FFFFFFFLL;
    }

    [v6 setStartCallIntentContactsConfirmationReason:v8];
  }

  if ([(INIntentResolutionResult *)self resolutionResultCode]== 1 && [(INIntentResolutionResult *)self unsupportedReason])
  {
    v9 = [v4 payloadUnsupported];
    [v9 setReason:1000];

    v10 = [v4 payloadUnsupported];
    v11 = [(INIntentResolutionResult *)self unsupportedReason];
    v12 = 0x7FFFFFFFLL;
    if (v11 <= 4)
    {
      if (v11 == 4)
      {
        v13 = 4;
      }

      else
      {
        v13 = 0x7FFFFFFF;
      }

      if (v11 == 3)
      {
        v14 = 3;
      }

      else
      {
        v14 = v13;
      }

      if (v11 == 2)
      {
        v15 = 2;
      }

      else
      {
        v15 = 0x7FFFFFFF;
      }

      if (v11 == 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = v15;
      }

      if (v11 <= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = v14;
      }
    }

    else if (v11 <= 6)
    {
      if (v11 == 6)
      {
        v17 = 6;
      }

      else
      {
        v17 = 0x7FFFFFFF;
      }

      if (v11 == 5)
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
      switch(v11)
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

    [v10 setStartCallIntentContactsUnsupportedReason:v12];
  }

  return v4;
}

- (id)_initWithIntentSlotResolutionResult:(id)a3 slotDescription:(id)a4
{
  v6 = a3;
  v19.receiver = self;
  v19.super_class = INStartCallContactResolutionResult;
  v7 = [(INIntentResolutionResult *)&v19 _initWithIntentSlotResolutionResult:v6 slotDescription:a4];
  if (v7)
  {
    v8 = [v6 payloadConfirmation];
    v9 = [v8 hasStartCallIntentContactsConfirmationReason];

    if (v9)
    {
      v10 = [v6 payloadConfirmation];
      v11 = [v10 startCallIntentContactsConfirmationReason] - 1;
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

    v13 = [v6 payloadUnsupported];
    v14 = [v13 hasStartCallIntentContactsUnsupportedReason];

    if (v14)
    {
      v15 = [v6 payloadUnsupported];
      v16 = [v15 startCallIntentContactsUnsupportedReason] - 1;
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
  v4 = [a1 unsupported];
  [v4 setUnsupportedReason:reason];

  return v4;
}

+ (id)confirmationRequiredWithPersonToConfirm:(id)a3 forReason:(int64_t)a4
{
  v5 = [a1 confirmationRequiredWithPersonToConfirm:a3];
  [v5 setConfirmationReason:a4];

  return v5;
}

@end