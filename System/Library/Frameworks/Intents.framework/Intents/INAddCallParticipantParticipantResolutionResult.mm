@interface INAddCallParticipantParticipantResolutionResult
+ (id)unsupportedForReason:(int64_t)reason;
- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)description;
- (id)_initWithIntentSlotResolutionResult:(id)result slotDescription:(id)description;
@end

@implementation INAddCallParticipantParticipantResolutionResult

- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)description
{
  v10.receiver = self;
  v10.super_class = INAddCallParticipantParticipantResolutionResult;
  v4 = [(INIntentResolutionResult *)&v10 _buildIntentSlotResolutionResultWithIntentSlotDescription:description];
  if ([(INIntentResolutionResult *)self resolutionResultCode]== 1 && [(INIntentResolutionResult *)self unsupportedReason])
  {
    payloadUnsupported = [v4 payloadUnsupported];
    [payloadUnsupported setReason:1000];

    payloadUnsupported2 = [v4 payloadUnsupported];
    v7 = [(INIntentResolutionResult *)self unsupportedReason]- 1;
    if (v7 < 6)
    {
      v8 = (v7 + 1);
    }

    else
    {
      v8 = 0x7FFFFFFFLL;
    }

    [payloadUnsupported2 setAddCallParticipantIntentParticipantsUnsupportedReason:v8];
  }

  return v4;
}

- (id)_initWithIntentSlotResolutionResult:(id)result slotDescription:(id)description
{
  resultCopy = result;
  v14.receiver = self;
  v14.super_class = INAddCallParticipantParticipantResolutionResult;
  v7 = [(INIntentResolutionResult *)&v14 _initWithIntentSlotResolutionResult:resultCopy slotDescription:description];
  if (v7)
  {
    payloadUnsupported = [resultCopy payloadUnsupported];
    hasAddCallParticipantIntentParticipantsUnsupportedReason = [payloadUnsupported hasAddCallParticipantIntentParticipantsUnsupportedReason];

    if (hasAddCallParticipantIntentParticipantsUnsupportedReason)
    {
      payloadUnsupported2 = [resultCopy payloadUnsupported];
      v11 = [payloadUnsupported2 addCallParticipantIntentParticipantsUnsupportedReason] - 1;
      if (v11 < 6)
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

+ (id)unsupportedForReason:(int64_t)reason
{
  unsupported = [self unsupported];
  [unsupported setUnsupportedReason:reason];

  return unsupported;
}

@end