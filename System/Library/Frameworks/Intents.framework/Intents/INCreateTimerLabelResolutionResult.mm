@interface INCreateTimerLabelResolutionResult
+ (id)unsupportedForReason:(int64_t)reason;
- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)description;
- (id)_initWithIntentSlotResolutionResult:(id)result slotDescription:(id)description;
@end

@implementation INCreateTimerLabelResolutionResult

- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)description
{
  v9.receiver = self;
  v9.super_class = INCreateTimerLabelResolutionResult;
  v4 = [(INIntentResolutionResult *)&v9 _buildIntentSlotResolutionResultWithIntentSlotDescription:description];
  if ([(INIntentResolutionResult *)self resolutionResultCode]== 1 && [(INIntentResolutionResult *)self unsupportedReason])
  {
    payloadUnsupported = [v4 payloadUnsupported];
    [payloadUnsupported setReason:1000];

    payloadUnsupported2 = [v4 payloadUnsupported];
    if ([(INIntentResolutionResult *)self unsupportedReason]== 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = 0x7FFFFFFFLL;
    }

    [payloadUnsupported2 setCreateTimerIntentLabelUnsupportedReason:v7];
  }

  return v4;
}

- (id)_initWithIntentSlotResolutionResult:(id)result slotDescription:(id)description
{
  resultCopy = result;
  v12.receiver = self;
  v12.super_class = INCreateTimerLabelResolutionResult;
  v7 = [(INIntentResolutionResult *)&v12 _initWithIntentSlotResolutionResult:resultCopy slotDescription:description];
  if (v7)
  {
    payloadUnsupported = [resultCopy payloadUnsupported];
    hasCreateTimerIntentLabelUnsupportedReason = [payloadUnsupported hasCreateTimerIntentLabelUnsupportedReason];

    if (hasCreateTimerIntentLabelUnsupportedReason)
    {
      payloadUnsupported2 = [resultCopy payloadUnsupported];
      [v7 setUnsupportedReason:{objc_msgSend(payloadUnsupported2, "createTimerIntentLabelUnsupportedReason") == 0}];
    }
  }

  return v7;
}

+ (id)unsupportedForReason:(int64_t)reason
{
  unsupported = [self unsupported];
  [unsupported setUnsupportedReason:reason];

  return unsupported;
}

@end