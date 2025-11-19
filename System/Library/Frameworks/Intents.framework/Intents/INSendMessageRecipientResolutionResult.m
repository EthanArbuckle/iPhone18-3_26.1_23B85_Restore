@interface INSendMessageRecipientResolutionResult
+ (INSendMessageRecipientResolutionResult)unsupportedForReason:(INSendMessageRecipientUnsupportedReason)reason;
- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)a3;
- (id)_initWithIntentSlotResolutionResult:(id)a3 slotDescription:(id)a4;
@end

@implementation INSendMessageRecipientResolutionResult

- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)a3
{
  v20.receiver = self;
  v20.super_class = INSendMessageRecipientResolutionResult;
  v4 = [(INIntentResolutionResult *)&v20 _buildIntentSlotResolutionResultWithIntentSlotDescription:a3];
  if ([(INIntentResolutionResult *)self resolutionResultCode]== 1 && [(INIntentResolutionResult *)self unsupportedReason])
  {
    v5 = [v4 payloadUnsupported];
    [v5 setReason:1000];

    v6 = [v4 payloadUnsupported];
    v7 = [(INIntentResolutionResult *)self unsupportedReason];
    if (v7 == 1003)
    {
      v8 = 11;
    }

    else
    {
      v8 = 0x7FFFFFFF;
    }

    if (v7 == 1002)
    {
      v9 = 9;
    }

    else
    {
      v9 = v8;
    }

    if (v7 == 1001)
    {
      v10 = 8;
    }

    else
    {
      v10 = v9;
    }

    if (v7 == 1000)
    {
      v11 = 7;
    }

    else
    {
      v11 = 0x7FFFFFFF;
    }

    if (v7 == 7)
    {
      v12 = 10;
    }

    else
    {
      v12 = v11;
    }

    if (v7 == 6)
    {
      v13 = 6;
    }

    else
    {
      v13 = v12;
    }

    if (v7 <= 1000)
    {
      v10 = v13;
    }

    if (v7 == 5)
    {
      v14 = 5;
    }

    else
    {
      v14 = 0x7FFFFFFF;
    }

    if (v7 == 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = v14;
    }

    if (v7 == 3)
    {
      v16 = 3;
    }

    else
    {
      v16 = v15;
    }

    if (v7 == 2)
    {
      v17 = 2;
    }

    else
    {
      v17 = 0x7FFFFFFF;
    }

    if (v7 == 1)
    {
      v17 = 1;
    }

    if (v7 > 2)
    {
      v17 = v16;
    }

    if (v7 <= 5)
    {
      v18 = v17;
    }

    else
    {
      v18 = v10;
    }

    [v6 setSendMessageIntentRecipientUnsupportedReason:v18];
  }

  return v4;
}

- (id)_initWithIntentSlotResolutionResult:(id)a3 slotDescription:(id)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = INSendMessageRecipientResolutionResult;
  v7 = [(INIntentResolutionResult *)&v14 _initWithIntentSlotResolutionResult:v6 slotDescription:a4];
  if (v7)
  {
    v8 = [v6 payloadUnsupported];
    v9 = [v8 hasSendMessageIntentRecipientUnsupportedReason];

    if (v9)
    {
      v10 = [v6 payloadUnsupported];
      v11 = [v10 sendMessageIntentRecipientUnsupportedReason] - 1;
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
  v4 = [a1 unsupported];
  [v4 setUnsupportedReason:reason];

  return v4;
}

@end