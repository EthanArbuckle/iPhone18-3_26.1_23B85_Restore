@interface INSendMessageRecipientResolutionResult
+ (INSendMessageRecipientResolutionResult)unsupportedForReason:(INSendMessageRecipientUnsupportedReason)reason;
- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)description;
- (id)_initWithIntentSlotResolutionResult:(id)result slotDescription:(id)description;
@end

@implementation INSendMessageRecipientResolutionResult

- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)description
{
  v20.receiver = self;
  v20.super_class = INSendMessageRecipientResolutionResult;
  v4 = [(INIntentResolutionResult *)&v20 _buildIntentSlotResolutionResultWithIntentSlotDescription:description];
  if ([(INIntentResolutionResult *)self resolutionResultCode]== 1 && [(INIntentResolutionResult *)self unsupportedReason])
  {
    payloadUnsupported = [v4 payloadUnsupported];
    [payloadUnsupported setReason:1000];

    payloadUnsupported2 = [v4 payloadUnsupported];
    unsupportedReason = [(INIntentResolutionResult *)self unsupportedReason];
    if (unsupportedReason == 1003)
    {
      v8 = 11;
    }

    else
    {
      v8 = 0x7FFFFFFF;
    }

    if (unsupportedReason == 1002)
    {
      v9 = 9;
    }

    else
    {
      v9 = v8;
    }

    if (unsupportedReason == 1001)
    {
      v10 = 8;
    }

    else
    {
      v10 = v9;
    }

    if (unsupportedReason == 1000)
    {
      v11 = 7;
    }

    else
    {
      v11 = 0x7FFFFFFF;
    }

    if (unsupportedReason == 7)
    {
      v12 = 10;
    }

    else
    {
      v12 = v11;
    }

    if (unsupportedReason == 6)
    {
      v13 = 6;
    }

    else
    {
      v13 = v12;
    }

    if (unsupportedReason <= 1000)
    {
      v10 = v13;
    }

    if (unsupportedReason == 5)
    {
      v14 = 5;
    }

    else
    {
      v14 = 0x7FFFFFFF;
    }

    if (unsupportedReason == 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = v14;
    }

    if (unsupportedReason == 3)
    {
      v16 = 3;
    }

    else
    {
      v16 = v15;
    }

    if (unsupportedReason == 2)
    {
      v17 = 2;
    }

    else
    {
      v17 = 0x7FFFFFFF;
    }

    if (unsupportedReason == 1)
    {
      v17 = 1;
    }

    if (unsupportedReason > 2)
    {
      v17 = v16;
    }

    if (unsupportedReason <= 5)
    {
      v18 = v17;
    }

    else
    {
      v18 = v10;
    }

    [payloadUnsupported2 setSendMessageIntentRecipientUnsupportedReason:v18];
  }

  return v4;
}

- (id)_initWithIntentSlotResolutionResult:(id)result slotDescription:(id)description
{
  resultCopy = result;
  v14.receiver = self;
  v14.super_class = INSendMessageRecipientResolutionResult;
  v7 = [(INIntentResolutionResult *)&v14 _initWithIntentSlotResolutionResult:resultCopy slotDescription:description];
  if (v7)
  {
    payloadUnsupported = [resultCopy payloadUnsupported];
    hasSendMessageIntentRecipientUnsupportedReason = [payloadUnsupported hasSendMessageIntentRecipientUnsupportedReason];

    if (hasSendMessageIntentRecipientUnsupportedReason)
    {
      payloadUnsupported2 = [resultCopy payloadUnsupported];
      v11 = [payloadUnsupported2 sendMessageIntentRecipientUnsupportedReason] - 1;
      if (v11 > 0xA)
      {
        v12 = 0;
      }

      else
      {
        v12 = qword_18EE5E7A8[v11];
      }

      [v7 setUnsupportedReason:v12];
    }
  }

  return v7;
}

+ (INSendMessageRecipientResolutionResult)unsupportedForReason:(INSendMessageRecipientUnsupportedReason)reason
{
  unsupported = [self unsupported];
  [unsupported setUnsupportedReason:reason];

  return unsupported;
}

@end