@interface INSendPaymentPayeeResolutionResult
+ (INSendPaymentPayeeResolutionResult)unsupportedForReason:(INSendPaymentPayeeUnsupportedReason)reason;
- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)description;
- (id)_initWithIntentSlotResolutionResult:(id)result slotDescription:(id)description;
@end

@implementation INSendPaymentPayeeResolutionResult

- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)description
{
  v10.receiver = self;
  v10.super_class = INSendPaymentPayeeResolutionResult;
  v4 = [(INIntentResolutionResult *)&v10 _buildIntentSlotResolutionResultWithIntentSlotDescription:description];
  if ([(INIntentResolutionResult *)self resolutionResultCode]== 1 && [(INIntentResolutionResult *)self unsupportedReason])
  {
    payloadUnsupported = [v4 payloadUnsupported];
    [payloadUnsupported setReason:1000];

    payloadUnsupported2 = [v4 payloadUnsupported];
    v7 = [(INIntentResolutionResult *)self unsupportedReason]- 1;
    if (v7 < 4)
    {
      v8 = (v7 + 1);
    }

    else
    {
      v8 = 0x7FFFFFFFLL;
    }

    [payloadUnsupported2 setSendPaymentIntentPayeeUnsupportedReason:v8];
  }

  return v4;
}

- (id)_initWithIntentSlotResolutionResult:(id)result slotDescription:(id)description
{
  resultCopy = result;
  v14.receiver = self;
  v14.super_class = INSendPaymentPayeeResolutionResult;
  v7 = [(INIntentResolutionResult *)&v14 _initWithIntentSlotResolutionResult:resultCopy slotDescription:description];
  if (v7)
  {
    payloadUnsupported = [resultCopy payloadUnsupported];
    hasSendPaymentIntentPayeeUnsupportedReason = [payloadUnsupported hasSendPaymentIntentPayeeUnsupportedReason];

    if (hasSendPaymentIntentPayeeUnsupportedReason)
    {
      payloadUnsupported2 = [resultCopy payloadUnsupported];
      v11 = [payloadUnsupported2 sendPaymentIntentPayeeUnsupportedReason] - 1;
      if (v11 < 4)
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

+ (INSendPaymentPayeeResolutionResult)unsupportedForReason:(INSendPaymentPayeeUnsupportedReason)reason
{
  unsupported = [self unsupported];
  [unsupported setUnsupportedReason:reason];

  return unsupported;
}

@end