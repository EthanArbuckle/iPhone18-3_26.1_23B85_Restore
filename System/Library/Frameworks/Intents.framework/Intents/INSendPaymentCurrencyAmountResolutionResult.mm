@interface INSendPaymentCurrencyAmountResolutionResult
+ (INSendPaymentCurrencyAmountResolutionResult)unsupportedForReason:(INSendPaymentCurrencyAmountUnsupportedReason)reason;
- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)description;
- (id)_initWithIntentSlotResolutionResult:(id)result slotDescription:(id)description;
@end

@implementation INSendPaymentCurrencyAmountResolutionResult

- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)description
{
  v10.receiver = self;
  v10.super_class = INSendPaymentCurrencyAmountResolutionResult;
  v4 = [(INIntentResolutionResult *)&v10 _buildIntentSlotResolutionResultWithIntentSlotDescription:description];
  if ([(INIntentResolutionResult *)self resolutionResultCode]== 1 && [(INIntentResolutionResult *)self unsupportedReason])
  {
    payloadUnsupported = [v4 payloadUnsupported];
    [payloadUnsupported setReason:1000];

    payloadUnsupported2 = [v4 payloadUnsupported];
    v7 = [(INIntentResolutionResult *)self unsupportedReason]- 1;
    if (v7 < 3)
    {
      v8 = (v7 + 1);
    }

    else
    {
      v8 = 0x7FFFFFFFLL;
    }

    [payloadUnsupported2 setSendPaymentIntentCurrencyAmountUnsupportedReason:v8];
  }

  return v4;
}

- (id)_initWithIntentSlotResolutionResult:(id)result slotDescription:(id)description
{
  resultCopy = result;
  v14.receiver = self;
  v14.super_class = INSendPaymentCurrencyAmountResolutionResult;
  v7 = [(INIntentResolutionResult *)&v14 _initWithIntentSlotResolutionResult:resultCopy slotDescription:description];
  if (v7)
  {
    payloadUnsupported = [resultCopy payloadUnsupported];
    hasSendPaymentIntentCurrencyAmountUnsupportedReason = [payloadUnsupported hasSendPaymentIntentCurrencyAmountUnsupportedReason];

    if (hasSendPaymentIntentCurrencyAmountUnsupportedReason)
    {
      payloadUnsupported2 = [resultCopy payloadUnsupported];
      v11 = [payloadUnsupported2 sendPaymentIntentCurrencyAmountUnsupportedReason] - 1;
      if (v11 < 3)
      {
        v12 = v11 + 1;
      }

      else
      {
        v12 = 0;
      }

      [v7 setUnsupportedReason:v12];
    }
  }

  return v7;
}

+ (INSendPaymentCurrencyAmountResolutionResult)unsupportedForReason:(INSendPaymentCurrencyAmountUnsupportedReason)reason
{
  unsupported = [self unsupported];
  [unsupported setUnsupportedReason:reason];

  return unsupported;
}

@end